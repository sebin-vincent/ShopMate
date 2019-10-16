package com.litmus7.shopmate.profile.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "wish_list")
public class WishListDto {

    @Id
    @Column(name = "profile_id")
    private int profileId;

    @Column(name = "sku_id")
    private int skuId;

    public int getProfileId() {
        return profileId;
    }

    public void setProfileId(int profileId) {
        this.profileId = profileId;
    }

    public int getSkuId() {
        return skuId;
    }

    public void setSkuId(int skuId) {
        this.skuId = skuId;
    }

    public WishListDto(int profileId, int skuId) {
        this.profileId = profileId;
        this.skuId = skuId;
    }
}
