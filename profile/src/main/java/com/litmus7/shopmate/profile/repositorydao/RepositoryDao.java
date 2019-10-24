package com.litmus7.shopmate.profile.repositorydao;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response;


@Repository
public interface RepositoryDao {
	public Response fetchUser(LoginDto login);

}
