package com.hneen.myoop;

import java.io.Serializable;
import java.sql.Date;

public class Person implements Serializable {
    int Id;
    String name;
    String Email;
    String Address;

    public Person() {
    }

    public Person(int id, String name, String email, String address) {
        Id = id;
        this.name = name;
        Email = email;
        Address = address;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    @Override
    public String toString() {
        return "Person{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", Email='" + Email + '\'' +
                ", Address='" + Address + '\'' +
                '}';
    }
}

class manger extends Employee{

    public manger(){

    }

    public manger(int id, String name, String email, String address, double salary, java.util.Date payment_date) {

        super(id, name, email, address, salary, (Date) payment_date);
    }
}