package com.litmus7.shopmate.profile.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dao.SecurityQuestionDAO;
import com.litmus7.shopmate.profile.dto.Security_Question;
import com.litmus7.shopmate.profile.repositorydao.SecurityQuestionRepositoryDAO;

@Service
public class SecurityQuestionService implements SecurityQuestionDAO {

	@Autowired
	SecurityQuestionRepositoryDAO repository;

	@Override
	public List<Security_Question> fetchAllQuestions() {
		// TODO Auto-generated method stub
		return repository.fetchAllQuestions();//this method is from repositoryImpl
	}

}
