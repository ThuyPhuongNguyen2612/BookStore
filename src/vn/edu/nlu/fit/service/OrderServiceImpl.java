package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.database.GPDataSource;
import vn.edu.nlu.fit.model.Book;
import vn.edu.nlu.fit.model.Cart;
import vn.edu.nlu.fit.model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderServiceImpl implements OrderService{
    Connection connection;

    @Override
    public void addOrder(Order order) throws SQLException {
        connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("INSERT INTO order VALUES (?,?,?,CURRENT_TIMESTAMP,?,?,'new')");
        ps.setInt(1,order.getUserID());
        ps.setString(2,order.getAddress());
        ps.setString(3,order.getPayment());
        ps.setString(4,order.getPhone());
        ps.setString(5, order.getName());
        ps.executeUpdate();
        HashMap<Book, Integer> books = order.getCart().getBooks();
        for (Map.Entry<Book, Integer> bookAndQuantity : books.entrySet()) {
            PreparedStatement ps1 = connection.prepareStatement("INSERT INTO order_detail VALUES ()");
        }
    }

    @Override
    public List getAllOrders() throws SQLException {
        connection = GPDataSource.getConnection();
        List list = new ArrayList();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM order");
        ResultSet resultSet = ps.executeQuery();
        while (resultSet.next()){

        }
        GPDataSource.releaseConnection(connection);
        return list;
    }

    public Order createOrderObject(ResultSet rs) throws SQLException{
        return new Order(rs.getInt("orderID"),
                rs.getInt("userID"),
                rs.getString("address"),
                rs.getString("payment"),
                rs.getDate("date"),
                rs.getString("phone"),
                rs.getString("name"),
                rs.getString("status"));
    }
}
