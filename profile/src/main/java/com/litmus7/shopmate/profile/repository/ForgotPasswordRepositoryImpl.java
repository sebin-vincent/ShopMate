package com.litmus7.shopmate.profile.repository;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.repositorydao.ForgotPasswordRepositoryDao;

@Repository("ForgotPasswordRepositoryDao")
@Transactional
public class ForgotPasswordRepositoryImpl implements ForgotPasswordRepositoryDao {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	public boolean validateCredentials(String email_id, String question_id, String answer) {
		Query query = entityManager.createQuery("Select email_Id from ProfileDto"
				+ " p where p.email_Id = :email_id and p.question_Id = :qestion and p.security_Answer =:answer");

		query.setParameter("email_id", email_id);
		query.setParameter("qestion", question_id);
		query.setParameter("answer", answer);
		try {
			query.getSingleResult();
			return true;

		} catch (NoResultException e) {

			return false;

		}

	}

	@Override
	public boolean updatePassword(String email_id, String password) {

		Query query = entityManager.createQuery("update LoginDto login set login.password= :password where login.login_Id= :email_id");
		query.setParameter("password", password);
		query.setParameter("email_id", email_id);
		
		int count=query.executeUpdate();
        if(count==1) {
        	return true;
        }else {
        	return false;
        }
		
	}

}
