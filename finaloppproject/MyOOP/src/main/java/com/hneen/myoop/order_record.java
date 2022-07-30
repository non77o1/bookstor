package com.hneen.myoop;

import java.sql.*;

public class order_record {
    Order order;
    Payment pay;
    Customer customer;
    int num_items;

    public order_record(Order order, Payment pay, Customer customer, int num_items) {
        this.order = order;
        this.pay = pay;
        this.customer = customer;
        this.num_items = num_items;
    }

    public order_record() {
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Payment getPay() {
        return pay;
    }

    public void setPay(Payment pay) {
        this.pay = pay;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public int getNum_items() {
        return num_items;
    }

    public void setNum_items(int num_items) {
        this.num_items = num_items;
    }

    @Override
    public String toString() {
        String sym=null;
       if (order instanceof Shipping){
          if (pay instanceof cash){
               sym = "Order Id: " + order.getId() +
                       "\tPayment Id: " + pay.getPay_id() +
                       "\tCustomer Id: " + customer.getId() +
                       "\tCustomer Name: " + customer.getName()+ "\n\n"  +
                       "\t way of pay: cash"+
                       "\t Delivery way : Shipping "+"\n\n"  +
                       "\tTotal Price: " + (pay.getTotal_price() + ((Shipping) order).getShipping_price()) +
                       "\tNumber of Items: " + num_items + "\n\n" +
                       "\tDate of Order and Shipping: " + ((Shipping) order).getShipping_time();
           }
          if (pay instanceof card){
              sym = "Order Id: " + order.getId() +
                      "\tPayment Id: " + pay.getPay_id() +
                      "\tCustomer Id: " + customer.getId() +
                      "\tCustomer Name: " + customer.getName() + "\n\n"  +
                      "\t way of pay: Online(card)"+
                      "\t Delivery way : Shipping"+ "\n\n" +
                      "\tTotal Price: " + (pay.getTotal_price() + ((Shipping) order).getShipping_price()) +
                      "\tNumber of Items: " + num_items + "\n\n"  +
                      "\tDate of Order and Shipping: " + ((Shipping) order).getShipping_time();
          }
        }

        if (order instanceof pick_up){
            if (pay instanceof cash){
                sym = "Order Id: " + order.getId() +
                        "\tPayment Id: " + pay.getPay_id() +
                        "\tCustomer Id: " + customer.getId() +
                        "\tCustomer Name: " + customer.getName()+ "\n\n"  +
                        "\t way of pay: cash"+
                        "\t Delivery way : Pick Up from Store"+ "\n\n"   +
                        "\tTotal Price: " + pay.getTotal_price() +
                        "\tNumber of Items: " + num_items + "\n\n"  +
                        "\tDate of Order and Shipping: " +((pick_up) order).getPickup_time();
            }
            if (pay instanceof card){
                sym = "Order Id: " + order.getId() +
                        "\tPayment Id: " + pay.getPay_id() +
                        "\tCustomer Id: " + customer.getId()+
                        "\tCustomer Name: " + customer.getName()+ "\n\n"  +
                        "\t way of pay: Online(card)"+
                        "\t Delivery way : Pick Up from Store"+ "\n\n" +
                        "\tTotal Price: " + pay.getTotal_price()  +
                        "\tNumber of Items: " + num_items + "\n\n" +
                        "\tDate of Order and Shipping: " + ((pick_up) order).getPickup_time();
            }
        }
       return sym;

    }
}
