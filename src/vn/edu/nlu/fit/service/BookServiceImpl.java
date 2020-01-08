package vn.edu.nlu.fit.service;

import sun.security.pkcs11.Secmod;
import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.database.GPDataSource;
import vn.edu.nlu.fit.model.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookServiceImpl implements BookService {
    Connection connection;

    private Book createBookObject(ResultSet rs) throws SQLException {
        return new Book(rs.getInt("bookID"),
            rs.getString("name"),
            rs.getString("author"),
            rs.getString("image"),
            rs.getInt("price"),
            rs.getString("description"),
            rs.getString("details"),
            rs.getInt("quantity"),
            rs.getInt("page"),
            rs.getInt("published"));
    }

    @Override
    public List<Book> getBooks() throws SQLException {
        ResultSet rs = getResultSet("SELECT * FROM book WHERE active = 1");
        return getBooks(rs);
    }


    @Override
    public List<Book> getBooksWithType(int type) throws SQLException {
        ResultSet rs = getResultSet("SELECT * FROM book WHERE categoryID=" + type + " and active = 1");
        return getBooks(rs);
    }

    @Override
    public List<Book> getBooksWithPage(int page) throws SQLException {
        ResultSet rs = getResultSet("SELECT * FROM book WHERE active = 1 LIMIT (page-1)*9,9");
        return getBooks(rs);
    }

    @Override
    public List<Book> getBooksWithPageType(int type, int page) throws SQLException {
        ResultSet rs = getResultSet("SELECT * FROM book WHERE categoryID=" + type + " and active = 1 LIMIT " + (page - 1) * 9 + ",9");
        return getBooks(rs);
    }

    @Override
    public List<Book> getNewBook() throws SQLException {
        ResultSet rs = getResultSet("SELECT * FROM book WHERE active = 1 and new=1");
        return getBooks(rs);
    }

    @Override
    public List<Book> getHighlightedBook() throws SQLException {
        ResultSet rs = getResultSet("SELECT * FROM book WHERE active = 1 and highlight=1");
        return getBooks(rs);
    }

    @Override
    public List<Book> getRandomBook() throws SQLException {
        ResultSet rs = getResultSet("SELECT * FROM book WHERE active=1 ORDER BY RAND() LIMIT 4");
        List<Book> list = new ArrayList<>(4);
        while (rs.next()) {
            list.add(createBookObject(rs));
        }
        return list;
    }

    @Override
    public Book getBook(int bookID) throws SQLException {
        ResultSet rs = getResultSet("SELECT * FROM book WHERE active=1 and bookID=" + bookID);
        Book book = null;
        rs.last();
        if (rs.getRow() == 1) {
            rs.first();
            book = createBookObject(rs);
        }
        return book;
    }

    private List<Book> getBooks(ResultSet rs) throws SQLException {
        List<Book> list = new ArrayList<>();
        while (rs.next()) {
            list.add(createBookObject(rs));
        }
        return list;
    }

    private ResultSet getResultSet(String sqlStatement) throws SQLException {
        connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement(sqlStatement);
        return ps.executeQuery();
    }
}
