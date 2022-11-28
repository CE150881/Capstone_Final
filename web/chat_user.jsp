<%-- 
    Document   : chat_user
    Created on : Nov 28, 2022, 5:39:59 PM
    Author     : Admin
--%>

<%@page import="DAOs.Chat.ChatSessionDAO"%>
<%@page import="Models.ChatSession"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hỗ Trợ</title>
        <!-- //// STYLE -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
        <!-- STYLE ///-->

        <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        
        <link href="chat/css/chat.css" rel="stylesheet" type="text/css"/>
        <script src="chat/js/chat.js" type="text/javascript"></script>
    </head>
    <body>
        
        <%
            User u = (User) session.getAttribute("acc");
            int cUID = -1;
            if (u == null) {
                response.sendRedirect(request.getContextPath() + "/account_login.jsp");
            } else {
                cUID = u.getUserID();
                int sessionID = -1;

                while (sessionID == -1) {
                    // Get user's latest opening chat session
                    ArrayList<ChatSession> csList = ChatSessionDAO.getAllChatSession();
                    for (ChatSession cs : csList) {
                        int tmpUID = cs.getUserID();
                        int tmpStatus = cs.getStatus();

                        if (tmpUID == cUID && tmpStatus == 0) {
                            sessionID = cs.getSessionID();
                            break;
                        }
                    }

                    if (sessionID == -1) {
                        ChatSession ncs = new ChatSession();
                        ncs.setUserID(cUID);
                        ncs.setStatus(0);

                        ChatSessionDAO.addNewChatSession(ncs);
                    }
                }
            }
        %>
        <div class="album py-4 bg-light height-100vh">
            <div class="container bg-white">
                <!-- Chat content -->
                <div id="message-list"></div>

                <div id="chat-form-container">
                    <form action="/" id="chat-form" method="POST" autocomplete="off">
                        <textarea type="text" name="chatContent" id="chat-content" placeholder="Nhập tin nhắn..."></textarea>
                        <input type="hidden" name="chatUserID" id="chat-user-id" value="<%=cUID%>">
                        <button type="submit" id="chat-submit" title="Gửi"><i class="fa-solid fa-paper-plane"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
