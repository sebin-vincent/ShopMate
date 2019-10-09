package com.litmus7.shopmate.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dao.ItemServiceDao;
import com.litmus7.shopmate.order.dto.Item;
import com.litmus7.shopmate.order.repositorydao.ItemRepositoryDao;
@Service
public class ItemServiceImpl implements ItemServiceDao {
	@Autowired
	ItemRepositoryDao itemRepositoryDaoImpl;

	@Override
	public List<Item> getallItemsService() {
		return itemRepositoryDaoImpl.getallItems();
	}

	@Override
	public List<Item> getincompleteOrderItemListService(String orderId) {
		return itemRepositoryDaoImpl.getincompleteOrderItemList(orderId);
	}

	@Override
	public String getincompleteOrderIdByProfileIdService(String profileId) {
		
		return itemRepositoryDaoImpl.getincompleteOrderIdByProfileId(profileId);
	}

}
