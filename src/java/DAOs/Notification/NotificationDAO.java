/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Notification;

import Connection.DBConnection;
import Models.Notification;
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
public class NotificationDAO {
    
    public static ResultSet getAllNotification() {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT notificationID, title, details, date_format(time,'%Y-%m-%d %H:%i:%s') as time, status, userID FROM `notification` ORDER BY time DESC");
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static Notification getNotificationByID(int notification_id) {
        Notification notif = null;
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT notificationID, title, details, date_format(time,'%Y-%m-%d %H:%i:%s') as time, status, userID FROM notification"
                    + " WHERE notificationID = ?");
            st.setInt(1, notification_id);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                notif = new Notification();

                notif.setNotificationID(notification_id);
                notif.setTitle(rs.getString("title"));
                notif.setDetails(rs.getString("details"));
                notif.setTime(rs.getString("time"));
                notif.setStatus(rs.getInt("status"));
                notif.setUserID(rs.getInt("userID"));
            }

            return notif;
        } catch (SQLException ex) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void addNewNotification(Notification n) {
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("INSERT INTO notification"
                    + " (notificationID, title, details, time, status, userID)"
                    + " VALUES (NULL, ?, ?, ?, 0, ?);");

            st.setString(1, n.getTitle());
            st.setString(2, n.getDetails());
            st.setString(3, n.getTime());
            st.setInt(4, n.getUserID());

            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void editNotification(Notification n) {
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE notification "
                    + "SET title = ?, details = ?, time = ?, status = ?, userID = ? "
                    + "WHERE notification.`notificationID` = ?;");

            st.setString(1, n.getTitle());
            st.setString(2, n.getDetails());
            st.setString(3, n.getTime());
            st.setInt(4, n.getStatus());
            st.setInt(5, n.getUserID());
            st.setInt(6, n.getNotificationID());

            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void deleteNotificationByID(int id) {
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM notification "
                    + "WHERE notification.`notificationID` = ?;");

            st.setInt(1, id);

            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void hideNotificationByID(int id) {
        Connection conn;
        try {
            conn = DBConnection.getConnection();
                PreparedStatement st = conn.prepareCall("UPDATE notification SET status = 1 "
                        + "WHERE notification.`notificationID` = ?;");
                st.setInt(1, id);
                st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void showNotificationByID(int id) {
        Connection conn;
        try {
            conn = DBConnection.getConnection();
                PreparedStatement st = conn.prepareCall("UPDATE notification SET status = 0 "
                        + "WHERE notification.`notificationID` = ?;");
                st.setInt(1, id);
                st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
