package com.litmus7.shopmate.profile.dao;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dto.ProfileDto;
import com.litmus7.shopmate.profile.dto.Response_Info;

@Service
public interface ForgotPasswordDao {
	
	public Response_Info forgotPassword(ProfileDto profile);

}
