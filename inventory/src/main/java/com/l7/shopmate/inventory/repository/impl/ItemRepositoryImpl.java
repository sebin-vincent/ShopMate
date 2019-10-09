package com.l7.shopmate.inventory.repository.impl;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.exception.DataNotFoundException;
import com.l7.shopmate.inventory.repository.ItemRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ItemRepositoryImpl implements ItemRepository {

    @PersistenceContext
    EntityManager entityManager;

    //Write your repository layer body for repository layer interface here.
    //Example of a API snippet for reference, this API fetches details of a product wrt id.
    public Item getItemById(int id) {
        return entityManager.find(Item.class, String.valueOf(id));
    }

    @Override
    public Item getItemAvailabilityState(int id) {


       // State itemState = entityManager.find(Item.class, String.valueOf(id)).getStock().getState();
//        if (itemState == null) {
//            throw new DataNotFoundException("The given item "+ id +" does not exists.");
//        }
//        Item item = entityManager.find(Item.class, String.valueOf(id));
//        if (item == null) {
//            throw new DataNotFoundException("The given item "+ id +" does not exists.");
//        } else {
//            State itemState = item.getStock().getState();
//            return itemState;
//        }
        return entityManager.find(Item.class, String.valueOf(id));
    }
}
