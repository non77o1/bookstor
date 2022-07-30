package com.hneen.myoop;

public class Books extends Items {
    String publisher;

    public Books() {
    }

    public Books(int item_id, String item_name, double item_prise, String publisher) {
        super(item_id, item_name, item_prise);
        this.publisher = publisher;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    @Override
    public String toString() {
        return " name: " + item_name + "\t\t   prise= " + item_prise + "\t\t   publisher='" + publisher;
    }
}
