package com.litmus7.shopmate.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.order.dto.PaymentDto;

@Repository
public interface GetPaymentMethodRepoDao extends JpaRepository<PaymentDto, Integer> {
		
}
