package com.litmus7.shopmate.profile.repository;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.litmus7.shopmate.profile.dto.LoginDto;
import com.litmus7.shopmate.profile.dto.Response;

import com.litmus7.shopmate.profile.repositorydao.RepositoryDao;


@Repository
@Transactional
public class LoginRepositoryImpl implements RepositoryDao {
	@PersistenceContext
	EntityManager entityManager;

	@Override
	public Response fetchUser(LoginDto login) {
		// TODO Auto-generated method stub
		Response response = new Response();
		System.out.println(login.getPassword());
		boolean isCredentialIsNull = isCredentialNull(login);
		if (isCredentialIsNull == true) {

			Query query = entityManager.createQuery("select profile_Id from LoginDto where login_Id=?1 and password=?2");
			query.setParameter(1, login.getLogin_Id());
			query.setParameter(2, login.getPassword());
			List<Integer> resultList = query.getResultList();
			System.out.println(resultList);
			if (!resultList.isEmpty()) {
				response.setStatus_Code(200);
				response.setMessage("login success");
				response.setPayload(resultList.get(0));
				return response;
				// throw new InvalidCredentialException("password or username is incorrect");
			} else {
				int profileid = query.getFirstResult();
				response.setStatus_Code(400);
				response.setMessage("login failed");
				response.setPayload(null);
				return response;
			}

		} else {
			response.setStatus_Code(400);
			response.setMessage("login success");
			response.setPayload(null);
			return response;
		}
	}

	public boolean isCredentialNull(LoginDto logininfo) {
		if (logininfo.getLogin_Id() == null || logininfo.getPassword() == null) {
			return false;
		} else {
			return true;
		}

	}
}
