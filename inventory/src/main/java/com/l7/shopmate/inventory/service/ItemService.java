package com.l7.shopmate.inventory.service;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.entity.Stock;
import com.l7.shopmate.inventory.model.LatestArrivedItem;

import java.util.List;

public interface ItemService {

    public Item getItemById(int id);
    public State getItemAvailabilityById(int id);
    public Stock ReserveItem(int id, int quantity);
    public Stock UnreserveItem(int id, int quantity);
    public List<LatestArrivedItem> getLatestArrivedItems(int itemsCount);
    public String getItemNameBySkuId(int skuId);
    public Stock restoreItems(int skuId, int quantity);
}
