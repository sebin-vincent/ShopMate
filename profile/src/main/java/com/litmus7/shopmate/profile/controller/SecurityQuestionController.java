package com.litmus7.shopmate.profile.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.profile.dao.SecurityQuestionDAO;
import com.litmus7.shopmate.profile.dto.Security_Question;

@RestController
public class SecurityQuestionController {

	@Autowired
	SecurityQuestionDAO service;

	@CrossOrigin
	@GetMapping(path = "/questions")
	public List<Security_Question> fetchAll() {
		return service.fetchAllQuestions();
		  
	}
}
