package com.litmus7.shopmate.profile.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dao.ChangePasswordDao;
import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.repository.ChangePasswordRepoImpl;

@Service
public class ChangePasswordService implements ChangePasswordDao{
	
	@Autowired
	ChangePasswordRepoImpl changePasswordRepoImpl;
	
	@Autowired
	Response_Info response_Info;

	@Override
	public Response_Info changePassword(LoginDto login) {
		// TODO Auto-generated method stub
		
		int profile_id=login.getProfile_Id();
		String password=login.getPassword();
		Map<String,Object> extra=login.getExtra();
		String new_Password=(String)extra.get("new_password");
		String conf_new_Password=(String) extra.get("conf_password");
		
		boolean isValidPassword=validatePasswords(new_Password, conf_new_Password);
		
		if(isValidPassword==false) {
			response_Info.setStatus_Code(200);
			response_Info.setPayload(null);
			return response_Info;
		}
		
		boolean changedPass=changePasswordRepoImpl.updatePassword(profile_id, password, new_Password);
		
		if(changedPass==true) {
			response_Info.setStatus_Code(200);
			response_Info.setStatus_Message("password changed successfully");
			response_Info.setPayload(null);
			return response_Info;
		}else {
			
			response_Info.setStatus_Code(200);
			response_Info.setStatus_Message("Invalid credentials");
			response_Info.setPayload(null);
			return response_Info;
			
		}
	}
	
	private boolean validatePasswords(String password, String conf_password) {

		if (password == null || conf_password == null) {
			response_Info.setStatus_Message("password field can't be null");
			return false;

		} else if (password.length() <= 8) {
			response_Info.setStatus_Message("password must contain atleast 8 charecters");
			return false;
		} else if (!(password.equals(conf_password))) {
			response_Info.setStatus_Message("passwords are not matching !");
			return false;
		} else {
			return true;
		}

	}

}
