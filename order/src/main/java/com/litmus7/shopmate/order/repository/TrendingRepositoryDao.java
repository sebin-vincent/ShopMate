package com.litmus7.shopmate.order.repository;

import com.litmus7.shopmate.order.dto.ItemDto;
import com.litmus7.shopmate.order.dto.TrendingDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TrendingRepositoryDao extends JpaRepository<ItemDto, Integer> {

    //WHERE last_modified_date = CURRENT_DATE()
    @Query(value = "SELECT DISTINCT * FROM order_detail WHERE last_modified_date = CURRENT_DATE LIMIT ?1", nativeQuery = true)
    public List<ItemDto> getTrendingSkuIds(int limit);


}
