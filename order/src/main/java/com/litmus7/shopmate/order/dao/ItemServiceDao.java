package com.litmus7.shopmate.order.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dto.ItemDto;
import com.litmus7.shopmate.order.dto.OrderDto;
@Service
public interface ItemServiceDao {
	
	public String updateOrder(OrderDto orderDto);
	public long totalAmount(List<ItemDto> itemDto);
}
