<%-- 
    Document   : notification_details
    Created on : Nov 28, 2022, 4:23:04 PM
    Author     : Admin
--%>

<%@page import="DAOs.Notification.NotificationDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAOs.Account.UserDAO"%>
<%@page import="Models.Notification"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết Thông báo</title>
    </head>
    <body>
        <style>
            * {
                box-sizing: border-box;
            }

            /* Column container */
            .row {  
                display: flex;
                flex-wrap: wrap;
                width: 101%;
            }

            /* Content columns */
            /* Main column, on the left */
            .main {
                flex: 60%;
                padding: 0 5vw;
            }

            /* Sidebar column, on the right */
            .side {
                flex: 30%;
                padding: 0 5vw;
            }

            .main-section {
                width: 100%;
                overflow: auto;
                padding: 5vh 3vw;
                margin: 10vh 0;
                border-radius: 15px;
                color: #000;
                box-shadow: 0px 0px 30px 5px #cfcfcf;
            }

            .side-section {
                width: 100%;
                overflow: auto;
                padding: 5vh 3vw;
                margin: 10vh 0;
                border-radius: 15px;
                color: #000;
                box-shadow: 0px 0px 30px 5px #cfcfcf;
            }

            /* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 700px) {
                .row, .navbar {   
                    flex-direction: column;
                }
            }
        </style>

        <%
            Notification cNotification = (Notification) session.getAttribute("cNotification");
            UserDAO userdao = new UserDAO();

            String cTitle = null;
            String cDetails = null;
            String cTime = null;
            String cPoster = null;
            if (cNotification != null) {
                cTitle = cNotification.getTitle();
                cDetails = cNotification.getDetails().replace("\r\n", "<br>");
                cTime = cNotification.getTime();
                cPoster = userdao.getUserByID2(cNotification.getUserID()).getUsername();
            }

        %>

        <div class="row">            
            <div class="main">
                <div class="main-section">
                    <span id="title" style="font-weight: bold; font-size: 32px;"><%=cTitle%></span><br>
                    <span id="time" style="font-style: italic; font-size: 16px;">Đăng bởi <%=cPoster%> vào <%=cTime%></span><br><br><br>
                    <span id="details" style="font-size: 18px;"><%=cDetails%></span><br><br>
                    <span><a href="<%= request.getContextPath()%>/HomeControl" style="text-decoration: none; color: #9dcaeb;">Quay lại Trang chủ</a>
                </div>
            </div>
            <div class="side">
                <div class="side-section">
                    <h2>Thông báo</h2>
                    <%
                        // Get All Notification
                        ResultSet rs1 = NotificationDAO.getAllNotification();
                        int limit = 5;
                        int notifNo = 0;
                        while (rs1.next()) {
                            if (notifNo >= limit) {
                    %>
                    <div style="text-align: right; margin-top: 2vh"><a href="<%=request.getContextPath()%>/notification_all.jsp" style="text-decoration: none; color: #000;">Xem thêm...</a></div>
                    <%
                            break;
                        }
                        int id = rs1.getInt("notificationID");
                        String title = rs1.getString("title");
                        String time = rs1.getString("time");
                        int status = rs1.getInt("status");
                        if (status == 0) {
                            notifNo += 1;
                    %>
                    <a href="<%=request.getContextPath()%>/NotificationController?id=<%=id%>" style="text-decoration: none;"><span><%=time%></span><span> - </span><span style="font-weight: bold; color: #000;"><%=title%></span></a><br>
                            <%
                                    }
                                }
                            %>
                </div>
            </div>
        </div>
    </body>
</html>
