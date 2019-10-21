package com.litmus7.shopmate.profile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.profile.dao.ChangePasswordDao;
import com.litmus7.shopmate.profile.dao.ForgotPasswordDao;
import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.ProfileDto;
import com.litmus7.shopmate.profile.dto.Response_Info;

@RestController

@ComponentScan(value="com.litmus7.shopmate.profile")

public class ProfileController {

	@Autowired
	ForgotPasswordDao forgotPasswordService;

	@Autowired
	ChangePasswordDao changePasswordService;

	// comment to resolve conflict of resmi
	@CrossOrigin
	@PostMapping("/forgotpassword")
	public Response_Info forgotPassword(@RequestBody ProfileDto profile) {
		return forgotPasswordService.forgotPassword(profile);
	}
	
	@CrossOrigin
	@PutMapping("/changepassword")
	public Response_Info changePassword(@RequestBody LoginDto login) {

		return changePasswordService.changePassword(login);
	}

}
