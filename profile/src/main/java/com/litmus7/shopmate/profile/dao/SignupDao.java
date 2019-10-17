package com.litmus7.shopmate.profile.dao;



import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.UserDto;

@Service
public interface SignupDao {
	
	public Response_Info saveNewUser(UserDto userObject);
	

}