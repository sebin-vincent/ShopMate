package com.l7.shopmate.inventory.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "item_master")
public class Item {

    @Id
    @GeneratedValue
    private String itemId;

    @OneToOne
    @JoinColumn(name = "item_id")
    private Stock stock;

    @Column(name = "item_name")
    private String itemName;

    @Column(name = "item_description")
    private String itemDescription;

    @Column(name = "hsn_code")
    private String HSNCode;

    @OneToOne
    //or @JoinColumn(name = <name from currrent table>, referncedColumnName = <referenced>)
    @JoinColumn(name = "unit_id")  //mapping of foreign keys
    private Unit unit;

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

    public Unit getUnit() {
        return unit;
    }

    public void setUnit(Unit unit) {
        this.unit = unit;
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

    public Stock getStock() {
        return stock;
    }

    public void setStock(Stock stock) {
        this.stock = stock;
    }

}
