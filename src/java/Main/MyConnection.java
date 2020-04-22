package Main;

import java.sql.*;


public class MyConnection {

    public static Connection con() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/askfm?autoReconnect=true&useSSL=false", "root", "0000");
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
}
