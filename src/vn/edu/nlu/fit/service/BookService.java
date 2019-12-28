package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.Book;

import java.sql.SQLException;
import java.util.List;

public interface BookService {
    List<Book> getBooks() throws SQLException;

    List<Book> getBooksWithType(int type) throws SQLException;

    List<Book> getBooksWithPage(int page) throws SQLException;

    List<Book> getBooksWithPageType(int type, int page) throws SQLException;

    List<Book> getNewBook() throws SQLException;

    List<Book> getHighlightedBook() throws SQLException;

    List<Book> getRandomBook() throws SQLException;

    Book getBook(int bookID) throws SQLException;
}
