package com.litmus7.shopmate.order.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.order.dto.Item;
import com.litmus7.shopmate.order.repositorydao.ItemRepositoryDao;

@Repository
public class ItemRepositoryDaoImpl implements ItemRepositoryDao {
	@PersistenceContext
	EntityManager entityManager;

	@SuppressWarnings("unchecked")
	@Override
	public List<Item> getallItems() {
		Query query = entityManager.createQuery("Select orderId,skuId,quantity,unitPrice,lastModifiedDate from Item");
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public String getincompleteOrderIdByProfileId(String profileId) {
		Query query1 = entityManager
				.createQuery("select orderId from Order where profileId = '" + profileId + "' and orderStatusId =1");
		List<Item> orderId = query1.getResultList();
		Item orderIdResult = orderId.get(0);
		String result = orderIdResult.getOrderId();
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Item> getincompleteOrderItemList(String orderId) {
		Query query2 = entityManager.createQuery(
				"select orderId,skuId,quantity,unitPrice,lastModifiedDate from item where orderId = '" + orderId + "'");
		return query2.getResultList();
	}
}
