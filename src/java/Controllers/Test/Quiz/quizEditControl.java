/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.Test.Quiz;

import DAOs.Test.QuestionDAO;
import DAOs.Test.QuizDAO;
import DAOs.Test.TestDAO;
import Models.Question;
import Models.Quiz;
import Models.Test;
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
public class quizEditControl extends HttpServlet {

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
//            out.println("<title>Servlet quizEditControl</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet quizEditControl at " + request.getContextPath() + "</h1>");
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
        String ID = request.getParameter("quizID");

        QuizDAO dao = new QuizDAO();
        Quiz quiz = dao.getQuizByID(Integer.parseInt(ID));
        
        String test = "";
        List<Test> listtest = (new TestDAO()).getAllTest();
                       
        for (Test i : listtest) {
            if (quiz.getTestID()==i.getTestID()){
            test = i.getName();
        }
        }
        
        String question = "";        
        List<Question> listques = (new QuestionDAO()).getAllQuestion();
               
        for (Question i : listques) {
            if (quiz.getQuestionID()==i.getQuestionID()){
            question = i.getQuestion();
        }
        }

        HttpSession session = request.getSession();
        session.setAttribute("quizID", ID);
        request.setAttribute("quiz", quiz);
        request.setAttribute("test", test);
        request.setAttribute("question", question);
        request.getRequestDispatcher("Test_manage_editQuiz.jsp").forward(request, response);
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
        //get data from jsp
        HttpSession session = request.getSession();
        String quizID = session.getAttribute("quizID").toString();
        String name = request.getParameter("name");
        
        String test = request.getParameter("test");        
        List<Test> listtest = (new TestDAO()).getAllTest();
        int testID = 0;
        
        for (Test i : listtest) {
            if (test.equals(i.getName())){
            testID = i.getTestID();
        }
        }
        
        String question = request.getParameter("question");
        List<Question> listques = (new QuestionDAO()).getAllQuestion();
        int questionID = 0;
        
        for (Question o : listques) {
            if (question.equals(o.getQuestion())){
            questionID = o.getQuestionID();
        }
        }
        
        //insert data into database
        QuizDAO dao = new QuizDAO();
        dao.editQuiz(Integer.parseInt(quizID), name, testID, questionID);
        response.sendRedirect("quizControl");
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
