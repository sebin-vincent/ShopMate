package com.litmus7.shopmate.cart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.cart.dao.CartDao;
import com.litmus7.shopmate.cart.dto.Cart;
import com.litmus7.shopmate.cart.exception.FieldNullException;
import com.litmus7.shopmate.cart.repository.RepositoryDao;

@Service
public class CartServiceImpl implements CartDao {

	@Autowired
	RepositoryDao repositoryDao;

	@Override
	public void addToCart(Cart cart) {
		
		int unitPrice=cart.getUnitPrice();
		int quantity = cart.getQuantity();
		int orderId = cart.getOrderId();
		String skuId= cart.getSkuId();
		if (skuId == null || orderId == 0|| quantity == 0|| unitPrice == 0){ 
			throw new FieldNullException("Please provide all fields");
		}
		else {
		
		List<Cart> existList = repositoryDao.findByOrderIdAndSkuId(orderId, skuId);
		if (existList.size() > 0 )
		{
			int newQuantity = existList.get(0).getQuantity()+quantity;
			Cart newCart=existList.get(0);
			newCart.setQuantity(newQuantity);
			repositoryDao.save(newCart);
		}
		else {
			repositoryDao.save(cart);
		}
		}
	}
	  @Override
	  public void removeFromCart(int orderId,String skuId) {
		 
	   if (orderId==0 || skuId == null) {
		   
		   throw new FieldNullException("orderId or skuId not found");
	   }
	   else {		  
	  repositoryDao.deleteByOrderIdAndSkuId(orderId, skuId);
	   }
	  }

	// findAll method added for testing
	public List<Cart> findAll() {
		return repositoryDao.findAll();
	}

}
