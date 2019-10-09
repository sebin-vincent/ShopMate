package com.litmus7.shopmate.order.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dao.ItemServiceDao;
import com.litmus7.shopmate.order.dto.Item;
import com.litmus7.shopmate.order.dto.Order;
import com.litmus7.shopmate.order.dto.Response;
import com.litmus7.shopmate.order.repositorydao.ItemRepositoryDao;

@Service
public class ItemServiceImpl implements ItemServiceDao {

	@Autowired
	ItemRepositoryDao itemRepositoryDaoImpl;

	@Override
	public Order getincompleteOrderIdByProfileIdService(int profileId) {
		Object[] object = itemRepositoryDaoImpl.getincompleteOrderIdByProfileId(profileId);
		Order order = new Order();
		order.setOrderId((Integer) object[0]);
		return order;
	}

	@Override
	public Response getcartItemByProfileId(int profileId) {
		Response resp = new Response();
		Object[] result = itemRepositoryDaoImpl.getincompleteOrderIdByProfileId(profileId);
		int orderId = (int) result[0];
		List<Object[]> objectItemList = itemRepositoryDaoImpl.getcartItems(orderId);
		if(objectItemList.size() > 0) {
			List<Item> itemList = new ArrayList<Item>();
			for (Object[] object : objectItemList) {
				Item item = new Item();
				item.setOrderId((Integer) object[0]);
				item.setSkuId((String) object[1]);
				item.setQuantity((Integer) object[2]);
				item.setUnitPrice((Integer) object[3]);
				item.setLastModifiedDate((Date) object[4]);
				itemList.add(item);
			}
			
			resp.setMessage("cart item list");
			resp.setStatus("Success");
			resp.setPayload(itemList);
			return resp;
		}else {
			resp.setMessage("no items in cart");
			resp.setPayload(null);
			resp.setStatus("failed");
			return resp;
		}
	}

}
