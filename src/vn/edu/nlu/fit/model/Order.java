package vn.edu.nlu.fit.model;

import java.util.Date;

public class Order {
    private int orderID;
    private int userID;
    private int addressID;
    private int paymentID;
    private Date date;
    private String phone;
    private int status;
    private String note;
    private Cart cart;

    public Order() {
    }
}
