/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Forum;

import Connection.DBConnection;
import Models.Comment;
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
public class CommentDAO {
    public static ResultSet getAllCommentByPostID(int post_id){
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_comment` NATURAL JOIN `user`"
                    + " WHERE post_id = ? AND comment_status ='active' ORDER BY comment_id DESC");
            st.setInt(1, post_id);
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllDisableComment(){
        try {
            Statement st = DBConnection.getConnection().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM `forum_comment` NATURAL JOIN `user` "
                    + "WHERE comment_status = 'disable'  "
                    + "ORDER BY comment_date DESC;");
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static int newComment(Comment a){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("INSERT INTO `forum_comment`"
                    + " (`comment_id`, `post_id`, `comment_content`, `userID`, `comment_date`, `comment_edit_date`)"
                    + " VALUES (NULL, ?, ?, ?, ?, ?);");
            
            st.setInt(1, a.getPost_id());
            st.setString(2, a.getComment_content());
            st.setInt(3, a.getUser_id());
            st.setString(4, a.getComment_date());
            st.setString(5, a.getComment_edit_date());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int editComment(Comment a){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_comment` "
                    + "SET `comment_content` = ?, `comment_edit_date` = ? WHERE `forum_comment`.`comment_id` = ?;");
            
            st.setString(1, a.getComment_content());
            st.setString(2, a.getComment_edit_date());
            st.setInt(3, a.getComment_id());           
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int disableComment(Comment a){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_comment` "
                    + "SET `comment_status` = 'disable' "
                    + "WHERE `forum_comment`.`comment_id` = ?;");
            
            st.setInt(1, a.getComment_id());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int restoreComment(Comment a){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_comment` "
                    + "SET `comment_status` = 'active' "
                    + "WHERE `forum_comment`.`comment_id` = ?;");
            
            st.setInt(1, a.getComment_id());
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static int deleteComment(Comment a){
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_comment` "
                    + "WHERE `forum_comment`.`comment_id` = ?;");
            
            st.setInt(1, a.getComment_id());           
            
            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public static ResultSet getNumberCommentToday(String date) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT COUNT(comment_id) AS total_comment "
                    + "FROM `forum_comment` WHERE comment_date LIKE ? ;");
            st.setString(1, "%" + date + "%");
            
            ResultSet rs = st.executeQuery();
            return rs;

        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static Comment getCommentByID(int comment_id) {
        Comment c = null;
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_comment` "
                    + "WHERE comment_id = ?;");
            st.setInt(1, comment_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                c = new Comment();
                c.setComment_id(comment_id);
                c.setPost_id(rs.getInt("post_id"));                
                c.setComment_content(rs.getString("comment_content"));
                c.setUser_id(rs.getInt("userID"));
                c.setComment_date(rs.getString("comment_date"));
                c.setComment_status(rs.getString("comment_status"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }
    
}
