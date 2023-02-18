package com.codegym.model.dao;

import com.codegym.connection.JdbcConnection;
import com.codegym.model.entity.Computer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ComputerDao implements IComputerDao {
    Connection connection;
    @Override
    public boolean insertComputer(Computer computer) throws SQLException {
    String sql = "INSERT INTO computers (com_brand, com_price, com_ram, com_detail) VALUES (?, ?, ?, ?)";
        connection = JdbcConnection.connect();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, computer.getBrand() );
        statement.setFloat(2, computer.getPrice());
        statement.setFloat(3, computer.getRam());
        statement.setString(4, computer.getDetail());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        connection.close();
        return rowInserted;

    }
    @Override
    public List<Computer> listAllComputers() throws SQLException {
        List<Computer> listBook = new ArrayList<>();
        connection = JdbcConnection.connect();
        String sql = "SELECT * FROM computers";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
            int id = resultSet.getInt("com_id");
            String brand = resultSet.getString("com_brand");
            Float price = resultSet.getFloat("com_price");
            float ram = resultSet.getFloat("com_ram");
            String detail = resultSet.getString("com_detail");
            Computer computer = new Computer(id, brand, price, ram, detail);
            listBook.add(computer);
        }
        resultSet.close();
        statement.close();
        connection.close();
        return listBook;
    }
    @Override
    public boolean deleteComputer(int id) throws SQLException {
        String sql = "DELETE FROM computers where com_id = ?";
        connection = JdbcConnection.connect();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);

        boolean rowDeleted = statement.executeUpdate() > 0;
        statement.close();
        connection.close();
        return rowDeleted;
    }
    @Override
    public boolean updateComputer(int id, Computer computer) throws SQLException {
        String sql = "UPDATE computers SET com_brand = ?, com_price = ?, com_ram = ?, com_detail = ? WHERE com_id = ?";
//        sql += " WHERE com_id = ?";
        connection = JdbcConnection.connect();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, computer.getBrand());
        statement.setFloat(2, computer.getPrice());
        statement.setFloat(3, computer.getRam());
        statement.setString(4, computer.getDetail());
        statement.setInt(5, id);

        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        connection.close();
        return rowUpdated;
    }
    @Override
    public Computer getComputer(int id) throws SQLException {
        Computer computer = null;
        String sql = "SELECT * FROM computers WHERE com_id = ?";
        connection = JdbcConnection.connect();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);
        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
            int id1 = resultSet.getInt("com_id");
            String brand = resultSet.getString("com_brand");
            Float price = resultSet.getFloat("com_price");
            float ram = resultSet.getFloat("com_ram");
            String detail = resultSet.getString("com_detail");
            computer = new Computer(id1, brand, price, ram, detail);
        }
        resultSet.close();
        statement.close();
        connection.close();
        return computer;
    }
}
