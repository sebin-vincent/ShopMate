package com.litmus7.shopmate.profile.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.profile.dao.ForgotPasswordDao;
import com.litmus7.shopmate.profile.dto.ProfileDto;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.repositorydao.ForgotPasswordRepositoryDao;

@Service
@ComponentScan(value = "com.litmus7.shopmate.profile")
public class ForgotPasswordService implements ForgotPasswordDao {

	@Autowired
	ForgotPasswordRepositoryDao forgotpasswordForgotPasswordRepositoryImplRepoImpl;

	@Autowired
	Response_Info response_Info;

	@Override
	public Response_Info forgotPassword(ProfileDto profile) {

		String email_Id = profile.getEmail_Id();
		String question_Id = profile.getQuestion_Id();
		String answer = profile.getSecurity_Answer();
		Map<String, Object> extra = profile.getExtra();
		String password = (String) extra.get("password");
		String conf_password = (String) extra.get("conf_password");

		boolean isValidpasswords = validatePasswords(password, conf_password);
		if (isValidpasswords == false) {
			response_Info.setStatus_Code(500);
			response_Info.setPayload(null);
			return response_Info;
		}

		boolean isValid = forgotpasswordForgotPasswordRepositoryImplRepoImpl.validateCredentials(email_Id, question_Id,
				answer);

		if (isValid == false) {
			response_Info.setStatus_Code(404);
			response_Info.setStatus_Message("Invalid credentials");
			response_Info.setPayload(null);
		} else {
			boolean isSuccess = forgotpasswordForgotPasswordRepositoryImplRepoImpl.updatePassword(email_Id, password);
			if (isSuccess == true) {
				response_Info.setStatus_Code(200);
				response_Info.setStatus_Message("Password changed");
				response_Info.setPayload(null);
			}

		}

		return response_Info;
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
