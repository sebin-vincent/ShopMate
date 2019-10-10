package com.litmus7.shopmate.profile.service;

import com.litmus7.shopmate.profile.dto.AddressDto;

public interface Service {

		public AddressDto addAdress();
		public AddressDto getAdress(int profileId);
		
}
