/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Forum;

import Connection.DBConnection;
import Models.ForumTopic;
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
public class TopicDAO {
    public static ResultSet getAllTopic(){
        try {
            Statement st = DBConnection.getConnection().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM `forum_topic` WHERE topic_status = 'active' ORDER BY topic_id ASC;");
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(TopicDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllDisableTopic(){
        try {
            Statement st = DBConnection.getConnection().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM `forum_topic` WHERE topic_status = 'disable' ORDER BY topic_id ASC;");
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(TopicDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ForumTopic getTopicByID (int topic_id){
        ForumTopic t = null;
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_topic` "
                    + "WHERE topic_id = ?;");
            st.setInt(1, topic_id);
            ResultSet rs = st.executeQuery();            
            if(rs.next()){
                t = new ForumTopic();
                t.setTopic_id(topic_id);
                t.setTopic_name(rs.getString("topic_name"));
                t.setTopic_status(rs.getString("topic_status"));
                                
            }
        } catch (SQLException ex) {
            Logger.getLogger(TopicDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return t;
    }
    
    public static int newTopic(ForumTopic t){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("INSERT INTO `forum_topic` (`topic_id`, `topic_name`, `topic_status`) "
                    + "VALUES (NULL, ?, 'active');");
            
            st.setString(1, t.getTopic_name());            
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int editTopic(ForumTopic t){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_topic` "
                    + "SET `topic_name` = ? "
                    + "WHERE `forum_topic`.`topic_id` = ?;");
            
            st.setString(1, t.getTopic_name());
            st.setInt(2, t.getTopic_id());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int disableTopic(ForumTopic t){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_topic` "
                    + "SET `topic_status` = 'disable' "
                    + "WHERE `forum_topic`.`topic_id` = ?;");
            
            
            st.setInt(1, t.getTopic_id());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int restoreTopic(ForumTopic t){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_topic` "
                    + "SET `topic_status` = 'active' "
                    + "WHERE `forum_topic`.`topic_id` = ?;");
            
            
            st.setInt(1, t.getTopic_id());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int deleteTopic(ForumTopic t){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_topic` "
                    + "WHERE `forum_topic`.`topic_id` = ?");
            
            st.setInt(1, t.getTopic_id());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
