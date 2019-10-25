package com.litmus7.shopmate.profile.repositorydao;

import com.litmus7.shopmate.profile.dto.Response_Info;
import com.litmus7.shopmate.profile.dto.WishListDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface WishListRepositoryDao extends JpaRepository<WishListDto, Integer> {

	public WishListDto findBySkuIdAndProfileId(int skuId,int profileId);
    public List<WishListDto> findByProfileId(int profileId);
    public void deleteBySkuIdAndProfileId(int skuId,int profileId);

}
