package com.litmus7.shopmate.order.repositorydao;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface ItemRepositoryDao {
	public Object[] getincompleteOrderIdByProfileId(int profileId);
	public List<Object[]>  getcartItems(int orderId);

}
