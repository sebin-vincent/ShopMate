package com.litmus7.shopmate.profile.dao;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response_Info;

@Service
public interface ChangePasswordDao {
	
	public Response_Info changePassword(LoginDto login);

}
