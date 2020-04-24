package Main;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.*;

public class Signup {

    public static Boolean checkUsername(String username) {

        var query = "select username from users where username = ?;";
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

    public static Boolean insertNewUser(String username, String password, String gender, String answer, String name, String date) {
        PreparedStatement ps;

        System.out.println(username + " " + date + " " + answer + " " + date + " " + gender + "  " + password + " " + name);

        var query = "insert into users(username,password,security_answer,num_of_posts,num_of_followings,num_of_loves,bio,profile_picture,can_anon,sex,num_of_followers,name,birthdate) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try {
            ps = MyConnection.con().prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, answer);
            ps.setInt(4, 0);
            ps.setInt(5, 0);
            ps.setInt(6, 0);
            ps.setString(7, "I'm using Askfm");
            FileInputStream inputStream = null;
            if (gender.equals("male")) {
                var image = new File("D:\\Projects\\Askfm\\man.png");
                inputStream = new FileInputStream(image);
            } else {
                var image = new File("D:\\Projects\\Askfm\\woman.png");
                inputStream = new FileInputStream(image);
            }
            ps.setBinaryStream(8, (InputStream) inputStream);
            ps.setBoolean(9, true);
            ps.setString(10, gender);
            ps.setInt(11, 0);
            ps.setString(12, name);
            ps.setString(13, date);
            return !ps.execute();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (FileNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }
}
