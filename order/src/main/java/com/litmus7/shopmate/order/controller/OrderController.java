package com.litmus7.shopmate.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

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

//	@Autowired
//	ServiceInventoryClient serviceInventoryClient;

	@Autowired
	Response response;
	//return orders by profile id and status
	@CrossOrigin
	@GetMapping("/order/cart/{profileId}/{status}")
	public Response getOrderBytest(@PathVariable int profileId, @PathVariable int status) {
		return orderServiceDao.getAllOrdersByStatus(profileId, status);
	}

	@GetMapping("/paymentmethod")
	public Response retrievepaymentMethods() {
		response.setStatus(200);
		response.setPayload(getPaymentMethodServiceImpl.retrievePayments());
		return response;
	}

	@GetMapping("/shipmentmethod")
	public Response retreiveResponse() {
		response.setStatus(200);
		response.setPayload(retrieveShipmentMethodImpl.retrieveShippingMethods());
		return response;
	}

	// get new or existing order id
	@GetMapping("/order/get/orderid/{profileId}")
	public Response createOrGetOrderId(@PathVariable int profileId) {
		response.setMessage("success");
		response.setStatus(200);
		response.setPayload(orderServiceDao.createOrderId(profileId));
		return response;
	}
	//retrive all order by profile id
	@GetMapping("/order/get/allorder/{profileId}")
	public Response getOrderByProfileId(@PathVariable int profileId) {
		response.setMessage("success");
		response.setStatus(200);
		response.setPayload(orderServiceDao.fetchAllOrderByProfileId(profileId));
		return response;
	}
	
	//update status of order with order id and statusid 
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
	
	//api for place order which update all the data to new data
	@PutMapping("order/Update")
	public Response updateOrder(@RequestBody OrderDto order) {
		response.setMessage("Ok");
		response.setStatus(200);
		response.setPayload(itemServiceDao.updateOrder(order));
		return response;
		
	}


}
