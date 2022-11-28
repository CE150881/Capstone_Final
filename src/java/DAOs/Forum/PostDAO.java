/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Forum;

import Connection.DBConnection;
import Models.ForumPost;
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
public class PostDAO {

    public static ResultSet getAllPost() {
        try {
            Statement st = DBConnection.getConnection().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM `forum_post` NATURAL JOIN `user` NATURAL JOIN `forum_topic` "
                    + "WHERE post_status = 'active'  "
                    + "ORDER BY post_date DESC;");
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllPostByPage(int offset) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_post` "
                    + "NATURAL JOIN `user` NATURAL JOIN `forum_topic` "
                    + "WHERE post_status = 'active'  "
                    + "ORDER BY post_date DESC LIMIT 10 OFFSET ? ;");
            st.setInt(1, offset);
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllPostByPageWithCommentCount(int offset) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT a.*, c.topic_name, d.*, "
                    + "COUNT(b.post_id) AS 'comment_count' "
                    + "FROM `forum_post` a "
                    + "LEFT JOIN `forum_comment` b ON a.post_id = b.post_id "
                    + "LEFT JOIN `forum_topic` c ON a.topic_id = c.topic_id "
                    + "LEFT JOIN `user` d ON a.userID = d.userID "
                    + "WHERE a.`post_status` = 'active' "
                    + "AND (b.comment_status = 'active' OR b.comment_status IS NULL) "
                    + "GROUP BY  a.post_id "
                    + "ORDER BY a.post_date "
                    + "DESC LIMIT 10 OFFSET ? ;");
            st.setInt(1, offset);
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static ResultSet getAllDisablePost() {
        try {
            Statement st = DBConnection.getConnection().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM `forum_post` NATURAL JOIN `user` NATURAL JOIN `forum_topic` "
                    + "WHERE post_status = 'disable'  "
                    + "ORDER BY post_date DESC;");
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllDisablePostWithCommentCount() {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT a.*, c.topic_name, d.*, "
                    + "COUNT(b.post_id) AS 'comment_count' "
                    + "FROM `forum_post` a "
                    + "LEFT JOIN `forum_comment` b ON a.post_id = b.post_id "
                    + "LEFT JOIN `forum_topic` c ON a.topic_id = c.topic_id "
                    + "LEFT JOIN `user` d ON a.userID = d.userID "
                    + "WHERE a.`post_status` = 'disable' "
                    + "AND (b.comment_status = 'active' OR b.comment_status IS NULL) "
                    + "GROUP BY  a.post_id "
                    + "ORDER BY a.post_date DESC ;");
                    
            
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static ForumPost getPostByID(int post_id) {
        ForumPost p = null;
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_post` "
                    + "WHERE post_id = ?;");
            st.setInt(1, post_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                p = new ForumPost();
                p.setPost_id(post_id);
                p.setTopic_id(rs.getInt("topic_id"));
                p.setPost_title(rs.getString("post_title"));
                p.setPost_content(rs.getString("post_content"));
                p.setUser_id(rs.getInt("userID"));
                p.setPost_date(rs.getString("post_date"));
                p.setPost_status(rs.getString("post_status"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }

    public static ResultSet getAllPostByTopic(int topic_id) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_post` NATURAL JOIN `user` NATURAL JOIN `forum_topic` "
                    + "WHERE post_status = 'active' AND topic_id = ? "
                    + "ORDER BY post_date DESC;");
            st.setInt(1, topic_id);
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllPostByTopicWithCommentCount(int topic_id) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT a.*, c.topic_name, d.*, "
                    + "COUNT(b.post_id) AS 'comment_count' "
                    + "FROM `forum_post` a "
                    + "LEFT JOIN `forum_comment` b ON a.post_id = b.post_id "
                    + "LEFT JOIN `forum_topic` c ON a.topic_id = c.topic_id "
                    + "LEFT JOIN `user` d ON a.userID = d.userID "
                    + "WHERE a.`post_status` = 'active' AND a.`topic_id` = ? "
                    + "AND (b.comment_status = 'active' OR b.comment_status IS NULL) "
                    + "GROUP BY  a.post_id "
                    + "ORDER BY a.post_date DESC ;");
            st.setInt(1, topic_id);        
            
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllPostBySearch(String search) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT * FROM `forum_post` NATURAL JOIN `user` NATURAL JOIN `forum_topic` "
                    + "WHERE post_status = 'active' AND post_title LIKE ? OR post_content LIKE ? "
                    + "ORDER BY post_date DESC;");
            st.setString(1, "%" + search + "%");
            st.setString(2, "%" + search + "%");
            
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getAllPostBySearchWithCommentCount(String search) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT a.*, c.topic_name, d.*, "
                    + "COUNT(b.post_id) AS 'comment_count' "
                    + "FROM `forum_post` a "
                    + "LEFT JOIN `forum_comment` b ON a.post_id = b.post_id "
                    + "LEFT JOIN `forum_topic` c ON a.topic_id = c.topic_id "
                    + "LEFT JOIN `user` d ON a.userID = d.userID "
                    + "WHERE a.`post_status` = 'active' AND post_title LIKE ? OR post_content LIKE ? "
                    + "AND (b.comment_status = 'active' OR b.comment_status IS NULL) "
                    + "GROUP BY  a.post_id "
                    + "ORDER BY a.post_date DESC ;");
            
            st.setString(1, "%" + search + "%");
            st.setString(2, "%" + search + "%");
            
            ResultSet rs = st.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static int restorePost(ForumPost p) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_post` "
                    + "SET `post_status` = 'active' "
                    + "WHERE `forum_post`.`post_id` = ?;");

            st.setInt(1, p.getPost_id());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static int restorePostByTopic(ForumPost p) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_post` "
                    + "SET `post_status` = 'active' "
                    + "WHERE `forum_post`.`topic_id` = ?;");

            st.setInt(1, p.getTopic_id());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static int newPost(ForumPost p) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("INSERT INTO `forum_post` "
                    + "(`post_id`, `topic_id`, `post_title`, `post_content`, `userID`, `post_date`, `post_edit_date`, `post_status`) "
                    + "VALUES (NULL, ?, ?, ?, ?, ?, ?, 'active');");

            st.setInt(1, p.getTopic_id());
            st.setString(2, p.getPost_title());
            st.setString(3, p.getPost_content());
            st.setInt(4, p.getUser_id());
            st.setString(5, p.getPost_date());
            st.setString(6, p.getPost_edit_date());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static int editPost(ForumPost p) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_post` "
                    + "SET `topic_id` = ?, `post_title` = ?, `post_content` = ?, `post_edit_date` = ? "
                    + "WHERE `forum_post`.`post_id` = ?;");

