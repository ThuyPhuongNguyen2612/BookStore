package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.GPDataSource;
import vn.edu.nlu.fit.model.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookServiceImpl implements BookService {

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
        try (
                Connection connection = GPDataSource.getConnection();
                PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1");
                ResultSet rs = ps.executeQuery()
        ) {
            GPDataSource.releaseConnection(connection);
            return getBooks(rs);
        }
    }


    @Override
    public List<Book> getBooksWithType(int type) throws SQLException {
        try (
                Connection connection = GPDataSource.getConnection();
                PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE categoryID=" + type + " and active = 1");
                ResultSet rs = ps.executeQuery()
        ) {
            GPDataSource.releaseConnection(connection);
            return getBooks(rs);
        }

    }

    @Override
    public List<Book> getBooksWithPage(int page) throws SQLException {
        try (
                Connection connection = GPDataSource.getConnection();
                PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1 LIMIT (page-1)*9,9");
                ResultSet rs = ps.executeQuery()
        ) {
            GPDataSource.releaseConnection(connection);
            return getBooks(rs);
        }

    }

    @Override
    public List<Book> getBooksWithPageType(int type, int page) throws SQLException {
        try (
                Connection connection = GPDataSource.getConnection();
                PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE categoryID=" + type + " and active = 1 LIMIT " + (page - 1) * 9 + ",9");
                ResultSet rs = ps.executeQuery()
        ) {
            GPDataSource.releaseConnection(connection);
            return getBooks(rs);
        }

    }

    @Override

    public List<Book> getNewBook() throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1 and new=1");
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        return getBooks(rs);

    }

    @Override
    public List<Book> getHighlightedBook() throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1 and highlight=1");
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        return getBooks(rs);
    }

    @Override
    public List<Book> getRandomBook() throws SQLException {
        try (
                Connection connection = GPDataSource.getConnection();
                PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active=1 ORDER BY RAND() LIMIT 4");
                ResultSet rs = ps.executeQuery();

        ) {
            List<Book> list = new ArrayList<>(4);
            while (rs.next()) {
                list.add(createBookObject(rs));
            }
            GPDataSource.releaseConnection(connection);
            return list;
        }

    }

    @Override
    public Book getBook(int bookID) throws SQLException {
        try (
                Connection connection = GPDataSource.getConnection();
                PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active=1 and bookID=" + bookID);
                ResultSet rs = ps.executeQuery()
        ) {
            Book book = null;
            rs.last();
            if (rs.getRow() == 1) {
                rs.first();
                book = createBookObject(rs);
            }
            GPDataSource.releaseConnection(connection);
            return book;
        }

    }

    private List<Book> getBooks(ResultSet rs) throws SQLException {
        List<Book> list = new ArrayList<>();
        while (rs.next()) {
            list.add(createBookObject(rs));
        }
        return list;
    }

}
