package com.litmus7.shopmate.order.dao;

import java.util.List;

import com.litmus7.shopmate.order.dto.OrderDto;
import com.litmus7.shopmate.order.dto.Response;

public interface OrderServiceDao {
	public Response getAllOrdersByStatus(int profileId,int status);
	public List<OrderDto> createOrderId(int profileId);
	public List<OrderDto> fetchAllOrderByProfileId(int profileId);
	public String updateOrder(int orderId,int status);

}
