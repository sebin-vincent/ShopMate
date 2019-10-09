package com.l7.shopmate.inventory.controller;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.model.ResponseInfo;
import com.l7.shopmate.inventory.service.ItemService;
import com.l7.shopmate.inventory.service.impl.ItemServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
//    @GetMapping("state/{id}")
    public ResponseInfo getState(@PathVariable String id){
        List<Object> responses = new ArrayList<Object>();
        responses.add(itemServiceImpl.getItemAvailabilityById(Integer.parseInt(id)));
        ResponseInfo responseInfo = new ResponseInfo(200, "Availability info", responses);
        return responseInfo;
    }
}
