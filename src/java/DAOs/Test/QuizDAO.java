/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Test;

import Connection.DBConnection;
import Models.Quiz;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Saing
 */
public class QuizDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Quiz> getAllQuiz() {
        List<Quiz> list = new ArrayList<>();
        String query = "select * from `quiz`;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Quiz(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4)));
            }
            conn.close();
        } catch (Exception e) {
        }
        return list;
    }

    public List<Quiz> getallQuestionOfTest(int TestID) {
        List<Quiz> list = new ArrayList<>();
        String query = "select * from `quiz` where `TestID` = ?;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, TestID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Quiz(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4)));
            }
            conn.close();
        } catch (Exception e) {
        }
        return list;
    }

    public Quiz getQuizByID(int QuizID) {
        Quiz a = new Quiz();
        String query = "select * from `quiz` where `QuizID` = ?;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, QuizID);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Quiz(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4));
            }
            conn.close();
        } catch (Exception e) {
        }
        return a;
    }

    public Quiz getbyQuestion(int QuestionID) {
        Quiz a = new Quiz();
        String query = "SELECT * FROM `quiz` WHERE `QuestionID` = ?;";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, QuestionID);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Quiz(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4));
            }
            conn.close();
        } catch (Exception e) {
        }
        return a;
    }

    public void insertQuiz(String Name, int TestID, int QuestionID) {
        String query = "INSERT INTO `quiz` (`name`, `TestID`, `QuestionID`) VALUES (?, ?, ?);";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, Name);
            ps.setInt(2, TestID);
            ps.setInt(3, QuestionID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    public void deleteQuiz(int QuizID) {
        String query = "delete from `quiz` where `QuizID` = ?";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, QuizID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    public void editQuiz(int QuizID, String Name, int TestID, int QuestionID) {
        String query = "update `quiz` \n"
                + "set `Desc` = ?, `TestID` = ?, `QuestionID` = ?\n"
                + "where `QuizID` = ?";
        try {
            Connection conn = DBConnection.getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, Name);
            ps.setInt(2, TestID);
            ps.setInt(3, QuestionID);
            ps.setInt(4, QuizID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        QuizDAO dao = new QuizDAO();
        List<Quiz> list = dao.getallQuestionOfTest(1);
        for (Quiz o : list) {
//            System.out.println("QuizID: " + o.getQuizID()+ " Descriptions: " + o.getName()+ " TestID: " + o.getTestID()+ " QuestionID: " + o.getQuestionID());
            System.out.println(" TestID: " + o.getTestID() + " QuestionID: " + o.getQuestionID());
        }
//        int ID = 5; int QuestionID = 1; String Option = "Lamborghini";
//        String query = "delete from Quiz "
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
