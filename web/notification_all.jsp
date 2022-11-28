<%-- 
    Document   : notification_all
    Created on : Nov 28, 2022, 4:23:18 PM
    Author     : Admin
--%>

<%@page import="Models.Notification"%>
<%@page import="DAOs.Notification.NotificationDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tất cả Thông báo</title>
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

            String cTitle = null;
            String cDetails = null;
            String cTime = null;
            if (cNotification != null) {
                cTitle = cNotification.getTitle();
                cDetails = cNotification.getDetails().replace("\r\n", "<br>");
                cTime = cNotification.getTime();
            }

        %>

        <div class="row">            
            <div class="main">
                <div class="main-section">
                    <h2>Thông báo</h2>
                    <%                        // Get All Notification
                        ResultSet rs1 = NotificationDAO.getAllNotification();
                        while (rs1.next()) {
                            int id = rs1.getInt("notificationID");
                            String title = rs1.getString("title");
                            String time = rs1.getString("time");
                            int status = rs1.getInt("status");
                            if (status == 0) {
                    %>
                    <a href="<%=request.getContextPath()%>/NotificationController?id=<%=id%>" style="text-decoration: none; color: #000;"><span><%=time%></span><span> - </span><span style="font-weight: bold;"><%=title%></span></a><br>
                            <%
                                    }
                                }
                            %>
                    <br><span><a href="<%=request.getContextPath()%>/HomeControl" style="text-decoration: none; color: #000;">Quay lại Trang chủ</a></span>
                </div>
            </div>
        </div>
    </body>
</html>
