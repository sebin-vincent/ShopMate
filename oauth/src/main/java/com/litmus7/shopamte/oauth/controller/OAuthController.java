package com.litmus7.shopamte.oauth.controller;

import com.litmus7.shopamte.oauth.model.CipherText;
import com.litmus7.shopamte.oauth.model.Response_Info;
import com.litmus7.shopamte.oauth.security.TokenEncryption;
import com.litmus7.shopamte.oauth.service.OAuthServiceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.Collections;
import java.util.HashMap;

@RestController
public class OAuthController {

    @Autowired
    private OAuthServiceDao oAuthService;

    private String key = "test-key";

    @CrossOrigin
    @RequestMapping("user")
    public ModelAndView getUser(Principal principal) {


        Response_Info response_info = new Response_Info();
        String token = null;

        String email = "-999";
        OAuth2Authentication authentication = (OAuth2Authentication) principal;
        if (authentication.isAuthenticated()) {
            HashMap<Object, Object> userDetails = (HashMap<Object, Object>) authentication.getUserAuthentication().getDetails();
            email = (String) userDetails.get("email");
            token = oAuthService.isEmailExists(email);

            response_info.setStatus_Code(200);
            response_info.setStatus_Message("lookup response");
            response_info.setPayload(Collections.singletonList(token));

            String encryptedToken = TokenEncryption.encode(new StringBuilder(token).reverse().toString());

            System.out.println(encryptedToken);
            String redirectUrl = "http://127.0.0.1:5500/winter/templates/authenticated.html?pid=" + encryptedToken;
            return new ModelAndView("redirect:" + redirectUrl);

        } else {
            return new ModelAndView("redirect:https://google.com");
        }


    }

    @GetMapping("decrypt")
    public String decryptToken(@RequestBody CipherText cipherText) {
        return TokenEncryption.decode(cipherText.getCipherText());
    }


}