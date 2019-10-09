package com.l7.shopmate.inventory.service;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;

public interface ItemService {

    public Item getItemById(int id);
    public State getItemAvailabilityById(int id);
}
