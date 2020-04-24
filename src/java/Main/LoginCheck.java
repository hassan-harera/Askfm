package Main;

import java.sql.*;


public class LoginCheck {

    public static Boolean checkUsername(String username) {
        PreparedStatement ps;

        var query = "select * from users where username = ?;";
        try {
            ps = MyConnection.con().prepareStatement(query);

            ps.setString(1, username);
            if (ps.executeQuery().next()) {
                return true;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }

    public static Boolean checkPassword(String username, String password) {
        PreparedStatement ps;

        var query = "select username from users where username = ? and password = ?;";
        try {
            ps = MyConnection.con().prepareStatement(query);

            ps.setString(1, username);
            ps.setString(2, password);
            if (ps.executeQuery().next()) {
                return true;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }

}