package Main;

import static Main.MyConnection.con;
import java.awt.Image;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import static java.lang.System.out;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import static java.util.logging.Level.SEVERE;
import java.util.logging.Logger;
import static java.util.logging.Logger.getLogger;
import javax.swing.ImageIcon;

public class User {

    private String username = "";
    private String name = "";
    private Date dateOfBirth;
    private int numOfFollowers;
    private int numOfPosts;
    private int numOfLoves;
    private int numOfFollowings;
    private String Gender ;
    private String bio;
    private Boolean letAnon;
    private Image profilePicture;
    private String password = "";
    private String securityAnswer;
    private Connection con;

    List<String> followers;

    public User(String username, String name, Date dateOfBirth, String Gender, String password, String securityAnswer) {
        this.username = username;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.Gender = Gender;
        this.password = password;
        this.securityAnswer = securityAnswer;
        this.con = con();
    }

    public User() {
        con = con();
        letAnon = true;
        followers = new ArrayList<>();
    }

    public User(String username) {
        followers = new ArrayList<>();
        this.username = username;
        con = con();
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setSecurityAnswer(String securityAnswer) {
        this.securityAnswer = securityAnswer;
    }

    public String getPassword() {
        return password;
    }

    public String getSecurityAnswer() {
        return securityAnswer;
    }

    public String getUsername() {
        return username;
    }

    public String getBio() {
        return bio;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setLetAnon(Boolean letAnon) {
        this.letAnon = letAnon;
    }

    public Boolean getLetAnon() {
        return letAnon;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNumOfFollowings(int numOfFollowings) {
        this.numOfFollowings = numOfFollowings;
    }

    public void setNumOfFollowers(int numOfFollowers) {
        this.numOfFollowers = numOfFollowers;
    }

    public void setNumOfLoves(int numOfLoves) {
        this.numOfLoves = numOfLoves;
    }

    public void setNumOfPosts(int numOfPosts) {
        this.numOfPosts = numOfPosts;
    }

    public void setProfilePicture(Image profilePicture) {
        this.profilePicture = profilePicture;
    }

    public String getName() {
        return name;
    }

//    public String getName() {
//        if (name != null) {
//            return username;
//        }
//        PreparedStatement ps;
//
//        String query = "select name from users wherer username = ?";
//        try {
//            ps = con.prepareStatement(query);
//            ps.setString(1, username);
//
//            return name = ps.executeQuery().getString(1);
//        } catch (SQLException ex) {
//            return null;
//        }
//    }
    public int getNumOfFollowings() {
        return numOfFollowings;
    }

    public int getNumOfLoves() {
        return numOfLoves;
    }

    public void setFollowers(List<String> followers) {
        this.followers = followers;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public int getNumOfFollowers() {
        return numOfFollowers;
    }

    public String getGender() {
        return Gender;
    }

    public int getNumOfPosts() {
        return numOfPosts;
    }

    public Image getProfilePicture() {
        return profilePicture;
    }

//    public Boolean insertUser() {
//        PreparedStatement ps;
//
//        String query = "insert into users(username,password,security_answer) VALUES (?,?,?);";
//        try {
//            ps = con.prepareStatement(query);
//
//            ps.setString(1, username);
//            ps.setString(2, password);
//            ps.setString(3, securityAnswer);
//
//            return ps.execute();
//        } catch (SQLException ex) {
//            return false;
//        }
//    }
    private Boolean insertNewUser() {
        PreparedStatement ps;
        var query = "insert into users(username,name,birthdate,num_of_followers,num_of_followings,num_of_loves,num_of_posts,bio,profile_picture,can_anon) VALUES (?,?,?);";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, securityAnswer);
            ps.setInt(4, 0);
            ps.setInt(5, 0);
            ps.setInt(6, 0);
            ps.setString(7, "I'm using Askfm");
            FileInputStream inputStream = null;
            if (Gender.equals("male")) {
                var image = new File("D:\\Projects\\Askfm\\man.png");
                inputStream = new FileInputStream(image);
            } else {
                var image = new File("D:\\Projects\\Askfm\\woman.png");
                inputStream = new FileInputStream(image);
            }
            ps.setBinaryStream(8, (InputStream) inputStream);
            ps.setBoolean(9, true);
            ps.setString(10, Gender);
            ps.setInt(11, 0);
            ps.setDate(12, dateOfBirth);
            ps.setString(13, name);
            return ps.execute();
        } catch (SQLException ex) {
            return false;
        } catch (FileNotFoundException ex) {
            getLogger(User.class.getName()).log(SEVERE, null, ex);
            return false;
        }
    }

    public Boolean getFollowers() {
        PreparedStatement ps;

        var query = "select username_f from following wherer (f_username = ?)";
        try {
            ps = con.prepareStatement(query);

            ps.setString(1, username);

            var rs = ps.executeQuery();
            for (var i = 0; rs.next(); i++) {
                followers.add(rs.getString(i));
            }
            return true;
        } catch (SQLException ex) {
            return false;
        }
    }

    public void signup(String username, String name, Date dateOfBirth, String Gender, String password, String securityAnswer) {
        this.username = username;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.Gender = Gender;
        this.password = password;
        this.securityAnswer = securityAnswer;

//        if (!checkUsername(username)) {

//        }

    }

    public Boolean login(String username, String password) {
        this.username = username;
        this.password = password;

//        if (!checkUsername(username)) {
            return false;
//        } else if (!checkPassword(username, password)) {
//            return false;
//        }
//        succesfullLogedin();
//        return true;
    }

    public void signUp() {
        insertNewUser();
    }

    private void succesfullLogedin() {
        getUserInfo();
    }

    private void getUserInfo() {
        PreparedStatement ps;

        var query = "select * from users wherer username = ?";
        try {
            ps = con.prepareStatement(query);

            ps.setString(1, username);

            var rs = ps.executeQuery();
            username = rs.getString(1);
            password = rs.getString(2);
            securityAnswer = rs.getString(3);
            numOfPosts = rs.getInt(4);
            numOfFollowings = rs.getInt(5);
            numOfLoves = rs.getInt(6);
            bio = rs.getString(7);
            var im = rs.getBinaryStream(8).readAllBytes();
            var img = new ImageIcon(im);
            profilePicture = img.getImage();
            letAnon = rs.getBoolean(9);
            Gender = rs.getString(10);
            numOfFollowers = rs.getInt(11);
            dateOfBirth = rs.getDate(12);
            name = rs.getString(13);
        } catch (SQLException ex) {
            out.println(ex.getMessage());
        } catch (IOException ex) {
            getLogger(User.class.getName()).log(SEVERE, null, ex);
        }
    }




}
