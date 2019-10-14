package com.l7.shopmate.inventory.controller;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.entity.Stock;
import com.l7.shopmate.inventory.model.LatestArrivedItem;
import com.l7.shopmate.inventory.model.ReserveBodyDto;
import com.l7.shopmate.inventory.model.ResponseInfo;
import com.l7.shopmate.inventory.service.ItemService;
import com.l7.shopmate.inventory.service.impl.ItemServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/items")
public class ItemController {

    @Autowired
    ItemService itemServiceImpl;

    @GetMapping("/{id}")
    public Item getItem(@PathVariable String id) {
        return itemServiceImpl.getItemById(Integer.parseInt(id));
    }

    @GetMapping("{id}/state")
    public ResponseInfo getState(@PathVariable String id){
        ResponseInfo responseInfo = new ResponseInfo(200, "Availability info", itemServiceImpl.getItemAvailabilityById(Integer.parseInt(id)));
        return responseInfo;
    }

   @PutMapping("reserve")
    public ResponseInfo reserveItem(@RequestBody ReserveBodyDto reserveBodyDto) {
       Stock updatedStock = itemServiceImpl.ReserveItem(Integer.parseInt(reserveBodyDto.getSkuId()), reserveBodyDto.getQuantity());
       ResponseInfo responseInfo = new ResponseInfo(200, "Stock updated", updatedStock);
       return responseInfo;
   }

    @PutMapping("unreserve")
    public ResponseInfo unreserveItem(@RequestBody ReserveBodyDto reserveBodyDto) {
        Stock updatedStock = itemServiceImpl.UnreserveItem(Integer.parseInt(reserveBodyDto.getSkuId()), reserveBodyDto.getQuantity());
        ResponseInfo responseInfo = new ResponseInfo(200, "Stock updated", updatedStock);
        return responseInfo;
    }

    @GetMapping("latest-arrivals/{itemCount}")
    public ResponseInfo getLatestArrivals(@PathVariable int itemCount) {
        List<LatestArrivedItem> latestArrivedItems = itemServiceImpl.getLatestArrivedItems(itemCount);
        ResponseInfo responseInfo = new ResponseInfo(200, "test", latestArrivedItems);
        return responseInfo;
    }
}
