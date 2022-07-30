package com.hneen.myoop;

import java.text.SimpleDateFormat;
import java.util.Date;

public class pick_up extends Order {
    java.sql.Date pickup_time;
    public pick_up() {
    }

    public pick_up(int id, java.sql.Date pickup_time) {
        super(id);
        this.pickup_time = pickup_time;
    }

    public java.sql.Date getPickup_time() {
        return pickup_time;
    }

    public void setPickup_time(java.sql.Date pickup_time) {
        this.pickup_time = pickup_time;
    }


}
