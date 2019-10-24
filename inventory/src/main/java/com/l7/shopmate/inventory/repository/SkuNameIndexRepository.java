package com.l7.shopmate.inventory.repository;

import com.l7.shopmate.inventory.entity.Item;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SkuNameIndexRepository extends JpaRepository<Item, String> {

    @Override
    public List<Item> findAll();
}
