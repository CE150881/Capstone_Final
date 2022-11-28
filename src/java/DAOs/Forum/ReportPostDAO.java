/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Forum;

import Connection.DBConnection;
import Models.ForumReportPost;
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
public class ReportPostDAO {
    public static int newReportPost(ForumReportPost rp){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("INSERT INTO `forum_report_post` "
                    + "(`report_post_id`, `user_report_id`, `report_post_reason`, `post_id`, `report_post_date`)"
                    + " VALUES (NULL, ?, ?, ?, ?);");
            
            st.setInt(1, rp.getUser_report_id());
            st.setString(2, rp.getReport_post_reason());
            st.setInt(3, rp.getPost_id());
            st.setString(4, rp.getReport_post_date());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportPostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static ResultSet getAllReportPost(){
        try {
            Statement st = DBConnection.getConnection().createStatement();
            ResultSet rs = st.executeQuery("SELECT `report_post_id`, `report_post_reason`, `post_id`, `post_title`, `post_content`, `post_edit_date`,"
                    + " `username`, `report_post_date` FROM `forum_report_post` "
                    + "NATURAL JOIN `forum_post` "
                    + "LEFT JOIN `user` ON `forum_report_post`.`user_report_id` = `user`.`userID`;");
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(ReportPostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static int deleteReportPost(ForumReportPost rp){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_report_post` "
                    + "WHERE `forum_report_post`.`report_post_id` = ?");
            
            st.setInt(1, rp.getReport_post_id());       
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportPostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
        
    public static int deleteReportPostByPostID(ForumReportPost rp){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_report_post` "
                    + "WHERE `forum_report_post`.`post_id` = ?");
            
            st.setInt(1, rp.getPost_id());       
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportPostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
