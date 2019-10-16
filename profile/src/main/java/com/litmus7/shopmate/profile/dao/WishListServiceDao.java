package com.litmus7.shopmate.profile.dao;

import com.litmus7.shopmate.profile.dto.WishListDto;

public interface WishListServiceDao {

    public WishListDto addToUserWishList(WishListDto wishListDto);

}
