package com.litmus7.shopmate.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import com.litmus7.shopmate.order.dao.ItemServiceDao;
import com.litmus7.shopmate.order.dto.Item;

@RestController
public class OrderController {
	@Autowired
	ItemServiceDao itemServiceDao;

	@GetMapping("/item")
	public List<Item> getallItemList() {
		return itemServiceDao.getallItemsService();
	}

	@GetMapping("/order/{profileId}")
	public String getincompleteOrderIdByProfileIdService(@PathVariable String profileId) {
		return itemServiceDao.getincompleteOrderIdByProfileIdService(profileId);
	}
	
	@GetMapping("/order/{orderId}")
	public List<Item> getincompleteOrderItemListApi(@PathVariable String orderId) {
		return itemServiceDao.getincompleteOrderItemListService(orderId);
	}
}
