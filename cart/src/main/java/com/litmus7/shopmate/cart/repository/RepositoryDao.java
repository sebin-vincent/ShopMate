package com.litmus7.shopmate.cart.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.cart.dto.Cart;
@Repository
public interface RepositoryDao {
	
	public Cart addSku(Cart cart);
	public Cart removeSku(int orderId,String skuId);
	public Cart removeAllSku(Cart cart);
	public Cart updateSkuQuantity(int OrderId,String skuId,int quantity);
	public List<Cart> findAll();
	
}
