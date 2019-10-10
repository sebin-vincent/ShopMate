package com.l7.shopmate.inventory.repository.impl;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.entity.Stock;
import com.l7.shopmate.inventory.exception.DataNotFoundException;
import com.l7.shopmate.inventory.repository.ItemRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Repository
public class ItemRepositoryImpl implements ItemRepository {

    @PersistenceContext
    EntityManager entityManager;

    @PersistenceContext
    EntityManager entityManagerTransaction;

    //Write your repository layer body for repository layer interface here.
    //Example of a API snippet for reference, this API fetches details of a product wrt id.
    public Item getItemById(int id) {
        return entityManager.find(Item.class, String.valueOf(id));
    }

    @Override
    public Item getItemAvailabilityState(int id) {

        return entityManager.find(Item.class, String.valueOf(id));
    }

    @Override
    public Stock reserveItem(int skuid, int quantity) {

        Stock itemStock = entityManager.find(Item.class, String.valueOf(skuid)).getStock();
        itemStock.setReservedStock(itemStock.getReservedStock() + quantity);
        itemStock.setAvailableStock(itemStock.getAvailableStock() - quantity);

        Stock updatedStock = entityManager.find(Item.class, String.valueOf(skuid)).getStock();
        return updatedStock;
    }

    @Override
    public Stock unreserveItem(int skuid, int quantity) {

        Stock itemStock = entityManager.find(Item.class, String.valueOf(skuid)).getStock();
        itemStock.setReservedStock(itemStock.getReservedStock() - quantity);
        itemStock.setAvailableStock(itemStock.getAvailableStock() + quantity);

        Stock updatedStock = entityManager.find(Item.class, String.valueOf(skuid)).getStock();
        return updatedStock;

    }
}
