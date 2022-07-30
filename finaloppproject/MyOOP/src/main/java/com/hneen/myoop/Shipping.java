package com.hneen.myoop;

import java.util.Date;

public class Shipping extends Order {
    String company;
    double shipping_price;
    java.sql.Date shipping_time;

    public Shipping() {
    }

    public Shipping(int id, String company, double shipping_price, java.sql.Date shipping_time) {
        super(id);
        this.company = company;
        this.shipping_price = shipping_price;
        this.shipping_time = shipping_time;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public double getShipping_price() {
        return shipping_price;
    }

    public void setShipping_price(double shipping_price) {
        this.shipping_price = shipping_price;
    }

    public java.sql.Date getShipping_time() {
        return (shipping_time);
    }

    public void setShipping_time(java.sql.Date shipping_time) {
        this.shipping_time = shipping_time;
    }
}
