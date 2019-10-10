package com.litmus7.shopmate.cart.dao;

import java.util.List;

import com.litmus7.shopmate.cart.dto.Cart;

public interface CartDao {
	

	public Cart addToCart(Cart cart);
	public Cart removeFromCart(int orderId,String skuId);
	public Cart removeAllCartItems(Cart cart);
	public Cart updateQuantity(int OrderId,String skuId,int quantity);
	public List<Cart> findAll();
		
}
