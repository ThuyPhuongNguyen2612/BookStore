package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.GPDataSource;
import vn.edu.nlu.fit.model.Book;
import vn.edu.nlu.fit.model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderServiceImpl implements OrderService {

    @Override
    public void addOrder(Order order) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("INSERT INTO order VALUES (?,?,?,CURRENT_TIMESTAMP,?,?,'new')");
        ps.setInt(1, order.getUserID());
        ps.setString(2, order.getAddress());
        ps.setString(3, order.getPayment());
        ps.setString(4, order.getPhone());
        ps.setString(5, order.getName());
        ps.executeUpdate();
        PreparedStatement ps1 = connection.prepareStatement("SELECT orderID FROM order WHERE userID=? and address=? and payment=? and phone=? and name=?");
        ps1.setInt(1, order.getUserID());
        ps1.setString(2, order.getAddress());
        ps1.setString(3, order.getPayment());
        ps1.setString(4, order.getPhone());
        ps1.setString(5, order.getName());
        ResultSet rs = ps1.executeQuery();
        int orderID = 1;
        if (rs.next()){
            orderID = rs.getInt("orderID");
        }
        HashMap<Book, Integer> books = order.getCart().getBooks();
        for (Map.Entry<Book, Integer> bookAndQuantity : books.entrySet()) {
            PreparedStatement ps2 = connection.prepareStatement("INSERT INTO order_detail VALUES (?,?,?)");
            ps2.setInt(1, orderID);
            ps2.setInt(2, bookAndQuantity.getKey().getBookID());
            ps2.setInt(3, bookAndQuantity.getValue());
            ps2.executeUpdate();
        }
    }

    @Override
    public List getAllOrders() throws SQLException {
        Connection connection = GPDataSource.getConnection();
        List list = new ArrayList();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM `order`");
        ResultSet resultSet = ps.executeQuery();
        while (resultSet.next()) {
            list.add(createOrderObject(resultSet));
        }
        return list;
    }

    public Order createOrderObject(ResultSet rs) throws SQLException {
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
