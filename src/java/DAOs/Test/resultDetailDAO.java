/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Test;

import Connection.DBConnection;
import Models.ChoiceOfUser;
import Models.Result;
import Models.ResultDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Saing
 */
public class resultDetailDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<ResultDetail> getAllResultDetail() {
        List<ResultDetail> list = new ArrayList<>();
        String query = "SELECT * FROM `resultdetail`;";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ResultDetail(rs.getInt(1),
                                            rs.getInt(2),
                                            rs.getInt(3),
                                            rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ResultDetail getlastResultDetail() {
        ResultDetail a = new ResultDetail();
        String query = "SELECT    *\n" +
                       "FROM      resultdetail\n" +
                       "ORDER BY  resultdetail.ResultDetailID DESC\n" +
                       "LIMIT     1;";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new ResultDetail(rs.getInt(1),
                                    rs.getInt(2),
                                    rs.getInt(3),
                                    rs.getString(4));
                }
        } catch (Exception e) {
        }
        return a;
    }

    public ResultDetail getResultDetailbyID(int ResultDetailID) {
        ResultDetail a = new ResultDetail();
        String query = "SELECT * FROM `resultdetail` where `ResultDetailID` = ?;";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, ResultDetailID);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new ResultDetail(rs.getInt(1),
                                    rs.getInt(2),
                                    rs.getInt(3),
                                    rs.getString(4));
            }
        } catch (Exception e) {
        }
        return a;
    }

    public List<ResultDetail> getbyResultID(int ResultID) {
        List<ResultDetail> list = new ArrayList<>();
        String query = "SELECT * FROM `resultdetail` where `ResultID` = ?;";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, ResultID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ResultDetail(rs.getInt(1),
                                        rs.getInt(2),
                                        rs.getInt(3),
                                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<ChoiceOfUser> getChoicebyResultID() {
        List<ChoiceOfUser> list = new ArrayList<>();
        String query = "SELECT  r.UserID, r.TestID, d.QuestionID, d.Answer\n" +
                       "FROM `result` AS r, `resultdetail` AS d\n" +
                       "WHERE r.ResultID=d.ResultID;";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ChoiceOfUser(rs.getInt(1),
                                        rs.getInt(2),
                                        rs.getInt(3),
                                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public ResultDetail getbyQuesResult(int ResultID, int QuestionID) {
        ResultDetail a = new ResultDetail();
        String query = "SELECT * FROM `resultdetail` WHERE `ResultID` = ? AND `QuestionID` = ?;";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, ResultID);
            ps.setInt(2, QuestionID);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new ResultDetail(rs.getInt(1),
                                        rs.getInt(2),
                                        rs.getInt(3),
                                        rs.getString(4));
            }
        } catch (Exception e) {
        }
        return a;
    }

    public void insertResultDetail( int ResultID, int QuestionID, String Answer) {
        String query = "INSERT INTO `resultdetail`(`ResultID`, `QuestionID`, `Answer`) VALUES (?,?,?);";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, ResultID);
            ps.setInt(2, QuestionID);
            ps.setString(3, Answer);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteResultDetail(int ResultDetailID) {
        String query = "DELETE from `resultdetail` WHERE `ResultDetailID` = ?;";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, ResultDetailID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        resultDetailDAO dao = new resultDetailDAO();
//        ResultDetail resultDetail = dao.getAllResultDetail();
        List<ResultDetail> list = dao.getAllResultDetail();
        System.out.println(list);

//        
//        for (Levels o : list) {
//            System.out.println("LevelID: " + o.getLevelID()+ " Descriptions: " + o.getDESC());
//        }
//        int LevelID = 8; String DESC = "N12";
//       String query = "INSERT INTO `levels`(`LevelID`, `DESC`) VALUES (?,?)";
//        try {
//            conn = new DBConnection().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, LevelID);
//            ps.setString(2, DESC);
//            int row = ps.executeUpdate();
//            if(row != 0){
//                System.out.println("thêm thành công " + row);
////                System.out.println("Update thành công " + row);
////                System.out.println("Xoá thành công " + row);
//            }
//        } catch (Exception e) {
//        }
    }
}
