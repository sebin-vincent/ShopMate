package com.litmus7.shopmate.order.repositorydao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.order.dto.Payment;

@Repository
public interface GetPaymentMethodRepoDao extends JpaRepository<Payment, Integer> {
		
}
