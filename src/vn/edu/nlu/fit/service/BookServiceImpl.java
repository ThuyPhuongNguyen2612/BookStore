package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookServiceImpl implements BookService {

    public Book createBook(ResultSet rs) throws SQLException {
        Book book = new Book(rs.getInt("bookID"),
                rs.getString("name"),
                rs.getString("author"),
                rs.getString("image"),
                rs.getInt("price"),
                rs.getString("description"),
                rs.getString("details"));
        return book;
    }

    @Override
    public List<Book> getBooks() throws SQLException {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(createBook(rs));
        }
        return list;
    }

    @Override
    public List<Book> getBooksWithType(int type) throws SQLException {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE categoryID=" + type + " and active = 1");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(createBook(rs));
        }
        return list;
    }

    @Override
    public List<Book> getBooksWithPage(int page) throws SQLException {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1 LIMIT (page-1)*9,9");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(createBook(rs));
        }
        return list;
    }

    @Override
    public List<Book> getBooksWithPageType(int type, int page) throws SQLException {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        int startLimit = (page-1)*9;
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE categoryID=" + type + " and active = 1 LIMIT "+startLimit+",9");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(createBook(rs));
        }
        return list;
    }

    @Override
    public List<Book> getNewBook() throws SQLException {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1 and new=1");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(createBook(rs));
        }
        return list;
}

    @Override
    public List<Book> getHighlightedBook() throws SQLException {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1 and highlight=1");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(createBook(rs));
        }
        return list;
    }

    @Override
    public List<Book> getRandomBook() throws SQLException {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>(4);
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active=1 ORDER BY RAND() LIMIT 4");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(createBook(rs));
        }
        return list;
    }

    @Override
    public Book getBook(int bookID) throws SQLException {
        Connection connection = DBConnect.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active=1 and bookID=?");
        ps.setInt(1,bookID);
        ResultSet rs = ps.executeQuery();
        Book book = null;
        rs.last();
        if (rs.getRow()==1){
            rs.first();
            book = createBook(rs);
        }
        return book;
    }
}
