package com.litmus7.shopmate.profile.repositorydao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ForgotPasswordRepositoryDao {
	
	
	public boolean validateCredentials(String email_id,String question_id,String answer);
	
	public boolean updatePassword(String email_id,String password);

}
