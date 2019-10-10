package com.litmus7.shopmate.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.order.dao.GetPaymentMethodServiceDao;
import com.litmus7.shopmate.order.dao.ItemServiceDao;
import com.litmus7.shopmate.order.dao.RetrieveShipingMethodDao;
import com.litmus7.shopmate.order.dto.Order;
import com.litmus7.shopmate.order.dto.Response;

@ComponentScan("com.litmus7.shopmate")
@RestController
public class OrderController {

	@Autowired
	ItemServiceDao itemServiceDao;
	
	@Autowired
	GetPaymentMethodServiceDao getPaymentMethodServiceImpl;
	
	@Autowired
	RetrieveShipingMethodDao retrieveShipmentMethodImpl;
	
	@Autowired
	Response response;

	@GetMapping("/order/{profileId}")
	public Order getincompleteOrderIdByProfileIdService(@PathVariable int profileId) {
		return itemServiceDao.getincompleteOrderIdByProfileIdService(profileId);
	}
	
	@GetMapping("/order/cart/{profileId}")
	public Response getAllCartItems(@PathVariable int profileId){
		return itemServiceDao.getcartItemByProfileId(profileId);
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
	
}
