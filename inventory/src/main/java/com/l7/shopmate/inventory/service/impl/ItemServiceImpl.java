package com.l7.shopmate.inventory.service.impl;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.entity.State;
import com.l7.shopmate.inventory.entity.Stock;
import com.l7.shopmate.inventory.exception.DataNotFoundException;
import com.l7.shopmate.inventory.model.LatestArrivedItem;
import com.l7.shopmate.inventory.repository.ItemRepository;
import com.l7.shopmate.inventory.repository.impl.ItemRepositoryImpl;
import com.l7.shopmate.inventory.service.ItemService;
import com.l7.shopmate.inventory.service.urlbuilder.PdpUrlBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
            Date startDate = item.getStartDate();
            Date endDate = item.getEndDate();

            final DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date currentDate = new Date();
            String formatedCurrentDate = dateFormat.format(currentDate);
            String formatedStartDate = dateFormat.format(startDate);
            String formatedEndDate = dateFormat.format(endDate);

            boolean isAvailableBetweenDateRange = false;
            try {
                isAvailableBetweenDateRange = dateFormat.parse(formatedCurrentDate)
                        .after(dateFormat.parse(formatedStartDate)) &&
                        dateFormat.parse(formatedCurrentDate)
                                .before(dateFormat.parse(formatedEndDate));

            } catch (ParseException e) {
                System.out.println("parse exception");
            }

            if (isAvailableBetweenDateRange) {
                State state = item.getStock().getState();
                return state;
            } else {
                State notAvailableState = new State(0, "NOTAVAILABLE", 0);
                return notAvailableState;
            }

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

    @Override
    public List<LatestArrivedItem> getLatestArrivedItems(int itemsCount) {
        List<LatestArrivedItem> latestArrivedItems = new ArrayList<>();
        List<Item> latestItems = itemRepositoryImpl.getLatestArrivals(itemsCount);
//        latestArrivedItems.add(new LatestArrivedItem("skuid", "url", "imgurl", 10));
//        return latestArrivedItems;

        PdpUrlBuilder pdpUrlBuilder = new PdpUrlBuilder();

        for (Item item : latestItems) {
            //TODO retrieve real price, image url from catalog db.
            LatestArrivedItem latestArrivedItem = new LatestArrivedItem(item.getItemName(), pdpUrlBuilder.build(item.getItemName()), "image_url", 110);
            latestArrivedItems.add(latestArrivedItem);
        }

        return latestArrivedItems;
    }


}
