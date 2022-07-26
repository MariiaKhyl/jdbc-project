package com.cydeo.jdbctests.day01;

import java.sql.*;

public class P01_JDBCIntro {
    public static void main(String[] args) throws SQLException {

        String dbUrl = "jdbc:oracle:thin:@54.87.148.147:1521:XE";
        String dbPassword = "hr";
        String dbUsername = "hr";

        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement();

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name

        ResultSet rs = statement.executeQuery("select * from regions");

        while (rs.next()){

            System.out.println(rs.getInt(1) +" - "+ rs.getString(2));

        }


        // close connection
        rs.close();
        statement.close();
        conn.close();

    }

}
