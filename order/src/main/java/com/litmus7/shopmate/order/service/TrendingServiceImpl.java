package com.litmus7.shopmate.order.service;

import com.litmus7.shopmate.order.dao.TrendingServiceDao;
import com.litmus7.shopmate.order.dto.ItemDto;
import com.litmus7.shopmate.order.dto.TrendingDto;
import com.litmus7.shopmate.order.repository.TrendingRepositoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TrendingServiceImpl implements TrendingServiceDao {

    @Autowired
    private TrendingRepositoryDao trendingRepository;

    @Override
    public List<TrendingDto> getTrendingSkuIds(int limit)
    {
        List<TrendingDto> trendingDtoList = new ArrayList<>();
        for (ItemDto trendingDto : trendingRepository.getTrendingSkuIds(limit)) {
            trendingDtoList.add(new TrendingDto(trendingDto.getSkuId()));
        }
        return trendingDtoList;
     }
}
