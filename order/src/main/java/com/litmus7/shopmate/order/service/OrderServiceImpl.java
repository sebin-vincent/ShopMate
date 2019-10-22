package com.litmus7.shopmate.order.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.litmsu7.shopmate.order.model.Item;
import com.litmsu7.shopmate.order.model.ReserveBodyDto;
import com.litmus7.shopmate.order.dao.OrderServiceDao;
import com.litmus7.shopmate.order.dto.ItemDto;
import com.litmus7.shopmate.order.dto.OrderDto;
import com.litmus7.shopmate.order.dto.Response;
import com.litmus7.shopmate.order.exception.CartItemNotFound;
import com.litmus7.shopmate.order.repository.ItemRepositoryDao;
import com.litmus7.shopmate.order.repository.OrderRepositoryDao;

@Service
public class OrderServiceImpl implements OrderServiceDao {

	@Autowired
	OrderRepositoryDao orderRepositoryDao;

	@Autowired
	ItemRepositoryDao itemRepositoryDao;
	

	public Response getAllOrdersByStatus(int profileId, int status) {
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

	// update order status by order id and status
	@Override
	public String updateOrder(int orderId, int status) {
		List<OrderDto> order = orderRepositoryDao.getOrderByOrderId(orderId);
		OrderDto orderDto = order.get(0);
		orderDto.setOrderStatusId(status);
		orderRepositoryDao.save(orderDto);
		return "success";
	}

	@Override
	public String cancelOrder(int orderId) {
		ReserveBodyDto respbody = new ReserveBodyDto();
		RestTemplate restTemplate = new RestTemplate();
		List<ItemDto> orderList = itemRepositoryDao.getAllSkuByOrderId(orderId);
		if(orderList.size() > 0) {
			for (ItemDto itemDto : orderList) {
				respbody.setSkuId(itemDto.getSkuId());
				respbody.setQuantity(itemDto.getQuantity());
				System.out.println(respbody);
				HttpHeaders headers = new HttpHeaders();
				headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
				HttpEntity<ReserveBodyDto> entity = new HttpEntity<ReserveBodyDto>(respbody, headers);
				restTemplate.exchange("http://localHost:8083/items/unreserve", HttpMethod.PUT, entity, Item.class).getBody();
			}
			updateOrder(orderId, 3);
			return "Success";
		}else {
			throw new CartItemNotFound("order have no skus");
		}
		
	}

}
