package com.litmus7.shopmate.profile.repository;

import com.litmus7.shopmate.profile.dto.AddressDto;

public interface RepositoryInterface {
	public AddressDto getAddress(int profileId);

}
