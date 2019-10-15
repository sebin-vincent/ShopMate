package com.litmus7.shopmate.cart.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.litmus7.shopmate.cart.dto.Cart;

@Component
public interface CartDao {

	public void addToCart(Cart cart);

	public void removeFromCart(int orderId, String skuId);

//	public Cart updateQuantity(int OrderId,String skuId,int quantity);
	// findAll method added for testing
	public List<Cart> findAll();

}
