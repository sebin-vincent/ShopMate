package com.litmus7.shopmate.profile.controller;

import com.litmus7.shopmate.profile.dao.OAuthServiceDao;
import com.litmus7.shopmate.profile.dto.Response_Info;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.Collections;
import java.util.HashMap;

@RestController
public class OAuthController {

    @Autowired
    private OAuthServiceDao oAuthService;

    @CrossOrigin
    @RequestMapping("user")
    @ResponseBody
    public Response_Info getUser(Principal principal) {

//        JSONObject jsonObject = new JSONObject();
        Response_Info response_info = new Response_Info();

        String email = "-999";
        OAuth2Authentication authentication = (OAuth2Authentication) principal;
        if (authentication.isAuthenticated()) {
            HashMap<Object, Object> userDetails = (HashMap<Object, Object>) authentication.getUserAuthentication().getDetails();
            email = (String) userDetails.get("email");
            String token = oAuthService.isEmailExists(email);



//            jsonObject.put("status", "200");
//            jsonObject.put("message", "fetched");
//            jsonObject.put("token", token);

            response_info.setStatus_Code(200);
            response_info.setStatus_Message("Asdasdasd");
            response_info.setPayload(Collections.singletonList(token));
        }

        return response_info;
    }

    /*
        How it works
            goto localhost:8080, signin using google
            send a get request to localhost:8080/user and retrieve the token
            add the token to the session
     */

}
