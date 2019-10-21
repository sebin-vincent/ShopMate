package com.litmus7.shopmate.profile.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.repositorydao.ChangePasswordRepoDao;

@Repository
@Transactional
public class ChangePasswordRepoImpl implements ChangePasswordRepoDao{
	
	@PersistenceContext
	EntityManager entityManager;

	@Override
	public boolean updatePassword(int profile_id,String old_Password,String new_Password) {
		// TODO Auto-generated method stub
		
		Query query = entityManager.createQuery("update LoginDto login set login.password= :password where login.profile_Id= :profile_id and login.password= :old_password");
		query.setParameter("password", new_Password);
		query.setParameter("old_password", old_Password);
		query.setParameter("profile_id", profile_id);
		int count=query.executeUpdate();
        if(count==1) {
        	return true;
        }else {
        	return false;
        }
	}

}
