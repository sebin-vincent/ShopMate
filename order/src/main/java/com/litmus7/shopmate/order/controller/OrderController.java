package com.litmus7.shopmate.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.order.dao.ItemServiceDao;
import com.litmus7.shopmate.order.dto.Order;
import com.litmus7.shopmate.order.dto.Response;

@RestController
public class OrderController {

	@Autowired
	ItemServiceDao itemServiceDao;

	@GetMapping("/order/{profileId}")
	public Order getincompleteOrderIdByProfileIdService(@PathVariable int profileId) {
		return itemServiceDao.getincompleteOrderIdByProfileIdService(profileId);
	}
	
	@GetMapping("/order/cart/{profileId}")
	public Response getAllCartItems(@PathVariable int profileId){
		return itemServiceDao.getcartItemByProfileId(profileId);
	}
	
}
