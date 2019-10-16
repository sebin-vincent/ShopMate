package com.litmus7.shopmate.profile.dao;

import com.litmus7.shopmate.profile.dto.WishListDto;

import java.util.List;

public interface WishListServiceDao {

    public WishListDto addToUserWishList(WishListDto wishListDto);
    public List<Integer> fetchWishListByUserId(int profileId);

}
