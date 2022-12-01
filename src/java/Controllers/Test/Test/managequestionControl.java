/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.Test.Test;

import DAOs.Test.LevelDAO;
import DAOs.Test.QuestionDAO;
import DAOs.Test.QuizDAO;
import DAOs.Test.TagDAO;
import DAOs.Test.TestDAO;
import Models.Level;
import Models.Question;
import Models.Quiz;
import Models.Tag;
import Models.Test;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class managequestionControl extends HttpServlet {

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
            out.println("<title>Servlet managequestionControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet managequestionControl at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        //khai báo
        
               
        String TestID = request.getParameter("testID");
        Test test = new TestDAO().getTestByID(Integer.parseInt(TestID));
        
        QuestionDAO quesdao = new QuestionDAO();
        List<Question> listQuestion = new ArrayList<Question>();
                
        QuizDAO Quizdao = new QuizDAO();
        List<Quiz> QuestionOfTest = Quizdao.getallQuestionOfTest(Integer.parseInt(TestID));
//        
        //step: lấy câu hỏi từ list câu hỏi trong quiz
        List<String> list = new ArrayList<String>();
        for (Quiz o : QuestionOfTest) {
            list.add(String.valueOf(o.getQuestionID()));
        }
        
        for (String o : list) {
            listQuestion.add(quesdao.getQuestionByID(Integer.parseInt(o)));
        }
        
        TagDAO tagdao = new TagDAO();
        List<Tag> listtag = tagdao.getAllTag();
        
        LevelDAO leveldao = new LevelDAO();
        List<Level> listlevel = leveldao.getAllLevel();
        
        //step2: load data to jsp
        request.setAttribute("listQuestion", listQuestion);
        request.setAttribute("listtag", listtag);
        request.setAttribute("listlevel", listlevel);
        request.setAttribute("nameTest", test.getName());
        HttpSession session = request.getSession();
        session.setAttribute("TestID", TestID);
        request.getRequestDispatcher("Test_manage_insretTest_Test.jsp").forward(request, response);
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
