package Main;

import static Main.MyConnection.con;
import static java.lang.System.out;
import java.sql.*;
import static java.sql.Date.valueOf;
import java.time.LocalDate;
import static java.time.LocalDate.now;
import java.util.List;

public class Post {

    private int id;
    private int numberOfLikes;
    private String content;
    private Date date;
    private int relatedToQuestion;
    private String fromUsername;

    private Connection con;

    public Post() {
        con = con();
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setFromUsername(String fromUsername) {
        this.fromUsername = fromUsername;
    }

    public void setNumberOfLikes(int numberOfLikes) {
        this.numberOfLikes = numberOfLikes;
    }

    public void setRelatedToQuestion(int relatedToQuestion) {
        this.relatedToQuestion = relatedToQuestion;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public Date getDate() {
        return date;
    }

    public String getFromUsername() {
        return fromUsername;
    }

    public int getNumberOfLikes(int postId) {
        var query = "select number_of_likes from answers where a_id = ? ;";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);

            ps.setInt(1, postId);
           return numberOfLikes =  ps.executeQuery().getInt(1);
        } catch (SQLException ex) {
            out.println(ex.getMessage());
        }
        return 0;
    }

    public int getId() {
        return id;
    }

    public int getRelatedToQuestion() {
        return relatedToQuestion;
    }

    public Boolean insertNewAnswer() {
        PreparedStatement ps;

        var query = "insert into answers(a_date,a_from_username,a_content,a_to_q_id,number_of_likes) VALUES (?,?,?,?,?);";
        try {
            ps = con.prepareStatement(query);

            ps.setDate(1, date);
            ps.setString(2, fromUsername);
            ps.setString(3, content);
            ps.setInt(4, relatedToQuestion);
            ps.setInt(5, numberOfLikes);
            return ps.execute();
        } catch (SQLException ex) {
            return false;
        }
    }

    public void insertNewPost() {
        var followers = new User(fromUsername).followers;
        PreparedStatement ps;

        for (var follower : followers) {
            var query = "insert into new_posts(post_to_username,post_date,post_id,post_from_username) VALUES (?,?,?,?);";
            try {
                ps = con.prepareStatement(query);

                ps.setString(1, follower);
                ps.setDate(2, date);
                ps.setInt(3, id);
                ps.setString(4, fromUsername);

                ps.execute();
            } catch (SQLException ex) {
                out.println(ex.getMessage());
            }
        }
    }

    public void addLike(int postId, String username) {
        PreparedStatement ps;

        var query = "update answers set number_of_likes = ? where a_id = ? ;";
        try {
            ps = con.prepareStatement(query);

            ps.setInt(1, getNumberOfLikes(postId)+1);
            ps.setInt(2, postId);

            ps.execute();
        } catch (SQLException ex) {
            out.println(ex.getMessage());
        }
        query = "insert into post_likes (post_id,post_from_username,like_date) values (?,?,?);";
        try {
            ps = con.prepareStatement(query);

            ps.setInt(1, postId);
            ps.setString(2, username);
            ps.setDate(3, valueOf(now()));

            ps.execute();
        } catch (SQLException ex) {
            out.println(ex.getMessage());
        }
    }
}
