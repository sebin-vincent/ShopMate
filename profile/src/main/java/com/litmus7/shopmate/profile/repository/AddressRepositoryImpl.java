package com.litmus7.shopmate.profile.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.Address;
import com.litmus7.shopmate.profile.repositorydao.AddressRepositoryDAO;

@Repository
public class AddressRepositoryImpl implements AddressRepositoryDAO {

	@PersistenceContext
	EntityManager entityManger;

	@SuppressWarnings("unchecked")
	@Override
	public List<Address> fetchShippingAddress(Integer profileId) {
		// TODO Auto-generated method stub
		Query query = entityManger
				.createQuery("select a from Address a where a.addressType='shipping' and a.profileId = " + profileId);
		return query.getResultList();
	}

}
