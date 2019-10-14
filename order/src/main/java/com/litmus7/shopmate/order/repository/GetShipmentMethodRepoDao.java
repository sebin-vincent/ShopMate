package com.litmus7.shopmate.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.order.dto.ShipmentDto;

@Repository
public interface GetShipmentMethodRepoDao extends JpaRepository<ShipmentDto, Integer> {

}
