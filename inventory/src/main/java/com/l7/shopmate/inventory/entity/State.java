package com.l7.shopmate.inventory.entity;

import javax.persistence.*;

@Entity
@Table(name = "state_type")
public class State {

    @Id
    @GeneratedValue
    private int stateId;

    @Column(name = "state_type")
    private String stateType;

    @Column(name = "state_threshold")
    private int stateThreshold;

    public int getStateThreshold() {
        return stateThreshold;
    }

    public void setStateThreshold(int stateThreshold) {
        this.stateThreshold = stateThreshold;
    }

    public State() {
    }

    public int getStateId() {
        return stateId;
    }

    public void setStateId(int stateId) {
        this.stateId = stateId;
    }

    public String getStateType() {
        return stateType;
    }

    public void setStateType(String stateType) {
        this.stateType = stateType;
    }

    public State(int stateId, String stateType, int stateThreshold) {
        this.stateId = stateId;
        this.stateType = stateType;
        this.stateThreshold = stateThreshold;
    }
}