            st.setInt(1, p.getTopic_id());
            st.setString(2, p.getPost_title());
            st.setString(3, p.getPost_content());
            st.setString(4, p.getPost_edit_date());
            st.setInt(5, p.getPost_id());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static int deletePost(ForumPost p) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("DELETE FROM `forum_post`"
                    + " WHERE `forum_post`.`post_id` = ?");

            st.setInt(1, p.getPost_id());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static int disablePost(ForumPost p) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_post` "
                    + "SET `post_status` = 'disable' "
                    + "WHERE `forum_post`.`post_id` = ?;");

            st.setInt(1, p.getPost_id());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static int disablePostByTopic(ForumPost p) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_post` "
                    + "SET `post_status` = 'disable' "
                    + "WHERE `forum_post`.`topic_id` = ?;");

            st.setInt(1, p.getTopic_id());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static int changeTopicPost(ForumPost p) {
        int rs = 0;
        Connection conn;
        try {
            conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareCall("UPDATE `forum_post` "
                    + "SET `topic_id` = 1 "
                    + "WHERE `forum_post`.`topic_id` = ?;");

            st.setInt(1, p.getTopic_id());

            rs = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static ResultSet getNumberUserActiveForum(String date) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT COUNT(*) "
                    + "AS total_user "
                    + "FROM (SELECT `forum_post`.`userID` FROM `forum_post` "
                    + "WHERE post_date LIKE ? "
                    + "UNION SELECT `forum_comment`.`userID` "
                    + "FROM `forum_comment` WHERE comment_date LIKE ?) "
                    + "total_user;");
            st.setString(1, "%" + date + "%");
            st.setString(2, "%" + date + "%");

            ResultSet rs = st.executeQuery();
            return rs;

        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
    public static ResultSet getNumberPostToday(String date) {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT COUNT(post_id) AS total_post "
                    + "FROM `forum_post` WHERE post_date LIKE ? ;");
            st.setString(1, "%" + date + "%");
            
            ResultSet rs = st.executeQuery();
            return rs;

        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static ResultSet getNumberPost() {
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("SELECT COUNT(post_id) AS total_post "
                    + "FROM `forum_post` WHERE post_status = 'active' ;");
            
            
            ResultSet rs = st.executeQuery();
            return rs;

        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
