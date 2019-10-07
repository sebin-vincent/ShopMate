package com.litmus7.shopmate.profile.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.Security_Question;
import com.litmus7.shopmate.profile.repositorydao.SecurityQuestionRepositoryDAO;

@Repository
public class SecurityQuestionRepositoryImpl implements SecurityQuestionRepositoryDAO {

	@PersistenceContext
	EntityManager entityManager;

	@SuppressWarnings("unchecked")
	@Override
	public List<Security_Question> fetchAllQuestions() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("Select question_Id,question from Security_Question");
		return query.getResultList();
	}
}
