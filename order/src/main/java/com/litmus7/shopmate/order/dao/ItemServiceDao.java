package com.litmus7.shopmate.order.dao;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dto.Order;
import com.litmus7.shopmate.order.dto.Response;

@Service
public interface ItemServiceDao {
	public Order getincompleteOrderIdByProfileIdService(int profileId);
	public Response getcartItemByProfileId(int profileId);
}
