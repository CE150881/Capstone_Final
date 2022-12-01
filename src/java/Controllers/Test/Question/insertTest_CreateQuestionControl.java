/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.Test.Question;

import DAOs.Test.LevelDAO;
import DAOs.Test.QuestionDAO;
import DAOs.Test.QuizDAO;
import DAOs.Test.TagDAO;
import DAOs.Test.TestDAO;
import Models.Level;
import Models.Question;
import Models.Quiz;
import Models.Tag;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Saing
 */
public class insertTest_CreateQuestionControl extends HttpServlet {

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
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet insertTest_CreateQuestionControl</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet insertTest_CreateQuestionControl at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
//        processRequest(request, response);
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        //get list tag and level for form input
        LevelDAO leveldao = new LevelDAO();
        List<Level> listlevel = leveldao.getAllLevel();
        TagDAO tagdao = new TagDAO();
        List<Tag> listtag = tagdao.getAllTag();

        request.setAttribute("listlevel", listlevel);
        request.setAttribute("listtag", listtag);
        request.getRequestDispatcher("Test_manage_createQuestion.jsp").forward(request, response);
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
//        processRequest(request, response);
        //set utf-8 for input vietnamese word
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        
        String TestID = session.getAttribute("TestID").toString();
        String test = new TestDAO().getTestByID(Integer.parseInt(TestID)).getName();
        //get data from jsp
        String TagID = request.getParameter("listtag");
        String tag = new TagDAO().getTagByID(Integer.parseInt(TagID)).getDesc();
        String Levelid = request.getParameter("listlevel");
        String level = new LevelDAO().getLevelbyID(Integer.parseInt(Levelid)).getLevelName();
        String Question = request.getParameter("question");
        
        //insert data into database
        QuestionDAO dao = new QuestionDAO();
        dao.insertQuestion(Integer.parseInt(TagID), Integer.parseInt(Levelid), Question);
        Question lastques = dao.getLastQuestion();
        
        QuizDAO quizDAO = new QuizDAO();
        quizDAO.insertQuiz(tag+" "+level+" "+test, Integer.parseInt(TestID), lastques.getQuestionID());
        
        response.sendRedirect("insertTest_Test"); 
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
