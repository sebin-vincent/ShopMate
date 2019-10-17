package com.litmus7.shopmate.cart.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.cart.dto.Cart;

@Repository
@Transactional
public interface RepositoryDao extends JpaRepository<Cart, Integer>{
		
	//findAll method added for testing
		@Query(value="Select orderId,skuId,quantity,unitPrice,lastModifiedDate from Cart",nativeQuery = true)
		public List<Cart> findAll();
				
		public List<Cart> findByOrderIdAndSkuId(int orderId,String skuId);
	
		public void deleteByOrderIdAndSkuId(int orderId,String skuId);	
	
}
