package com.litmus7.shopmate.profile.service;

import com.litmus7.shopmate.profile.dao.OAuthRepositoryDao;
import com.litmus7.shopmate.profile.dao.OAuthServiceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OAuthService implements OAuthServiceDao {

    @Autowired
    private OAuthRepositoryDao oAuthRepository;

    @Override
    public String isEmailExists(String email) {
        String userToken = oAuthRepository.existsByLoginId(email);
//        System.out.println(existanceCount);
        String token = "";
        if (userToken != null) {
            token = userToken;
        }
        return token;
    }
}
