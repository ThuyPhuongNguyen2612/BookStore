package vn.edu.nlu.fit.model;

import java.util.Date;

public class Comment {
    private int commentID;
    private int productID;
    private int userID;
    private String userName;
    private Date date;
    private String content;

    public Comment(int commentID, int productID, int userID, String userName, Date date, String content) {
        this.commentID = commentID;
        this.productID = productID;
        this.userID = userID;
        this.userName = userName;
        this.date = date;
        this.content = content;
    }

    public int getUserID() {
        return userID;
    }

    public String getContent() {
        return content;
    }

    public String getUserName() {
        return userName;
    }

    public int getCommentID() {
        return commentID;
    }

    public int getProductID() {
        return productID;
    }

    public Date getDate() {
        return date;
    }
}
