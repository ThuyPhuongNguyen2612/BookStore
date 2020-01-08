package vn.edu.nlu.fit.model;

import java.util.Date;

public class Order {
    private int orderID;
    private int userID;
    private String address;
    private String payment;
    private Date date;
    private String phone;
    private String name;
    private String status;
    private Cart cart;

    public Order(int userID, Cart cart) {
        this.userID = userID;
        this.cart = cart;
    }

    public Order(int orderID, int userID, String address, String payment, Date date, String phone, String name, String status) {
        this.orderID = orderID;
        this.userID = userID;
        this.address = address;
        this.payment = payment;
        this.date = date;
        this.phone = phone;
        this.name = name;
        this.status = status;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getOrderID() {
        return orderID;
    }

    public int getUserID() {
        return userID;
    }

    public String getAddress() {
        return address;
    }

    public String getPayment() {
        return payment;
    }

    public Date getDate() {
        return date;
    }

    public String getPhone() {
        return phone;
    }

    public String getName() {
        return name;
    }

    public String getStatus() {
        return status;
    }

    public Cart getCart() {
        return cart;
    }
}
