package vn.edu.nlu.fit.model;

import java.util.HashMap;

public class Cart {
    private HashMap<Book, Integer> books;

    public Cart() {
        books = new HashMap<>();
    }

    public void add(Book book) {
        books.put(book, books.getOrDefault(book, 0) + 1);
    }

    public int getNumberOfBookTitles() {
        return books.size();
    }

    public double getPrice() {
        return books.entrySet().stream()
            .mapToInt(bookEntry -> bookEntry.getKey().getPrice() * bookEntry.getValue())
            .sum();
    }

    public double getDiscount() {
        return 0;
    }

    public double getDeliveryPrice() {
        if(getPrice() > 0) return 20;
        return 0;
    }

    public double getTotal() {
        return getPrice() - getDiscount() + getDeliveryPrice();
    }

    public HashMap<Book, Integer> getBooks() {
        return books;
    }

    public void removeAll(Book book) {
        books.remove(book);
    }

    public void removeOne(Book book) {
        if (books.getOrDefault(book, 0) >= 2) {
            books.put(book, books.getOrDefault(book, 0) - 1);
        }
    }

    public boolean isEmpty(){
        return books.size()==0;
    }
}
