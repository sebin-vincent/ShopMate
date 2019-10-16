package com.litmus7.shopmate.profile.repositorydao;

import com.litmus7.shopmate.profile.dto.WishListDto;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface WishListRepositoryDao extends JpaRepository<WishListDto, Integer> {

//    public WishListDto addWishlist(WishListDto wishlist);
    public List<WishListDto> findByProfileId(int profileId);

}
