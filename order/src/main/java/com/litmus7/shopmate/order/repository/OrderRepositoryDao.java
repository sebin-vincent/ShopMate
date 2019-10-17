package com.litmus7.shopmate.order.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.order.dto.OrderDto;

@Repository
public interface OrderRepositoryDao extends JpaRepository<OrderDto, Integer> {

	@Query(value = "select * FROM manager m WHERE m.profile_id=:profileId AND m.status_id=:status", nativeQuery = true)
	List<OrderDto> getAllOrdersByStatus(@Param("profileId") int profileId, @Param("status") int status);

	@Query(value = "SELECT * from manager m where m.profile_id=:profileId AND m.status_id=:status", nativeQuery = true)
	List<OrderDto> getOrderIdByProfileId(@Param("profileId") int profileId, @Param("status") int statusId);

	@Query(value = "select * from manager m where m.profile_id =:profileId", nativeQuery = true)
	List<OrderDto> getAllOrderByProfileId(@Param("profileId") int profileId);
	
	@Query(value = "select * from manager m where m.order_id =:orderId", nativeQuery = true)
	List<OrderDto> getOrderByOrderId(@Param("orderId") int orderId);

}
