package com.litmus7.shopamte.oauth.controller;

import com.litmus7.shopamte.oauth.model.Response_Info;
import com.litmus7.shopamte.oauth.service.OAuthServiceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.Collections;
import java.util.HashMap;

@RestController
public class OAuthController {

    @Autowired
    private OAuthServiceDao oAuthService;

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

            RedirectView redirectView = new RedirectView();
            redirectView.setUrl("google.com");

            String redirectUrl = "http://127.0.0.1:5500/winter/templates/authenticated.html?pid=" + token;
            return new ModelAndView("redirect:" + redirectUrl);

        } else {
            return new ModelAndView("redirect:https://google.com");
        }


    }

    /*
        How it works
            goto localhost:8080, signin using google
            send a get request to localhost:8080/user and retrieve the token
            add the token to the session
     */

}