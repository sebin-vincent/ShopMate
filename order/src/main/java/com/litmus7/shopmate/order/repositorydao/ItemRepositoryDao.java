package com.litmus7.shopmate.order.repositorydao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.order.dto.Item;

@Repository
public interface ItemRepositoryDao {
	public Object[] getincompleteOrderIdByProfileId(int profileId);
	public List<Item>  getcartItems(int orderId);

}
