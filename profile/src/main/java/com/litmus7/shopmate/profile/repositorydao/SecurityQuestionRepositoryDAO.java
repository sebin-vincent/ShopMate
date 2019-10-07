package com.litmus7.shopmate.profile.repositorydao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.Security_Question;

@Repository
public interface SecurityQuestionRepositoryDAO {

	public List<Security_Question> fetchAllQuestions();

}
