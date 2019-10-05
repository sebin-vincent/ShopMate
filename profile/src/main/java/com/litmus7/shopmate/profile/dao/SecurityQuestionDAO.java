package com.litmus7.shopmate.profile.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dto.Security_Question;

@Service
public interface SecurityQuestionDAO {

	public List<Security_Question> fetchAllQuestions();
}
