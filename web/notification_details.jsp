<%-- 
    Document   : notification_details
    Created on : Nov 28, 2022, 4:23:04 PM
    Author     : Admin
--%>

<%@page import="DAOs.Notification.NotificationDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAOs.Account.UserDAO"%>
<%@page import="Models.Notification"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Cộng Đồng</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="${pageContext.request.contextPath}/user/img/logo.jpg" rel="icon">
        <link href="${pageContext.request.contextPath}/user/img/logo.jpg" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="${pageContext.request.contextPath}/user/vendor/aos/aos.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: Gp - v4.9.1
        * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
        <style>
            * {
                box-sizing: border-box;
            }

            /* Column container */
            .row {
                top: 10vh;
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

            #back-home-btn:hover {
                transition: 0.3s;
                background-color: #000;
                color: #fff;
            }

            #back-home-btn {
                text-decoration: none;
                color: #000;
                border: 1px solid #222;
                border-radius: 5px;
                padding: 1vh 1vw;
            }

            .notif-title {
                text-decoration: none;
                color: #000;
            }

            .notif-title-span {
                word-break: break-word;
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
                margin: 4px 4px;
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top" style="background-color: rgba(0,0,0,0.8);">
            <div class="container d-flex align-items-center justify-content-lg-between">

                <h1 class="logo me-auto me-lg-0"><a href="<%= request.getContextPath()%>/HomeControl">JPD<span>.</span></a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->


                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/HomeControl">Trang Chủ</a></li>
                        <li class="dropdown"><a href=""><span>Tài Liệu</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li class="dropdown"><a><span>Bảng Chữ Cái</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <c:forEach items="${listT}" var="q">
                                            <li><a href="AlphabetControl?type=${q.type}">${q.type}</a></li>
                                            </c:forEach>
                                    </ul>
                                </li>
                                <li class="dropdown"><a><span>Kanji</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <c:forEach items="${listL}" var="w">
                                            <li><a href="KanjiControl?level=${w.level}">${w.level}</a></li>
                                            </c:forEach> 
                                    </ul>
                                </li>
                                <li class="dropdown"><a><span>Ngữ Pháp</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <c:forEach items="${listL}" var="e">
                                            <li><a href="GrammarControl?level=${e.level}">${e.level}</a></li>
                                            </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a class="nav-link scrollto" href="">Kiểm Tra</a></li>
                        <li><a class="nav-link scrollto " href="<%= request.getContextPath()%>/Practice">Luyện Tập</a></li>
                        <li><a class="nav-link scrollto " href="<%= request.getContextPath()%>/Forum">Cộng Đồng</a></li>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/chat_user.jsp">Hỗ Trợ</a></li>
                            <c:if test="${sessionScope.acc.role == 'Quản trị viên' || sessionScope.acc.role == 'Quản lí nội dung'}">
                            <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/dashboard.jsp">Quản Lý</a></li>
                            </c:if>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->
                <ul>
                    <c:if test="${sessionScope.acc.role == 'Người dùng' || sessionScope.acc.role == 'Quản trị viên' || sessionScope.acc.role == 'Quản lí nội dung'}">
                        <!-- đã đăng nhập -->

                        <a href="ProfileUserControl" class="logo me-auto me-lg-0" ><img src="${sessionScope.acc.avatar}" alt="" class="rounded-circle"></a>                        
                        <a class="username dropdown-toggle" data-bs-toggle="dropdown" style="color: white">${sessionScope.acc.username}</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="ProfileUserControl">Tài Khoản</a></li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#logoutModal">Đăng Xuất</a></li>                            
                        </ul>
                    </c:if>

                    <c:if test="${sessionScope.acc.role != 'Người dùng' && sessionScope.acc.role != 'Quản trị viên' && sessionScope.acc.role != 'Quản lí nội dung'}">               
                        <a href="<%= request.getContextPath()%>/account_signup.jsp" class="get-started-btn scrollto">Đăng Ký</a>
                        <a href="<%= request.getContextPath()%>/account_login.jsp" class="get-started-btn scrollto">Đăng Nhập</a>
                    </c:if>
                </ul>

            </div>

        </header><!-- End Header -->

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thông Báo</h5>
                        <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Bạn muốn đăng xuất ?</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Hủy</button>
                        <a class="btn" style="background-color: #f5b8c5; color: white" href="<%= request.getContextPath()%>/LogoutControl">Đăng Xuất</a>
                    </div>
                </div>
            </div>
        </div>

        <main id="main" class="">
            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs bg-light">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 style="display: inline-block;">Thông Báo</h2>                            
                        </div>

                        <ol>                                                       
                            <li><a href="<%= request.getContextPath()%>/HomeControl">Trang Chủ</a></li>
                            <li>Thông Báo</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

           
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
                            <span id="title" style="font-weight: bold; font-size: 32px; word-break: break-word;"><%=cTitle%></span><br>
                            <span id="time" style="font-style: italic; font-size: 16px; word-break: break-word;">Đăng bởi <%=cPoster%> vào <%=cTime%></span><br><br><br>
                            <span id="details" style="font-size: 18px; word-break: break-word;"><%=cDetails%></span><br><br>
                            <br><span><a href="<%= request.getContextPath()%>/HomeControl" id="back-home-btn">Quay lại Trang chủ</a>
                        </div>
                    </div>
                    <div class="side">
                        <div class="side-section" id="notif-container">
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
                            <div class="notif-title-container" id="notif-title-container-id-<%=notifCount%>"><a href="<%=request.getContextPath()%>/Notification/<%=id%>" class="notif-title" id="notif-title-id-<%=notifCount%>"><span><%=time%></span><span> - </span><span class="notif-title-span"><%=title%></span></a><br></div>
                                        <%
                                        } else {
                                        %>
                            <div class="notif-title-container" id="notif-title-container-id-<%=notifCount%>"  style="display: none;"><a href="<%=request.getContextPath()%>/Notification/<%=id%>" class="notif-title" id="notif-title-id-<%=notifCount%>"><span><%=time%></span><span> - </span><span class="notif-title-span"><%=title%></span></a><br></div>
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
                        </div>
                    </div>
                </div>
            
        </main>

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                            <div class="footer-info">
                                <h3>JPD<span>.</span></h3>
                                <p>
                                    600 Nguyễn Văn Cừ <br>
                                    An Bình, Cần Thơ<br><br>
                                    <strong>Số Điện Thoại:</strong> 0349554811<br>
                                    <strong>Email:</strong> noreply.jpd@gmail.com<br>
                                </p>                                
                            </div>
                        </div>                                              
                    </div>
                </div>
            </div>
        </footer><!-- End Footer -->

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="${pageContext.request.contextPath}/user/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/aos/aos.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="${pageContext.request.contextPath}/user/js/main.js"></script>

    </body>

</html>
