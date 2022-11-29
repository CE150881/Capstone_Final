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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

            #back-home-btn:hover, #display-more-btn:hover {
                transition: 0.3s;
                background-color: #000;
                color: #fff;
            }

            #back-home-btn, #display-more-btn {
                text-decoration: none;
                color: #000;
                background-color: #fff;
                border: 1px solid #222;
                border-radius: 5px;
                padding: 1vh 1vw;
            }

            .notif-title {
                text-decoration: none;
                color: #000;
            }

            .notif-title-span {
                font-weight: bold;
            }

            .pagination {
                display: inline-block;
            }

            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                transition: 0.3s;
                border: 1px solid #ddd;
                border-radius: 8px;
                margin: 0 4px;
            }

            .pagination a.active {
                background-color: #000;
                color: #fff;
                border: 1px solid #000;
            }

            .page-num:hover:not(.active) {
                background-color: #cfcfc4;
                color: #fff;
            }

            #prevPage {
                pointer-events: none;
                cursor: default;
                background-color: #e6e6e6;
                color: #c5c5c5;
            }

            /* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 700px) {
                .row, .navbar {   
                    flex-direction: column;
                }
            }
        </style>

        <div class="row">            
            <div class="main">
                <div class="main-section" id="notif-container">
                    <h2>Thông báo</h2>
                    <%                        // Get All Notification
                        int loadLimit = 5;
                        int notifCount = 1;
                        int totalNotifCount;
                        ResultSet rs1 = NotificationDAO.getAllNotification();
                        while (rs1.next()) {
                            int id = rs1.getInt("notificationID");
                            String title = rs1.getString("title");
                            String time = rs1.getString("time");
                            int status = rs1.getInt("status");
                            if (status == 0) {
                                if (notifCount <= loadLimit) {
                    %>
                    <script>
                        var currentPage = 1;
                        const loadLimit = 5;

                        function prevPage() {
                            var lastActivePage = $('.pagination > .active');
                            var currentActivePage = $('.pagination > .active').prev();

                            // re-enable prev and next button
                            $('.prevNext').css("pointer-events", "auto");
                            $('.prevNext').css("cursor", "pointer");
                            $('.prevNext').css("background-color", "#fff");
                            $('.prevNext').css("color", "#000");

                            if (currentActivePage.prev().hasClass("prevNext")) {
                                currentActivePage.prev().css("pointer-events", "none");
                                currentActivePage.prev().css("cursor", "default");
                                currentActivePage.prev().css("background-color", "#e6e6e6");
                                currentActivePage.prev().css("color", "#c5c5c5");
                            }
                            
                            lastActivePage.removeClass("active");
                            currentActivePage.addClass("active");

                            currentPage = currentPage - 1;
                            loadPage(currentPage);
                        }

                        function nextPage() {
                            var lastActivePage = $('.pagination > .active');
                            var currentActivePage = $('.pagination > .active').next();

                            // re-enable prev and next button
                            $('.prevNext').css("pointer-events", "auto");
                            $('.prevNext').css("cursor", "pointer");
                            $('.prevNext').css("background-color", "#fff");
                            $('.prevNext').css("color", "#000");

                            if (currentActivePage.next().hasClass("prevNext")) {
                                currentActivePage.next().css("pointer-events", "none");
                                currentActivePage.next().css("cursor", "default");
                                currentActivePage.next().css("background-color", "#e6e6e6");
                                currentActivePage.next().css("color", "#c5c5c5");
                            }
                            
                            lastActivePage.removeClass("active");
                            currentActivePage.addClass("active");

                            currentPage = currentPage + 1;
                            loadPage(currentPage);
                        }

                        function loadPage(pageNum) {
                            // display none all child
                            $('#notif-container > .notif-title-container').css("display", "none");
                            
                            // re-enable prev and next button
                            $('.prevNext').css("pointer-events", "auto");
                            $('.prevNext').css("cursor", "pointer");
                            $('.prevNext').css("background-color", "#fff");
                            $('.prevNext').css("color", "#000");

                            var lastActivePage = $('.pagination > .active');
                            var currentActivePage = $('#page-num-' + pageNum);
                            var startNum = ((pageNum - 1) * loadLimit) + 1;
                            var endNum = pageNum * loadLimit;

                            for (let i = startNum; i <= endNum; i++) {
                                $('#notif-title-container-id-' + i).attr("style", "display: block !important");
                            }
                            
                            if (currentActivePage.prev().hasClass("prevNext")) {
                                currentActivePage.prev().css("pointer-events", "none");
                                currentActivePage.prev().css("cursor", "default");
                                currentActivePage.prev().css("background-color", "#e6e6e6");
                                currentActivePage.prev().css("color", "#c5c5c5");
                            }
                            
                            if (currentActivePage.next().hasClass("prevNext")) {
                                currentActivePage.next().css("pointer-events", "none");
                                currentActivePage.next().css("cursor", "default");
                                currentActivePage.next().css("background-color", "#e6e6e6");
                                currentActivePage.next().css("color", "#c5c5c5");
                            }
                            
                            lastActivePage.removeClass("active");
                            currentActivePage.addClass("active");
                            
                            currentPage = pageNum;
                        }
                    </script>
                    <div class="notif-title-container" id="notif-title-container-id-<%=notifCount%>"><a href="<%=request.getContextPath()%>/NotificationController?id=<%=id%>" class="notif-title" id="notif-title-id-<%=notifCount%>"><span><%=time%></span><span> - </span><span class="notif-title-span"><%=title%></span></a><br></div>
                                <%
                                } else {
                                %>
                    <div class="notif-title-container" id="notif-title-container-id-<%=notifCount%>"  style="display: none;"><a href="<%=request.getContextPath()%>/NotificationController?id=<%=id%>" class="notif-title" id="notif-title-id-<%=notifCount%>"><span><%=time%></span><span> - </span><span class="notif-title-span"><%=title%></span></a><br></div>
                                <%
                                            }
                                            notifCount = notifCount + 1;
                                        }
                                    }
                                    totalNotifCount = notifCount;
                                %>
                    <br><br><div class="pagination">
                        <a href="javascript:void(0);" onclick="prevPage()" class="prevNext" id="prevPage">Trước</a>
                        <a href="javascript:void(0);" onclick="loadPage(1)" id="page-num-1" class="page-num active">1</a>
                        <%
                            int pageCount = (totalNotifCount / loadLimit) + 1;

                            for (int i = 2; i <= pageCount; i++) {
                        %>
                        <a href="javascript:void(0);" onclick="loadPage(<%=i%>)" id="page-num-<%=i%>" class="page-num"><%=i%></a>
                        <%
                            }
                        %>
                        <a href="javascript:void(0);" onclick="nextPage()" class="prevNext" id="nextPage">Sau</a>
                    </div>
                    <br><br><span><a href="<%=request.getContextPath()%>/HomeControl" id="back-home-btn">Quay lại Trang chủ</a></span>
                </div>
            </div>
        </div>
    </body>
</html>
