package com.litmus7.shopmate.order.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.order.dto.ItemDto;

@Repository
public interface ItemRepositoryDao extends JpaRepository<ItemDto, Integer>{
	
	@Query(value = "SELECT * FROM order_detail WHERE order_id =:orderId",nativeQuery = true)
	public List<ItemDto> getAllSkuByOrderId(@Param("orderId") int orderId);
	
	@Query(value = "select * from order_detail where order_id=:orderId and sku_id=:skuId",nativeQuery = true)
	public ItemDto updateQuantity(@Param("orderId") int orderId, @Param("skuId") int skuId);

}
