package com.litmus7.shopamte.oauth.service;

import com.litmus7.shopamte.oauth.repository.OAuthRepositoryDao;
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
