package com.l7.shopmate.inventory.repository;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;

public interface ItemRepository {

    //Write functions here.
    public Item getItemById(int id); //API example for reference
    public Item getItemAvailabilityState(int id);
}
