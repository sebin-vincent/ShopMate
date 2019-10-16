package com.litmus7.shopmate.profile.controller;


import com.litmus7.shopmate.profile.dao.WishListServiceDao;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.WishListDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class WishListController {

    @Autowired
    private WishListServiceDao wishListService;

    @PostMapping("/add-to-wishlist")
    public Response_Info addToWishList(@RequestBody WishListDto wishList) {

        WishListDto addedResponse = wishListService.addToUserWishList(wishList);
        List<Object> payload = new ArrayList<>();
        Response_Info response_info = new Response_Info();
        response_info.setStatus_Message("added");
        response_info.setStatus_Code(200);
        payload.add(addedResponse);
        response_info.setPayload((payload));
        return response_info;

    }


}
