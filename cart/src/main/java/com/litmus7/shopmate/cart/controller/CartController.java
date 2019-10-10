package com.litmus7.shopmate.cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;


import com.litmus7.shopmate.cart.dto.Cart;
import com.litmus7.shopmate.cart.dto.ResponseInfo;
import com.litmus7.shopmate.cart.service.CartServiceImpl;


@RestController
public class CartController {
	
	@Autowired
	CartServiceImpl service;
	
/*	@GetMapping(path="/cart")
    public List<Cart> getAll(){
        return service.findAll();
    }
	
*/	
	
	@GetMapping(path="/cart")
    public ResponseInfo getAll(){
		ResponseInfo responseInfo = new ResponseInfo(200, "All items in cart", service.findAll());
        return responseInfo;
    }
	
	
	
	
	@PostMapping(path="/cart")
	public Cart addSku(Cart cart) {
		
		return service.addToCart(cart);
	}
	
	
	@DeleteMapping()
	public Cart removeSku(int orderId, String skuId) {
		
		return service.removeFromCart(orderId,skuId);
	}
	
	
	@DeleteMapping(path="/cart")
	public Cart removeAllSku(Cart cart) {
		return service.removeAllCartItems(cart);
	}
	
	
	@PutMapping
	public Cart updateSkuQuantity(int orderId, String skuId, int quantity) {
		return service.updateQuantity(orderId, skuId, quantity);
	}
	

	
	
}
