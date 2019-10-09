package com.litmus7.shopmate.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dao.ItemServiceDao;
import com.litmus7.shopmate.order.dto.Item;
import com.litmus7.shopmate.order.dto.Order;
import com.litmus7.shopmate.order.repositorydao.ItemRepositoryDao;

@Service
public class ItemServiceImpl implements ItemServiceDao {
	
	@Autowired
	ItemRepositoryDao itemRepositoryDaoImpl;

	@Override
	public Order getincompleteOrderIdByProfileIdService(int profileId) {
		Object[] object= itemRepositoryDaoImpl.getincompleteOrderIdByProfileId(profileId);
		Order order=new Order();
		order.setOrderId((Integer)object[0]);
		return order;
	}

	@Override
	public List<Item> getcartItemByProfileId(int profileId) {
		Object[] result = itemRepositoryDaoImpl.getincompleteOrderIdByProfileId(profileId);
		int orderId =(int) result[0];
		List<Item> itemList = itemRepositoryDaoImpl.getcartItems(orderId);
		
		
		return itemList;
	}

	

}
