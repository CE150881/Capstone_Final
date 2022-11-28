/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Forum;

import Connection.DBConnection;
import Models.ForumReportComment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ACER
 */
public class ReportCommentDAO {
    public static int newReportComment(ForumReportComment ra){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("INSERT INTO `forum_report_comment` "
                    + "(`report_comment_id`, `user_report_id`, `report_comment_reason`, `comment_id`, `report_comment_date`) "
                    + "VALUES (NULL, ?, ?, ?, ?);");
            
            st.setInt(1, ra.getUser_report_id());
            st.setString(2, ra.getReport_comment_reason());
            st.setInt(3, ra.getComment_id());
            st.setString(4, ra.getReport_comment_date());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportCommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static ResultSet getAllReportComment(){
        try {
            Statement st = DBConnection.getConnection().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM `forum_report_comment` NATURAL JOIN `forum_comment` "
                    + "LEFT JOIN `forum_post` ON `forum_comment`.`post_id` = `forum_post`.`post_id`"
                    + "LEFT JOIN `user` ON `forum_report_comment`.`user_report_id` = `user`.`userID` ;");
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(ReportCommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static int deleteReportComment(ForumReportComment ra){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_report_comment` "
                    + "WHERE `forum_report_comment`.`report_comment_id` = ?");
            
            st.setInt(1, ra.getReport_comment_id());       
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportCommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int deleteReportPostByCommentID(ForumReportComment ra){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_report_comment` "
                    + "WHERE `forum_report_comment`.`comment_id` = ?");
            
            st.setInt(1, ra.getComment_id());       
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportCommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
}
