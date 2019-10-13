package com.litmus7.shopmate.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dao.GetPaymentMethodServiceDao;
import com.litmus7.shopmate.order.dto.PaymentDto;
import com.litmus7.shopmate.order.dto.Response;
import com.litmus7.shopmate.order.repository.GetPaymentMethodRepoDao;

@ComponentScan("com.litmus7.shopmate")
@Service
public class GetPaymentMethodServiceImpl implements GetPaymentMethodServiceDao {
	
	@Autowired
	GetPaymentMethodRepoDao getPaymentMethodRepoimpl;
	
	@Autowired
	Response response;

	@Override
	public List<PaymentDto> retrievePayments() {
		// TODO Auto-generated method stub
		return getPaymentMethodRepoimpl.findAll();
	}

}
