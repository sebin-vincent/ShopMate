package com.litmus7.shopmate.profile.repository;

import javax.persistence.EntityManager;

import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.AddressDto;

@Repository
public class ProfileRepository extends JpaRepositoryFactory implements RepositoryInterface{

	public ProfileRepository(EntityManager entityManager) {
		super(entityManager);
		// TODO Auto-generated constructor stub
	}

	public AddressDto getAddress(int profileId) {
		// TODO Auto-generated method stub
		return null;
	}

}
