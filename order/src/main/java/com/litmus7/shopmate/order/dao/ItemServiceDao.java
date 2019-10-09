package com.litmus7.shopmate.order.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dto.Item;
import com.litmus7.shopmate.order.dto.Order;

@Service
public interface ItemServiceDao {
	public Order getincompleteOrderIdByProfileIdService(int profileId);
	public List<Item> getcartItemByProfileId(int orderId);
}
