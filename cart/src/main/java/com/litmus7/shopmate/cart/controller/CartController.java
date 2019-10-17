package com.litmus7.shopmate.cart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.cart.dto.Cart;
import com.litmus7.shopmate.cart.dto.ResponseInfo;
import com.litmus7.shopmate.cart.service.CartServiceImpl;


@RestController
public class CartController {
	
	@Autowired
	CartServiceImpl serviceImpl;

	
	  @GetMapping(path="/cart") 
	  public ResponseInfo getAll(){ 
	  ResponseInfo responseInfo = new ResponseInfo(200, "All items in cart", serviceImpl.findAll());
	  return responseInfo;
	  }
	  		
	@PostMapping(path="/cart/add")
	public ResponseInfo addSku(@RequestBody Cart cart) {
	serviceImpl.addToCart(cart);
	ResponseInfo responseInfo = new ResponseInfo(200, "Added to cart", null);
	return responseInfo;
	}
	
	
	@DeleteMapping(path="/cart/delete")
	public ResponseInfo removeSku(@RequestParam("orderId") int orderId,@RequestParam("skuId") String skuId) {
		
		 serviceImpl.removeFromCart(orderId, skuId);
		 ResponseInfo responseInfo = new ResponseInfo(200, "Deleted from cart", null);
		 return responseInfo;
	}
	
	
	
	
}
