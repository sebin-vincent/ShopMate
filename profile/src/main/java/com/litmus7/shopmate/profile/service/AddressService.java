package com.litmus7.shopmate.profile.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dao.AddressDao;
import com.litmus7.shopmate.profile.dto.Address;
import com.litmus7.shopmate.profile.repositorydao.AddressRepositoryDAO;

@Service
public class AddressService implements AddressDao{

	@Autowired
	AddressRepositoryDAO repository;
	@Override
	public List<Address> fetchShippingAddress(Integer profileId) {
		// TODO Auto-generated method stub
		return repository.fetchShippingAddress(profileId);
	}

}
