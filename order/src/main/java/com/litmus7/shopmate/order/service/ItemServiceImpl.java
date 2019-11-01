package com.litmus7.shopmate.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dao.ItemServiceDao;
import com.litmus7.shopmate.order.dto.ItemDto;
import com.litmus7.shopmate.order.dto.OrderDto;
import com.litmus7.shopmate.order.repository.ItemRepositoryDao;
import com.litmus7.shopmate.order.repository.OrderRepositoryDao;
@Service
public class ItemServiceImpl implements ItemServiceDao {
	
	@Autowired
	ItemRepositoryDao itemRepositoryDao;
	
	@Autowired
	OrderRepositoryDao orderRepositoryDao;

	@Override
	public long totalAmount(List<ItemDto> itemDto) {
		long totalAmount = 0;
		for (ItemDto itemDto2 : itemDto) {
			totalAmount = totalAmount +((itemDto2.getUnitPrice()) * (itemDto2.getQuantity()));
		}
		return totalAmount;
	}
	
	//when order placed, update the data in manager table
	@Override
	public String updateOrder(OrderDto orderDto) {
		List<ItemDto> list =  itemRepositoryDao.getAllSkuByOrderId(orderDto.getOrderId());
		long totalAmount = totalAmount(list);
		List<OrderDto> order  = orderRepositoryDao.getOrderByOrderId(orderDto.getOrderId());
		OrderDto resultOrder = order.get(0);
		
		resultOrder.setTotalAmount((int) totalAmount);
		resultOrder.setAddressId(orderDto.getAddressId());
		resultOrder.setDeliveryDate(orderDto.getDeliveryDate());
		resultOrder.setOrderStatusId(0);
		resultOrder.setPaymentMethodId(orderDto.getPaymentMethodId());
		resultOrder.setShippingMethodId(orderDto.getShippingMethodId());
		orderRepositoryDao.save(resultOrder);
		return "success";
	}

	@Override
	public String updateQuantity(int orderId, int skuId, int quantity) {
		ItemDto itemDto = new ItemDto();
		itemDto = itemRepositoryDao.updateQuantity(orderId, skuId);
		itemDto.setQuantity(quantity);
		itemRepositoryDao.save(itemDto);
		return "success";
	}
	
	
	
}
