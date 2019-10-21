package com.litmus7.shopmate.profile.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dao.SignupDao;
import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.UserDto;
import com.litmus7.shopmate.profile.repositorydao.SignupRepositoryDao;

@Service
public class SignUpService implements SignupDao{
	@Autowired
	SignupRepositoryDao repository;
	@Override
	public Response_Info saveNewUser(UserDto userObject) {
		// TODO Auto-generated method stub
		return repository.saveNewUser(userObject);
		
	}
	
	
}
