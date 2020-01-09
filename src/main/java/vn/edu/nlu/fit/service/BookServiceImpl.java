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
            rs.getInt("categoryID"),
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
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1");
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        return getBooks(rs);
    }


    @Override
    public List<Book> getBooksWithType(int type) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE categoryID=" + type + " and active = 1");
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        return getBooks(rs);

    }

    @Override
    public List<Book> getBooksWithPage(int page) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1 LIMIT " + (page - 1) * 20 + ",20");
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        return getBooks(rs);

    }

    @Override
    public List<Book> getBooksWithPageType(int type, int page) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE categoryID=" + type + " and active = 1 LIMIT " + (page - 1) * 9 + ",9");
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        return getBooks(rs);

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
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active=1 ORDER BY RAND() LIMIT 4");
        ResultSet rs = ps.executeQuery();
        List<Book> list = new ArrayList<>(4);
        while (rs.next()) {
            list.add(createBookObject(rs));
        }
        GPDataSource.releaseConnection(connection);
        return list;

    }

    @Override
    public Book getBook(int bookID) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active=1 and bookID=" + bookID);
        ResultSet rs = ps.executeQuery();
        Book book = null;
        rs.last();
        if (rs.getRow() == 1) {
            rs.first();
            book = createBookObject(rs);
        }
        GPDataSource.releaseConnection(connection);
        return book;

    }

    @Override
    public int removeBook(int bookId) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM book WHERE bookID=?");
        preparedStatement.setInt(1, bookId);
        preparedStatement.executeUpdate();
        GPDataSource.releaseConnection(connection);
        return preparedStatement.executeUpdate();
    }

    @Override
    public int addBook(String name, String image, String author, String price, String amount, String category, String description) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("INSERT INTO book (`name`,image,quantity,active) VALUES(?,?,?,1)");
        ps.setString(1, name);
        ps.setString(2, image);
        ps.setString(3, amount);
        GPDataSource.releaseConnection(connection);
        return ps.executeUpdate();
    }

    private List<Book> getBooks(ResultSet rs) throws SQLException {
        List<Book> list = new ArrayList<>();
        while (rs.next()) {
            list.add(createBookObject(rs));
        }
        return list;
    }

}
