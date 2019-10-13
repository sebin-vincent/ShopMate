package com.litmus7.shopmate.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.order.dao.GetPaymentMethodServiceDao;
import com.litmus7.shopmate.order.dao.OrderServiceDao;
import com.litmus7.shopmate.order.dao.RetrieveShipingMethodDao;
import com.litmus7.shopmate.order.dto.Response;

//@ComponentScan("com.litmus7.shopmate")
@RestController
public class OrderController {

	@Autowired
	GetPaymentMethodServiceDao getPaymentMethodServiceImpl;

	@Autowired
	RetrieveShipingMethodDao retrieveShipmentMethodImpl;

	@Autowired
	OrderServiceDao orderServiceDao;

	@Autowired
	Response response;

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
	
	@GetMapping("/order/get/orderid/{profileId}")
	public Response createOrGetOrderId(@PathVariable int profileId) {
		response.setMessage("success");
		response.setStatus(200);
		response.setPayload(orderServiceDao.createOrderId(profileId));
		return response;
	}
	
	@GetMapping("/order/get/allorder/{profileId}")
	public Response getOrderByProfileId(@PathVariable int profileId) {
		response.setMessage("success");
		response.setStatus(200);
		response.setPayload(orderServiceDao.fetchAllOrderByProfileId(profileId));
		return response;
	}

}
