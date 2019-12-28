package vn.edu.nlu.fit.model;

import java.util.Date;

public class User {
    private int userID;
    private String userName;
    private String password;
    private String name;
    private String phone;
    private String image;
    private Date dob;
    private int gentle;
    private int group;

    public User() {
    }

    public User(int userID, String userName, String password, String name, String phone, String image, Date dob, int gentle, int group) {
        this.userID = userID;
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.image = image;
        this.dob = dob;
        this.gentle = gentle;
        this.group = group;
    }

    public User(String userName, String password, String phone) {
        this.userName = userName;
        this.password = password;
        this.phone = phone;
    }

    public int getUserID() {
        return userID;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public String getPhone() {
        return phone;
    }

    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public Date getDob() {
        return dob;
    }

    public int getGentle() {
        return gentle;
    }

    public int getGroup() {
        return group;
    }
}
