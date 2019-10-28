package com.litmus7.shopmate.profile.dao;

import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response;

public interface LoginDao {
	public Response fetchUser(LoginDto loginInfo);

}
