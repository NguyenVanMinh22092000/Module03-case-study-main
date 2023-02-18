package com.codegym.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
    private final static String DRIVER;
    private final static String URL;
    private final static String USERNAME;
    private final static String PASSWORD;
    private  static Connection connection;
    static {
        DRIVER  = "com.mysql.jdbc.Driver";
        URL = "jdbc:mysql://localhost:3306/case-study";
        USERNAME = "root";
        PASSWORD = "phanxico12@";
    }

    public JdbcConnection( ) {}
    public static Connection connect() throws SQLException{
        if (connection == null || connection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            connection = DriverManager.getConnection(
                    URL, USERNAME, PASSWORD);
        }
        return connection;
    }

}
