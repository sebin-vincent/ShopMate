package com.litmus7.shopmate.profile.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dao.LoginDao;
import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response;
import com.litmus7.shopmate.profile.repositorydao.RepositoryDao;



@Service
public class LoginDaoImpl implements LoginDao{

	@Autowired
	RepositoryDao repository;
	@Override
	public Response fetchUser(LoginDto loginInfo) {
		// TODO Auto-generated method stub
		return repository.fetchUser(loginInfo);
	}

}
