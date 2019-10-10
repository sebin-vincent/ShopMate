package com.litmus7.shopmate.cart.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.cart.dao.CartDao;
import com.litmus7.shopmate.cart.dto.Cart;
import com.litmus7.shopmate.cart.repository.RepositoryDao;

@Service
public class CartServiceImpl implements CartDao{
	
	@Autowired
	RepositoryDao repository; 

	
	@Override
	public Cart removeAllCartItems(Cart cart) {
		
		return repository.removeAllSku(cart);
	}

	@Override
	public Cart addToCart(Cart cart) {
		
		
		return repository.addSku(cart);
	}

	@Override
	public Cart removeFromCart(int orderId,String skuId) {
		
		
		return repository.removeSku(orderId,skuId);
	}

	@Override
	public Cart updateQuantity(int OrderId, String skuId, int quantity) {
		
		
		return repository.updateSkuQuantity(OrderId, skuId, quantity);
	}
	
	
	public List<Cart> findAll() {

      return repository.findAll();
  }

}
