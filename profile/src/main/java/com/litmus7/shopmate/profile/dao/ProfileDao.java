package com.litmus7.shopmate.profile.dao;

import com.litmus7.shopmate.profile.dto.AddressDto;

public interface ProfileDao {
	public void profileDetails();
	public AddressDto getAddress(int profileId);
	

}
