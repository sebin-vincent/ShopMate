package com.litmus7.shopmate.profile.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "address")
public class Address {
	@Column(name = "profile_id")
	private Integer profileId;
	
	@Id
	@Column(name = "address_id")
	private Integer addressId;
	
	@Column(name = "address_type")
	private String addressType;
	
	@Column(name = "house_name")
	private String houseName;
	
	@Column(name = "post_code")
	private Integer postcode;
	
	private String street;
	private String city;
	private String state;
	private String country;
	
	
	
	
	public Integer getProfileId() {
		return profileId;
	}
	public void setProfileId(Integer profileId) {
		this.profileId = profileId;
	}
	public Integer getAddressId() {
		return addressId;
	}
	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}
	public String getAddressType() {
		return addressType;
	}
	public void setAddressType(String addressType) {
		this.addressType = addressType;
	}
	public String getHouseName() {
		return houseName;
	}
	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Integer getPostcode() {
		return postcode;
	}
	public void setPostcode(Integer postcode) {
		this.postcode = postcode;
	}
	
}
