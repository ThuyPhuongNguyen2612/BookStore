package vn.edu.nlu.fit.model;

public class Book {
    private int bookID;
    private String title;
    private String author;
    private String image;
    private int price;
    private String description;
    private String detail;

    public Book(int bookID, String title, String author, String image, int price, String description, String detail) {
        this.bookID = bookID;
        this.title = title;
        this.author = author;
        this.image = image;
        this.price = price;
        this.description = description;
        this.detail = detail;
    }

    public int getBookID() {
        return bookID;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public String getImage() {
        return image;
    }

    public int getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }

    public String getDetail() {
        return detail;
    }
}
