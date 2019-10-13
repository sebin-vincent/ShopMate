package com.litmus7.shopmate.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dao.OrderServiceDao;
import com.litmus7.shopmate.order.dto.OrderDto;
import com.litmus7.shopmate.order.dto.Response;
import com.litmus7.shopmate.order.repository.OrderRepositoryDao;

@Service
public class OrderServiceImpl implements OrderServiceDao {
	
	@Autowired
	OrderRepositoryDao orderRepositoryDao;
	
	public Response getAllOrdersByStatus(int profileId,int status){
		List<OrderDto> order = orderRepositoryDao.getAllOrdersByStatus(profileId, status);
		Response resp = new Response();
		resp.setMessage("success");
		resp.setPayload(order);
		resp.setStatus(200);
		return resp;
	}
	
	public List<OrderDto> createOrderId(int profileId) {
		int status = 1;
		List<OrderDto> orderId = orderRepositoryDao.getOrderIdByProfileId(profileId, status);
		if (orderId.size() > 0) {
			return orderId;
		} else {
			OrderDto newOrder = new OrderDto();
			newOrder.setProfileId(profileId);
			newOrder.setOrderStatusId(1);
			newOrder.setPaymentMethodId(1);
			newOrder.setShippingMethodId(1);
			orderRepositoryDao.save(newOrder);
			return orderRepositoryDao.getAllOrdersByStatus(profileId, status);
		}
	}

	@Override
	public List<OrderDto> fetchAllOrderByProfileId(int profileId) {
		List<OrderDto> allOrder = orderRepositoryDao.getAllOrderByProfileId(profileId);
		return allOrder;
	}
}
