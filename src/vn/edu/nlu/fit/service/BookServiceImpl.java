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

    public Book createBook(ResultSet rs) throws SQLException{
        Book book = new Book(rs.getString("name"),
                                rs.getString("author"),
                                rs.getString("image"),
                                rs.getInt("price"));
        return book;
    }

    @Override
    public List<Book> getBooks() {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE active = 1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(createBook(rs));
            }
            connection.close();
        } catch (SQLException e){
            e.getStackTrace();
        }
        return list;
    }

    @Override
    public List<Book> getBooksWithType(int type) {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE type="+type+" and active = 1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(createBook(rs));
            }
            connection.close();
        } catch (SQLException e){
            e.getStackTrace();
        }
        return list;
    }

    @Override
    public List<Book> getBooksWithPage(int page) {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE page="+page+" and active = 1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(createBook(rs));
            }
            connection.close();
        } catch (SQLException e){
            e.getStackTrace();
        }
        return list;
    }

    @Override
    public List<Book> getBooksWithPageType(int type, int page) {
        Connection connection = DBConnect.getConnection();
        List<Book> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM book WHERE type="+type+" page="+page+" and active = 1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(createBook(rs));
            }
            connection.close();
        } catch (SQLException e){
            e.getStackTrace();
        }
        return list;
    }

    @Override
    public ArrayList<Book> getNewBook() {
        return null;
    }

    @Override
    public ArrayList<Book> getHighlightedBook() {
        return null;
    }

    @Override
    public ArrayList<Book> getRandomBook() {
        return null;
    }
}
