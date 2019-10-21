package com.litmus7.shopmate.profile.repositorydao;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.LoginDto;

@Repository
public interface ChangePasswordRepoDao {
	
	public boolean updatePassword(int profile_id,String password,String new_password);


}
