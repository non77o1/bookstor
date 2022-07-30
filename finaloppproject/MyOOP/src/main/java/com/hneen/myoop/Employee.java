package com.hneen.myoop;

import java.io.*;
import java.nio.file.*;
import java.time.*;
import java.util.*;


public class Employee extends Person implements Serializable {
    double salary;
    java.sql.Date payment_date;

    public Employee() {

    }

    public Employee(int id, String name, String email, String address, double salary, java.sql.Date payment_date) {
        super(id, name, email, address);
        this.salary = salary;
        this.payment_date = payment_date;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public java.sql.Date getPayment_date() {
        return payment_date;
    }

    public void setPayment_date(java.sql.Date payment_date) {
        this.payment_date = payment_date;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", Email='" + Email + '\'' +
                ", Address='" + Address + '\'' +
                ", salary=" + salary +
                ", payment_date=" + payment_date +
                '}';
    }

//to write
    ObjectOutputStream output;
 public void openFile(){
        try {
         output=new ObjectOutputStream(Files.newOutputStream(Paths.get("employeeSer.ser")));
        } catch (IOException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }
     List<Employee> em =new ArrayList<Employee>();
    public void addRecord(){
        LocalDate today =  LocalDate.now();             //Today
        LocalDate PayDate = today.plusDays(20);
        java.sql.Date d = java.sql.Date.valueOf( PayDate ) ;
        em.add(new Employee(0,"ali","ali55@gmail.com","Dammam",6700.0,d));
        em.add(new Employee(0,"omar","omar88@gmail.com","Khobar",5700.0,d));
        em.add(new Employee(0,"khalid","khalid99@gmail.com","Jeddah",4700.0,d));
        em.add(new Employee(0,"mohammed","mohammed77@gmail.com","Medina",7700.0,d));

        for (Employee e:em){
            try {
                output.writeObject(e);
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
    }

   public void close(){
        try {
            if (output!=null){
                output.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //to read
    ObjectInputStream input;
 public    void openToGet(){
        try {
            input=new ObjectInputStream(Files.newInputStream(Paths.get("employeeSer.ser"))) ;
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

   public List<Employee> readData(){
        List<Employee> rem =new ArrayList<Employee>();
        try {
            while (true){
                Employee e= (Employee) input.readObject();
                rem.add(e);
            }
        } catch (EOFException e){
            System.out.println("no more file");
        }catch (ClassCastException e){
            e.printStackTrace();
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return rem;
    }

    public void closeFile(){
        try {
            if (input!=null){
                input.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
