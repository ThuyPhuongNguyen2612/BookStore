package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.Book;

import java.util.List;

public interface BookService {
    public List<Book> getBooks();
    public List<Book> getBooksWithType(int type);
    public List<Book> getBooksWithPage(int page);
    public List<Book> getBooksWithPageType(int type, int page);
    public List<Book> getNewBook();
    public List<Book> getHighlightedBook();
    public List<Book> getRandomBook();
}
