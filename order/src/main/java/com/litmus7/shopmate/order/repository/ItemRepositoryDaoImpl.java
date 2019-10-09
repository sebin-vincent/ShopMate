package com.litmus7.shopmate.order.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.order.dto.Order;
import com.litmus7.shopmate.order.exception.OrderIdNotFound;
import com.litmus7.shopmate.order.repositorydao.ItemRepositoryDao;

@Repository
public class ItemRepositoryDaoImpl implements ItemRepositoryDao {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	public Object[] getincompleteOrderIdByProfileId(int profileId) {
		Query query1 = entityManager.createQuery(
				"select orderId,profileId from Order where profileId = '" + profileId + "' and orderStatusId =1");
		try {
			Object[] ob = (Object[]) query1.getSingleResult();
			return ob;
		} catch (NoResultException e) {
			throw new OrderIdNotFound("order id is not found");
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getcartItems(int orderId) {
		// Query query2 = entityManager.createQuery("select i from Item i where
		// i.orderId =" + "100");
		Query query2 = entityManager.createQuery(
				"select i.orderId,i.skuId,i.quantity,i.unitPrice,i.lastModifiedDate from Item i where i.orderId ="
						+ orderId);
		List<Object[]> itemListObject = query2.getResultList();

		return itemListObject;
	}

}
