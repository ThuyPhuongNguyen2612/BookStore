package vn.edu.nlu.fit.model;

public class OrderDetail {
    private Book book;
    private int quantity;

    public OrderDetail(Book book, int quantity) {
        this.book = book;
        this.quantity = quantity;
    }

    public Book getBook() {
        return book;
    }

    public int getQuantity() {
        return quantity;
    }
}
