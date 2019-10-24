package com.litmus7.shopmate.profile.service;

import com.litmus7.shopmate.profile.dao.WishListServiceDao;
import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.WishListDto;
//import com.litmus7.shopmate.profile.repository.WishListRepository;
import com.litmus7.shopmate.profile.repositorydao.WishListRepositoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

@Service
@Transactional
public class WishListService implements WishListServiceDao {
	boolean isIdexist = true;
	@Autowired
	private WishListRepositoryDao wishListRepositoryDao;
	Response_Info response= new Response_Info();

	@Override
	public Response_Info addToUserWishList(WishListDto wishListDto) {

		WishListDto wish = wishListRepositoryDao.findBySkuIdAndProfileId(wishListDto.getSkuId(),
				wishListDto.getProfileId());
		System.out.println(wish);
		if(wish==null) {
			wishListRepositoryDao.save(wishListDto);
			response.setStatus_Code(200);
			response.setPayload(null);
			response.setStatus_Message("item added");
			return response;
			
		}
		else {
			response.setStatus_Code(200);
			response.setPayload(null);
			response.setStatus_Message("item exist");
			wishListRepositoryDao.deleteBySkuIdAndProfileId(wishListDto.getSkuId(), wishListDto.getProfileId());
			return response;
		}
		

		

	}

	@Override
	public List<Integer> fetchWishListByUserId(int profileId) {

		List<Integer> skuIds = new ArrayList<>();
		for (WishListDto wishlistItem : wishListRepositoryDao.findByProfileId(profileId)) {
			skuIds.add(wishlistItem.getSkuId());
		}

		return skuIds;

	}
}
