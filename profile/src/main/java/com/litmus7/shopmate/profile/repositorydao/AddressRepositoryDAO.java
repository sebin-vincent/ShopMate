package com.litmus7.shopmate.profile.repositorydao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.Address;

@Repository
public interface AddressRepositoryDAO {

	public List<Address> fetchShippingAddress(Integer profileId);
}
