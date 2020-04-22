package Main;

import java.sql.*;

public class Login {

    public static Boolean checkUsername(String username) {

        var query = "select * from users where username = ?;";
        try {
            PreparedStatement ps;
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

        var query = "select password from users where username = ? and password = ?;";
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
