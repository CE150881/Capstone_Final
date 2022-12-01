/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.Test.Answer;

import DAOs.Test.AnswerDAO;
import DAOs.Test.QuestionDAO;
import Models.Answer;
import Models.Question;
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
public class insertTest_EditAnswerControl extends HttpServlet {

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
        
        //step1: get AnswerID from jsp
        String AnswerID = request.getParameter("answerID");
        AnswerDAO dao = new AnswerDAO();
        Answer answer = dao.getAnswerByID(Integer.parseInt(AnswerID));
        
        //get questionID for show question
        QuestionDAO quesdao = new QuestionDAO();
        Question ques = quesdao.getQuestionByID(answer.getQuestionID());
        
        //step2: load data to jsp
        request.setAttribute("answer", answer);
        request.setAttribute("ques", ques);
        HttpSession session = request.getSession();
        session.setAttribute("AnswerID", AnswerID);
        request.getRequestDispatcher("Test_manage_insretTest_Answer.jsp").forward(request, response);
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
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        
        String questionID = session.getAttribute("questionID").toString();
        String answerID = session.getAttribute("AnswerID").toString();
        
        String answer = request.getParameter("Answer");
        String isCorrect = request.getParameter("isCorrect");
        //insert data into database
        AnswerDAO dao = new AnswerDAO();
        dao.editAnswer(Integer.parseInt(answerID), Integer.parseInt(questionID), answer, Integer.parseInt(isCorrect));
        session.setAttribute("questionID",questionID);
        response.sendRedirect("insertTest_Question");
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
