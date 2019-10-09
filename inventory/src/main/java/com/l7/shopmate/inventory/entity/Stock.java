package com.l7.shopmate.inventory.entity;

import javax.persistence.*;

@Entity
@Table(name = "stock_master")
public class Stock {

    //TODO change table names as per in slack

    @Id
    @GeneratedValue
    private String itemId;

    @Column(name = "available_stock")
    private int availableStock;

    @Column(name = "reserved_stock")
    private int reservedStock;

    @Column(name = "total_stock")
    private int totalStock;

    @Column(name = "dead_stock")
    private int deadStock;

    @OneToOne
    @JoinColumn(name = "state_id")
    private State state;

    @Column(name = "preorder_level")
    private int preorderLevel;

    @Column(name = "reorder_level")
    private int reorderLevel;

    @Column(name = "backorder_level")
    private int backorderLevel;

    public Stock() {
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public int getAvailableStock() {
        return availableStock;
    }

    public void setAvailableStock(int availableStock) {
        this.availableStock = availableStock;
    }

    public int getReservedStock() {
        return reservedStock;
    }

    public void setReservedStock(int reservedStock) {
        this.reservedStock = reservedStock;
    }

    public int getTotalStock() {
        return totalStock;
    }

    public void setTotalStock(int totalStock) {
        this.totalStock = totalStock;
    }

    public int getDeadStock() {
        return deadStock;
    }

    public void setDeadStock(int deadStock) {
        this.deadStock = deadStock;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public int getPreorderLevel() {
        return preorderLevel;
    }

    public void setPreorderLevel(int preorderLevel) {
        this.preorderLevel = preorderLevel;
    }

    public int getReorderLevel() {
        return reorderLevel;
    }

    public void setReorderLevel(int reorderLevel) {
        this.reorderLevel = reorderLevel;
    }

    public int getBackorderLevel() {
        return backorderLevel;
    }

    public void setBackorderLevel(int backorderLevel) {
        this.backorderLevel = backorderLevel;
    }
}
