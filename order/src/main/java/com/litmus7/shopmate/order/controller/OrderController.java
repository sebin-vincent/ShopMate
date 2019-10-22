package com.litmus7.shopmate.order.controller;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.litmsu7.shopmate.order.model.Item;
import com.litmsu7.shopmate.order.model.ReserveBodyDto;
import com.litmus7.shopmate.order.dao.GetPaymentMethodServiceDao;
import com.litmus7.shopmate.order.dao.ItemServiceDao;
import com.litmus7.shopmate.order.dao.OrderServiceDao;
import com.litmus7.shopmate.order.dao.RetrieveShipingMethodDao;
import com.litmus7.shopmate.order.dto.OrderDto;
import com.litmus7.shopmate.order.dto.Response;

@ComponentScan("com.litmus7.shopmate")
@RestController
public class OrderController {

	@Autowired
	GetPaymentMethodServiceDao getPaymentMethodServiceImpl;

	@Autowired
	RetrieveShipingMethodDao retrieveShipmentMethodImpl;

	@Autowired
	OrderServiceDao orderServiceDao;

	@Autowired
	ItemServiceDao itemServiceDao;

	@Autowired
	RestTemplate restTemplate;

//	@Autowired
//	ServiceInventoryClient serviceInventoryClient;

	@Autowired
	Response response;
	//return orders by profile id and status

	// return orders by profile id and status

	@CrossOrigin

	@GetMapping("/order/cart/{profileId}/{status}")
	public Response getOrderBytest(@PathVariable int profileId, @PathVariable int status) {
		return orderServiceDao.getAllOrdersByStatus(profileId, status);
	}

	@CrossOrigin
	@GetMapping("/paymentmethod")
	public Response retrievepaymentMethods() {
		response.setStatus(200);
		response.setPayload(getPaymentMethodServiceImpl.retrievePayments());
		return response;
	}

	@CrossOrigin
	@GetMapping("/shipmentmethod")
	public Response retreiveResponse() {
		response.setStatus(200);
		response.setPayload(retrieveShipmentMethodImpl.retrieveShippingMethods());
		return response;
	}

	
	// get new or existing order id
	@CrossOrigin
	@GetMapping("/order/get/orderid/{profileId}")
	public Response createOrGetOrderId(@PathVariable int profileId) {
		response.setMessage("success");
		response.setStatus(200);
		response.setPayload(orderServiceDao.createOrderId(profileId));
		return response;
	}

	
	// retrive all order by profile id
	@CrossOrigin
	@GetMapping("/order/get/allorder/{profileId}")
	public Response getOrderByProfileId(@PathVariable int profileId) {
		response.setMessage("success");
		response.setStatus(200);
		response.setPayload(orderServiceDao.fetchAllOrderByProfileId(profileId));
		return response;
	}

	
	// update status of order with order id and statusid
	@CrossOrigin
	@PutMapping("/order/update/status/{orderId}/{status}")
	public Response updateOrderStatus(@PathVariable int orderId, @PathVariable int status) {
		response.setMessage(orderServiceDao.updateOrder(orderId, status));
		response.setStatus(200);
		response.setPayload("ok");
		return response;
	}

//	@GetMapping("/test")
//	public String testMethod() {
//		//return "order project";
//		return serviceInventoryClient.getMessage();
//	}

	
	// api for place order which update all the data to new data
	@CrossOrigin
	@PutMapping("order/Update")
	public Response updateOrder(@RequestBody OrderDto order) {
		response.setMessage("Ok");
		response.setStatus(200);
		response.setPayload(itemServiceDao.updateOrder(order));
		return response;

	}

	@CrossOrigin
	@GetMapping("/api/test")
	public Response returnResult() {
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<Item> entity = new HttpEntity<Item>(headers);
		response.setPayload(restTemplate
				.exchange("http://localHost:8080/items/10013", HttpMethod.GET, entity, Item.class).getBody());
		response.setMessage("sucess");
		return response;
	}

	@CrossOrigin
	@PutMapping("/update")
	public Response update() {
		response.setPayload(null);
		ReserveBodyDto reserve =new ReserveBodyDto();
		reserve.setQuantity(10);
		reserve.setSkuId("10014");
		HttpHeaders headers = new HttpHeaders();
	    headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
	    HttpEntity<ReserveBodyDto> entity = new HttpEntity<ReserveBodyDto>(reserve,headers);
	    restTemplate.exchange("http://localHost:8080/items/unreserve", HttpMethod.PUT, entity, Item.class).getBody();
	    response.setMessage("invoked");
	    return response;
		
	}

	//cancel order by order id

	@CrossOrigin
	@PutMapping("/order/cancel/{orderId}")
	public Response cancelOrder(@PathVariable int orderId) {
		response.setStatus(200);
		orderServiceDao.cancelOrder(orderId);
		response.setMessage("success");
		response.setPayload(null);
		return response;

	}
}
