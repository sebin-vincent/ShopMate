package com.l7.shopmate.inventory.entity;

import javax.persistence.*;

@Entity
@Table(name = "unit_master")
public class Unit {

    @Id
    @GeneratedValue
    private int unitId;

    @Column(name = "unit_of_measure")
    private String unitOfMeasure;

    public Unit() {
    }

    public int getUnitId() {
        return unitId;
    }

    public void setUnitId(int unitId) {
        this.unitId = unitId;
    }

    public String getUnitOfMeasure() {
        return unitOfMeasure;
    }

    public void setUnitOfMeasure(String unitOfMeasure) {
        this.unitOfMeasure = unitOfMeasure;
    }
}
