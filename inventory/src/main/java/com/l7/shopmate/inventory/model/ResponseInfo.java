package com.l7.shopmate.inventory.model;

import java.util.List;

public class ResponseInfo {

    private int statusCode;
    private String message;
    private List<Object> payload;

    public ResponseInfo(int statusCode, String message, List<Object> payload) {
        this.statusCode = statusCode;
        this.message = message;
        this.payload = payload;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<Object> getPayload() {
        return payload;
    }

    public void setPayload(List<Object> payload) {
        this.payload = payload;
    }
}
