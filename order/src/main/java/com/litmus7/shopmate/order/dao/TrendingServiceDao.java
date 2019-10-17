package com.litmus7.shopmate.order.dao;

import com.litmus7.shopmate.order.dto.TrendingDto;

import java.util.List;

public interface TrendingServiceDao {

    public List<TrendingDto> getTrendingSkuIds(int limit);

}
