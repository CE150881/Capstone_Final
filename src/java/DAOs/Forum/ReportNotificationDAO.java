/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Forum;

import Connection.DBConnection;
import Models.ForumReportNotification;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ACER
 */
public class ReportNotificationDAO {
    
    public static ResultSet getAllReportNotificationByUserID(int userID) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_report_notification` "
                    + "LEFT JOIN `forum_post` "
                    + "ON `forum_report_notification`.`post_id` = `forum_post`.`post_id` "
                    + "LEFT JOIN `forum_comment` "
                    + "ON `forum_report_notification`.`comment_id` = `forum_comment`.`comment_id` "
                    + "WHERE `forum_report_notification`.`userID` = ? ORDER BY `forum_report_notification`.`report_notification_id` DESC ");
            st.setInt(1, userID);
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(ReportNotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllReportNotificationByUserIDNotRead(int userID) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_report_notification` "
                    + "WHERE userID = ? AND report_notification_status = 'not read' ;");
            st.setInt(1, userID);
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(ReportNotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static int newReportNotificationPost(ForumReportNotification rn) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("INSERT INTO `forum_report_notification` "
                    + "(`report_notification_id`, `userID`, `report_notification_content`, `post_id`, `comment_id`, `report_notification_status`) "
                    + "VALUES (NULL, ?, ?, ?, NULL, 'not read');");

            st.setInt(1, rn.getUserID());
            st.setString(2, rn.getReport_notification_content());
            st.setInt(3, rn.getPost_id());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportNotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int newReportNotificationComment(ForumReportNotification rn) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("INSERT INTO `forum_report_notification` "
                    + "(`report_notification_id`, `userID`, `report_notification_content`, `post_id`, `comment_id`, `report_notification_status`) "
                    + "VALUES (NULL, ?, ?, NULL, ?, 'not read');");

            st.setInt(1, rn.getUserID());
            st.setString(2, rn.getReport_notification_content());
            st.setInt(3, rn.getComment_id());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportNotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int markAllRead(int userID) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_report_notification` "
                    + "SET `report_notification_status` = 'read' "
                    + "WHERE userID = ?");

            st.setInt(1, userID);

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportNotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int deleteReportNotificationPost(int post_id) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_report_notification` "
                    + "WHERE `forum_report_notification`.`post_id` = ?");

            st.setInt(1, post_id);

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportNotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int deleteReportNotificationPostByID(int report_notification_id) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_report_notification` "
                    + "WHERE `forum_report_notification`.`report_notification_id` = ?");

            st.setInt(1, report_notification_id);

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportNotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int deleteReportNotificationComment(int comment_id) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_report_notification` "
                    + "WHERE `forum_report_notification`.`comment_id` = ?");

            st.setInt(1, comment_id);

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReportNotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
