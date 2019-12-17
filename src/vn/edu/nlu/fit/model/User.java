package vn.edu.nlu.fit.model;

import java.util.Date;

public class User {
    private String userName;
    private String password;
    private String name;
    private String phone;
    private String image;
    private Date dob;
    private int gentle;

    public User() {
    }

    public User(String userName, String password, String name, String phone, String image, Date dob, int gentle) {
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.image = image;
        this.dob = dob;
        this.gentle = gentle;
    }

    public User(String userName, String password, String phone) {
        this.userName = userName;
        this.password = password;
        this.phone = phone;
    }
}
