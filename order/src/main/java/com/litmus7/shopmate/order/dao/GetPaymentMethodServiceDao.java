package com.litmus7.shopmate.order.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dto.Payment;

@Service
public interface GetPaymentMethodServiceDao {

	public List<Payment> retrievePayments(); 
	
}
