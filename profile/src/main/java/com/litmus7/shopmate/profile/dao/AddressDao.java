package com.litmus7.shopmate.profile.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dto.Address;

@Service
public interface AddressDao {

	public List<Address> fetchShippingAddress(Integer profileId);
}
