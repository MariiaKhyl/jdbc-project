package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnections {
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


        /*

        How to run query?
        - Choose query
        - CMD+ENTER or CTRLÊNTER
        - Choose session

         */

        //next() --> move to cursor in next line
        //true if the new current row is valid; false if there are no more rows
        //rs.next();

        /*
         getInt( index ) will return Int if we have Int value in that column
            - index starts from 1 with SQL tables

         getInt(columnLabel)

         */
        // 1
        //System.out.println(rs.getInt(1));
        //System.out.println(rs.getInt("REGION_ID"));

        // get me region name
        //System.out.println(rs.getString(2));
        //System.out.println(rs.getString("REGION_NAME"));


        //move to the 2 row
        //rs.next();

        // 2 - Americas
        //System.out.println(rs.getInt("REGION_ID")+" - "+rs.getString("REGION_NAME"));

        //move to the 3 row
        //rs.next();

        // 3 - Asia
        //System.out.println(rs.getInt("REGION_ID")+" - "+rs.getString("REGION_NAME"));

        //move to the 4 row
        //rs.next();

        // 4 - Middle East and Africa
        //System.out.println(rs.getInt("REGION_ID")+" - "+rs.getString("REGION_NAME"));




        while(rs.next()){
            System.out.println(rs.getInt("REGION_ID")+" - "+rs.getString("REGION_NAME"));
        }

        // close connection
        rs.close();
        statement.close();
        conn.close();

    }
}
