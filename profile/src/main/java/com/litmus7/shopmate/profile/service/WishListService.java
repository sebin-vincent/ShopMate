package com.litmus7.shopmate.profile.service;

import com.litmus7.shopmate.profile.dao.WishListServiceDao;
import com.litmus7.shopmate.profile.dto.WishListDto;
import com.litmus7.shopmate.profile.repository.WishListRepository;
import com.litmus7.shopmate.profile.repositorydao.WishListRepositoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WishListService implements WishListServiceDao {

    @Autowired
    private WishListRepositoryDao wishListRepositoryDao;

    @Override
    public WishListDto addToUserWishList(WishListDto wishListDto) {

        return wishListRepositoryDao.addWishlist(wishListDto);

    }
}
