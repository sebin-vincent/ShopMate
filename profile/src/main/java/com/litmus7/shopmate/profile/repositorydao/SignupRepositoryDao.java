package com.litmus7.shopmate.profile.repositorydao;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.UserDto;

@Repository
public interface SignupRepositoryDao{
	
	public Response_Info saveNewUser(UserDto userObject);
	//@Query("select * from User where email=1?")
	//UserDto findByUserDto (String email);
	
}
