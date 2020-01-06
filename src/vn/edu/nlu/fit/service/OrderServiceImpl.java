package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderServiceImpl implements OrderService{
    Connection connection;

    public OrderServiceImpl() {
        this.connection = DBConnect.getConnection();
    }

    @Override
    public List getAllOrders() throws SQLException {
        List list = new ArrayList();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM order");
        ResultSet resultSet = ps.executeQuery();
        while (resultSet.next()){

        }
        return null;
    }

    public Order createOrderObject(ResultSet rs){

        return new Order();
    }
}
