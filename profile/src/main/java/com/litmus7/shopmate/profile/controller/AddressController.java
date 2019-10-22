package com.litmus7.shopmate.profile.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.profile.dao.AddressDao;
import com.litmus7.shopmate.profile.dto.Address;
import com.litmus7.shopmate.profile.exception.NoShippingAddressFound;

@RestController
public class AddressController {

	@Autowired
	AddressDao service;

	@CrossOrigin
	@GetMapping(path = "/shippingaddress/{profileId}")
	public List<Address> fetchShippingAddress(@PathVariable Integer profileId) {
		List<Address> addressList = service.fetchShippingAddress(profileId);

		if (addressList.isEmpty()) {
			throw new NoShippingAddressFound("No shipping address found for the profileid " + profileId);
		}

		return addressList;
	}
}
