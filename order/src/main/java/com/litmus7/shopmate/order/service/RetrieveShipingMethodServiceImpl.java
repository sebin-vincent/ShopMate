package com.litmus7.shopmate.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.order.dao.RetrieveShipingMethodDao;
import com.litmus7.shopmate.order.dto.ShipmentDto;
import com.litmus7.shopmate.order.repository.GetShipmentMethodRepoDao;

@Service
public class RetrieveShipingMethodServiceImpl implements RetrieveShipingMethodDao {
	
	@Autowired
	GetShipmentMethodRepoDao getShipmentMethodImpl;
	
	@Override
	public List<ShipmentDto> retrieveShippingMethods() {
		// TODO Auto-generated method stub
		return getShipmentMethodImpl.findAll();
	}

}
