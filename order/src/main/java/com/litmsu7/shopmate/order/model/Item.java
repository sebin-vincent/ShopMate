package com.litmsu7.shopmate.order.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "item_master")
public class Item {

    @Id
    @GeneratedValue
    private String itemId;



    @Column(name = "item_name")
    private String itemName;

    @Column(name = "item_description")
    private String itemDescription;

    @Column(name = "hsn_code")
    private String HSNCode;



    @Column(name = "start_datetime")
    @Temporal(TemporalType.TIMESTAMP)  //Converting mySQL datetime to JPA compatible datetime
    private Date startDate;

    @Column(name = "end_datetime")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endDate;


    public Item() {
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemDescription() {
        return itemDescription;
    }

    public void setItemDescription(String itemDescription) {
        this.itemDescription = itemDescription;
    }

    public String getHSNCode() {
        return HSNCode;
    }

    public void setHSNCode(String HSNCode) {
        this.HSNCode = HSNCode;
    }


    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

}
