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

	@Override
	public Object[] getincompleteOrderIdByProfileId(int profileId) {
		Query query1 = entityManager
				.createQuery("select orderId from Order where profileId = '" + profileId + "' and orderStatusId =1");
		return (Object[]) query1.getSingleResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Item> getcartItems(int profileId) {
		Object[] result = getincompleteOrderIdByProfileId(profileId);
		System.out.println("==========================="+result[0]);
		Query query2 = entityManager.createQuery("select orderId,skuId,quantity,unitPrice,lastModifiedDate from Item where orderId ="+result[0]);
		return query2.getResultList();
	}

}
