package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.Book;

import java.sql.SQLException;
import java.util.List;

public interface BookService {
    public List<Book> getBooks() throws SQLException;
    public List<Book> getBooksWithType(int type) throws SQLException;
    public List<Book> getBooksWithPage(int page) throws SQLException;
    public List<Book> getBooksWithPageType(int type, int page) throws SQLException;
    public List<Book> getNewBook() throws SQLException;
    public List<Book> getHighlightedBook() throws SQLException;
    public List<Book> getRandomBook() throws SQLException;
    public Book getBook(int bookID) throws SQLException;
}
