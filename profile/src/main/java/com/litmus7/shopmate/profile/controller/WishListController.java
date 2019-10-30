package com.litmus7.shopmate.profile.controller;


import com.litmus7.shopmate.profile.dao.WishListServiceDao;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.WishListDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping("/wishlist")
public class WishListController {

    @Autowired
    private WishListServiceDao wishListService;

    @CrossOrigin
    @PostMapping("/add")
    public Response_Info addToWishList(@RequestBody WishListDto wishList) {

        return wishListService.addToUserWishList(wishList);

    }

    @CrossOrigin
    @GetMapping("/{profileId}/retrieve")
    public Response_Info retriveWishList(@PathVariable int profileId) {

        List<Integer> skuIds = wishListService.fetchWishListByUserId(profileId);

        Response_Info response_info = new Response_Info();
        response_info.setStatus_Code(200);
        response_info.setStatus_Message("retrieved");
        response_info.setPayload(Collections.singletonList(skuIds));
        return response_info;
    }

    @CrossOrigin
    @DeleteMapping("/delete")
    public Response_Info deleteWishlistItem(@RequestBody WishListDto wishListDto) {
        wishListService.deleteFromWishlist(wishListDto);
        Response_Info response_info = new Response_Info();
        response_info.setStatus_Message("deleted");
        response_info.setStatus_Code(200);
        response_info.setPayload(Collections.singletonList(new ArrayList<>().add(
                "Deleted successfully"
        )));

        return response_info;
    }


}
