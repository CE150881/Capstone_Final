/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Test;

import Connection.DBConnection;
import Models.Question;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Saing
 */
public class QuestionDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Question> getAllQuestion() {
        List<Question> list = new ArrayList<>();
        String query = "SELECT * FROM `question`;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Question(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4)));
            }
            conn.close();
        } catch (Exception e) {
        }
        return list;
    }

    public Question getLastQuestion() {
        Question a = new Question();
        String query = "SELECT * FROM `question` ORDER BY question.QuestionID DESC LIMIT 1;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Question(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4));
            }
            conn.close();
        } catch (Exception e) {
        }
        return a;
    }

    public List<Question> getByTag(int TagID) {
        List<Question> list = new ArrayList<>();
        String query = "SELECT * FROM `question` WHERE `TagID` = ?;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, TagID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Question(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4)));
            }
            conn.close();
        } catch (Exception e) {
        }
        return list;
    }

    public List<Question> getByLevel(int LevelID) {
        List<Question> list = new ArrayList<>();
        String query = "SELECT * FROM `question` WHERE `LevelID` = ?;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, LevelID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Question(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4)));
            }
            conn.close();
        } catch (Exception e) {
        }
        return list;
    }

    public List<Question> getByLevelandTag(int TagID, int LevelID) {
        List<Question> list = new ArrayList<>();
        String query = "SELECT * FROM `question` WHERE `LevelID` = ? AND `TagID` = ?";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, TagID);
            ps.setInt(2, LevelID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Question(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4)));
            }
            conn.close();
        } catch (Exception e) {
        }
        return list;
    }

    public Question getQuestionByID(int QuestionID) {
        Question a = new Question();
        String query = "SELECT * FROM `question` WHERE `QuestionID` = ?;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, QuestionID);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Question(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4));
            }
            conn.close();
        } catch (Exception e) {
        }
        return a;
    }

    public void insertQuestion(int TagID, int LevelID, String Question) {
        String query = "INSERT INTO `question`(`TagID`, `LevelID`, `Question`) VALUES (?,?,?)";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, TagID);
            ps.setInt(2, LevelID);
            ps.setString(3, Question);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    public void deleteQuestion(int QuestionID) {
        String query = "DELETE FROM `question` WHERE `QuestionID`= ?;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, QuestionID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    public void editQuestion(int QuestionID, int TagID, int LevelID, String Question) {
        String query = "UPDATE `question` SET `TagID`=?,`LevelID`=?,`Question`=? WHERE `QuestionID`= ?;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, TagID);
            ps.setInt(2, LevelID);
            ps.setString(3, Question);
            ps.setInt(4, QuestionID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        QuestionDAO dao = new QuestionDAO();
        List<Question> list = dao.getAllQuestion();

        for (Question o : list) {
            System.out.println("QuestionID: " + o.getQuestionID() + " Question: " + o.getQuestion());
        }
//        Question a = dao.getQuestionByID(4);
//        System.out.println("QuestionID: " + a.getQuestionID() + " Question: " + a.getQuestion());
//        int ID = 5; int QuestionID = 1; String Question = "Lamborghini";
//        String query = "delete from Question "
//                + "where ID = ?";
//        try {
//            conn = new DBcontext().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, ID);
//            int row = ps.executeUpdate();
//            if(row != 0){
////                System.out.println("thêm thành công " + row);
////                System.out.println("Update thành công " + row);
//                System.out.println("Xoá thành công " + row);
//            }
//        } catch (Exception e) {
//        }
    }
}
