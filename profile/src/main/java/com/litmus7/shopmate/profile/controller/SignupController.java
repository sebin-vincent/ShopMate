package com.litmus7.shopmate.profile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.profile.dao.SignupDao;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.UserDto;


@RestController
public class SignupController {

	@Autowired
	SignupDao service;

	@PostMapping(path = "/signup")
	public Response_Info saveUser(@RequestBody UserDto userObject) {
		return  service.saveNewUser(userObject);
	}
	
}
