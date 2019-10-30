package com.l7.shopmate.inventory.repository;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.entity.Stock;
import com.l7.shopmate.inventory.model.LatestArrivedItem;
import org.springframework.stereotype.Component;

import java.util.List;

public interface ItemRepository {

    //Write functions here.
    public Item getItemById(int id); //API example for reference
    public Item getItemAvailabilityState(int id);
    public Stock reserveItem(int skuid, int quantity);
    public Stock unreserveItem(int skuid, int quantity);
    public List<Item> getLatestArrivals(int itemCount);
    public Stock restoreItem(int skuId, int quantity);
}
