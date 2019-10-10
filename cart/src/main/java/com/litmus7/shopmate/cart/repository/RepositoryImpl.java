package com.litmus7.shopmate.cart.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.cart.dto.Cart;


@Repository
public class RepositoryImpl implements RepositoryDao{

	 @PersistenceContext
	EntityManager entityManager;
	
	 @Override
		public List<Cart> findAll() {
			Query query = entityManager.createQuery("Select orderId,skuId,quantity,unitPrice,lastModifiedDate from Cart");
			return query.getResultList();
			// TODO Auto-generated method stub
			
		}
	 
	@Override
	public Cart addSku(Cart cart) {
		// TODO Auto-generated method stub
		return cart;
	}

	@Override
	public Cart removeSku(int orderId,String skuId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cart removeAllSku(Cart cart) {
		// TODO Auto-generated method stub
		return cart;
	}

	@Override
	public Cart updateSkuQuantity(int OrderId, String skuId, int quantity) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
