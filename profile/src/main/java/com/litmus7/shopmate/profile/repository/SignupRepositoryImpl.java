package com.litmus7.shopmate.profile.repository;


import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.UserDto;
import com.litmus7.shopmate.profile.exception.UserExistException;
import com.litmus7.shopmate.profile.repositorydao.SignupRepositoryDao;


@EntityScan("com.litmus7.shopmate.profile.dto")
@Repository
public class SignupRepositoryImpl implements SignupRepositoryDao {

	@PersistenceContext
	EntityManager entityManager;
	Response_Info responseInfo =new Response_Info();
	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public Response_Info saveNewUser(UserDto userObject) {
		// TODO Auto-generated method stub
		LoginDto login=new LoginDto();
		long dateInMillie=System.currentTimeMillis();  
		Date todayDate=new Date(dateInMillie);
		userObject.setDate(todayDate);
		boolean isUserExists = isUserAlreadyExist(userObject);
		if (isUserExists== true) {
			entityManager.persist(userObject);
			
			login.setProfile_Id(userObject.getProfileId());
			login.setLogin_Id(userObject.getEmail());
			login.setPassword(userObject.getPassword());
			
			System.out.println(userObject.getProfileId());
			System.out.println(userObject.getEmail());
			System.out.println(userObject.getPassword());
			
			entityManager.merge(login);
			
			responseInfo.setStatus_Code(200);
			responseInfo.setStatus_Message("User added successfully");
			responseInfo.setPayload(null);
			return responseInfo;
		} else {
			
			return responseInfo;
		}

	}

	public boolean isUserAlreadyExist(UserDto userObject) {
		// TODO Auto-generated method stub
		String email = userObject.getEmail();
		System.out.println(email);
		Query query = entityManager.createQuery("select profileId from UserDto where email=?1");
		query.setParameter(1, email);
		@SuppressWarnings("unchecked")
		List<Integer> resultList = query.getResultList();
		if (!resultList.isEmpty()) {
			responseInfo.setStatus_Code(400);
			responseInfo.setStatus_Message("User already exist");
			responseInfo.setPayload(null);
			//throw new UserExistException("User already exist");
			return false;
		}

		// entityManager.createQuery("select profileId from UserDto where
		// email=?1").setParameter(1, email).executeUpdate();
		else {
			System.out.println(email);

			return true;
		}

	}
	
	public boolean isvalidate(UserDto userObject) {
		if(userObject.getFirstName()==null||  userObject.getMobile()==0 || userObject.getEmail()==null || userObject.getQuestionId().isEmpty()==true || userObject.getAnswer()==null || userObject.getPassword()==null) {
			return false;
	
		}
		return true;
	}

}

