/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.Forum;

import DAOs.Account.UserDAO;
import DAOs.Forum.CommentDAO;
import DAOs.Forum.PostDAO;
import DAOs.Forum.ReportNotificationDAO;
import DAOs.Forum.ReportPostDAO;
import DAOs.Forum.TopicDAO;
import DAOs.Material.MaterialDAO;
import Models.Comment;
import Models.ForumPost;
import Models.ForumReportNotification;
import Models.ForumReportPost;
import Models.ForumTopic;
import Models.Level;
import Models.Type;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ACER
 */
public class Post extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Post</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Post at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getRequestURI();
        if (path.startsWith(request.getContextPath() + "/Post")) {
            String[] s = path.split("/");
            String post_id = s[s.length - 1];
            int post_id2 = Integer.parseInt(post_id);
            ForumPost p = PostDAO.getPostByID(post_id2);
            if (p == null) {
                response.sendRedirect(request.getContextPath() + "/Forum");
            } else {
                ForumTopic t = TopicDAO.getTopicByID(p.getTopic_id());
                ResultSet rt = TopicDAO.getAllTopic();
                ResultSet a = CommentDAO.getAllCommentByPostID(post_id2);
                UserDAO dao = new UserDAO();
                User u = dao.getUserByID2(p.getUser_id());

                MaterialDAO dao2 = new MaterialDAO();
                List<Type> listT = dao2.getAllType();
                List<Level> listL = dao2.getAllLevel();
                HttpSession session = request.getSession();

                request.setAttribute("listT", listT);
                request.setAttribute("listL", listL);
                session.setAttribute("singlePost", p);
                session.setAttribute("userPost", u);
                session.setAttribute("singleTopic", t);
                session.setAttribute("allTopic", rt);
                session.setAttribute("allComment", a);
                request.getRequestDispatcher("/forum_post.jsp").forward(request, response);
            }

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        String newReply = "";
        int comment_id = 0;
        String comment_content = "";
        int userID = 0;
        String comment_date = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
        String comment_edit_date = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
        String comment_status = "active";
        int post_id = 0;
        int userID2 = 0;
        int report_notification_id = 0;
        String report_notification_content = "Có Bình Luận Mới";
        String report_notification_status = "not read";

        newReply = request.getParameter("newReply");
        if (!newReply.equals("")) {
            comment_content = request.getParameter("comment_content").replace("\r\n", "<br>");
            userID = Integer.parseInt(request.getParameter("userID"));
            userID2 = Integer.parseInt(request.getParameter("userID2"));
            post_id = Integer.parseInt(request.getParameter("post_id"));

            Comment a = new Comment(comment_id, comment_content, userID, comment_date, comment_edit_date, post_id, comment_status);
            int count = CommentDAO.newComment(a);
            if (userID != userID2) {
                ForumReportNotification rn = new ForumReportNotification(report_notification_id, userID2, report_notification_content, post_id, comment_id, report_notification_status);
                int count2 = ReportNotificationDAO.newReportNotificationPost(rn);
            }
            if (count > 0) {
                response.sendRedirect(request.getContextPath() + "/Post/" + post_id);
            } else {
                response.sendRedirect(request.getContextPath() + "/Forum");
            }
        }

        String edit = "";
        edit = request.getParameter("edit");
        if (!edit.equals("")) {
            comment_id = Integer.parseInt(request.getParameter("comment_id"));
            comment_content = request.getParameter("comment_content");
            post_id = Integer.parseInt(request.getParameter("post_id"));

            Comment a = new Comment(comment_id, comment_content, userID, comment_date, comment_edit_date, post_id, comment_status);
            int count = CommentDAO.editComment(a);
            if (count > 0) {
                response.sendRedirect(request.getContextPath() + "/Post/" + post_id);
            } else {
                response.sendRedirect(request.getContextPath() + "/Forum");
            }
        }

        String delete = "";
        delete = request.getParameter("delete");
        if (!delete.equals("")) {
            comment_id = Integer.parseInt(request.getParameter("comment_id"));
            post_id = Integer.parseInt(request.getParameter("post_id"));

            Comment a = new Comment(comment_id, comment_content, userID, comment_date, comment_edit_date, post_id, comment_status);
            int count = CommentDAO.deleteComment(a);
            if (count > 0) {
                response.sendRedirect(request.getContextPath() + "/Post/" + post_id);
            } else {
                response.sendRedirect(request.getContextPath() + "/Forum");
            }
        }

        String post_title = "";
        String post_content = "";
        String post_date = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
        String post_edit_date = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
        String editPost = "";
        String post_status = "active";
        int topic_id = 1;

        editPost = request.getParameter("editPost");
        if (!editPost.equals("")) {
            post_title = request.getParameter("post_title");
            post_content = request.getParameter("post_content");
            post_id = Integer.parseInt(request.getParameter("post_id"));
            topic_id = Integer.parseInt(request.getParameter("topic_id"));

            ForumPost p = new ForumPost(post_id, topic_id, post_title, post_content, userID, post_date, post_edit_date, post_status);
            int count = PostDAO.editPost(p);
            if (count > 0) {
                response.sendRedirect(request.getContextPath() + "/Post/" + post_id);
            } else {
                response.sendRedirect(request.getContextPath() + "/Forum");
            }
        }

        String deletePost = "";
        deletePost = request.getParameter("deletePost");
        if (!deletePost.equals("")) {
            post_id = Integer.parseInt(request.getParameter("post_id"));

            ForumPost p = new ForumPost(post_id, topic_id, post_title, post_content, userID, post_date, post_edit_date, post_status);
            int count = PostDAO.disablePost(p);
            if (count > 0) {
                response.sendRedirect(request.getContextPath() + "/Forum");
            } else {
                response.sendRedirect(request.getContextPath() + "/Post/" + post_id);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
