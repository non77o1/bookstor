package com.hneen.myoop;

import java.sql.*;
import java.sql.DriverManager;

public class DB {
static String URL="jdbc:mysql://localhost:3306/sunshine";
static String pass="770911";
static String user="root";
    public static Connection connectDB(){
        try {
            Connection connection = DriverManager.getConnection(URL,user,pass);
            return connection;

        }
        catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
