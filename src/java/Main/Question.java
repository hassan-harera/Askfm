package Main;

import static Main.MyConnection.con;
import java.sql.*;

public class Question {

    private int id;
    private int numberOfLikes;
    private String content;
    private Date date;
    private int relatedToQuestion;
    private String fromUsername;

    private Connection con;

    public Question() {
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

    public int getNumberOfLikes() {
        return numberOfLikes;
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
}
