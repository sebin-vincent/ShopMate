package com.litmus7.shopmate.order.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dto.Item;
@Service
public interface ItemServiceDao {
	public List<Item> getallItemsService();
	public List<Item> getincompleteOrderItemListService(String orderId);
	public String getincompleteOrderIdByProfileIdService(String profileId);

}
