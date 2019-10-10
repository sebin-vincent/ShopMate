package com.l7.shopmate.inventory.repository;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.entity.Stock;
import org.springframework.stereotype.Component;

public interface ItemRepository {

    //Write functions here.
    public Item getItemById(int id); //API example for reference
    public Item getItemAvailabilityState(int id);
    public Stock reserveItem(int skuid, int quantity);
    public Stock unreserveItem(int skuid, int quantity);
}
