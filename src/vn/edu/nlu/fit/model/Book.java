package vn.edu.nlu.fit.model;

public class Book {
    private String title;
    private String author;
    private String image;
    private int price;

    public Book(String title, String author, String image, int price) {
        this.title = title;
        this.author = author;
        this.image = image;
        this.price = price;
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
}
