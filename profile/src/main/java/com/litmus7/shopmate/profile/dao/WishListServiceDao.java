package com.litmus7.shopmate.profile.dao;

import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.WishListDto;

import java.util.List;

public interface WishListServiceDao {

	
    public Response_Info addToUserWishList(WishListDto wishListDto);
    public List<Integer> fetchWishListByUserId(int profileId);
    public void deleteFromWishlist(WishListDto wishListDto);
    
}
