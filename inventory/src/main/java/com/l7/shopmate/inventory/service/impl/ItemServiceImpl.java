package com.l7.shopmate.inventory.service.impl;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.entity.Stock;
import com.l7.shopmate.inventory.exception.DataNotFoundException;
import com.l7.shopmate.inventory.repository.ItemRepository;
import com.l7.shopmate.inventory.repository.impl.ItemRepositoryImpl;
import com.l7.shopmate.inventory.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    ItemRepository itemRepositoryImpl;

    @Override
    public Item getItemById(int id) {
        return itemRepositoryImpl.getItemById(id);
    }

    @Override
    public State getItemAvailabilityById(int id) {
        Item item =  itemRepositoryImpl.getItemAvailabilityState(id);
        if (item == null) {
            throw new DataNotFoundException("Item not found.");
        } else {
            State state = item.getStock().getState();
            return state;
        }
    }

    @Override
    public Stock ReserveItem(int id, int quantity) {
        Stock updatedStock = itemRepositoryImpl.reserveItem(id, quantity);
        return updatedStock;
    }

    @Override
    public Stock UnreserveItem(int id, int quantity) {
        Stock updatedStock = itemRepositoryImpl.unreserveItem(id, quantity);
        return updatedStock;
    }


}
