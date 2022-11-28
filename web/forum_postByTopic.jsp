<%-- 
    Document   : forum_postByTopic
    Created on : Nov 25, 2022, 1:40:02 PM
    Author     : ACER
--%>

<%@page import="Models.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Alphabet</title>
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
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top" style="background-color: rgba(0,0,0,0.8);">
            <div class="container d-flex align-items-center justify-content-lg-between">

                <h1 class="logo me-auto me-lg-0"><a href="u-home.html">JPD<span>.</span></a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="user/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto" href="u-home.html">Trang Chủ</a></li>
                        <li class="dropdown"><a href=""><span>Tài Liệu</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li class="dropdown"><a href="u-alphabet.html"><span>Bảng Chữ Cái</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <li><a href="#">Deep Drop Down 1</a></li>
                                        <li><a href="#">Deep Drop Down 2</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="u-kanji.html"><span>Kanji</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <li><a href="#">N1</a></li>
                                        <li><a href="#">N2</a></li>
                                        <li><a href="#">N3</a></li>
                                        <li><a href="#">N4</a></li>
                                        <li><a href="#">N5</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="u-grammar.html"><span>Ngữ Pháp</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <li><a href="#">N1</a></li>
                                        <li><a href="#">N2</a></li>
                                        <li><a href="#">N3</a></li>
                                        <li><a href="#">N4</a></li>
                                        <li><a href="#">N5</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a class="nav-link scrollto" href="">Kiểm Tra</a></li>
                        <li><a class="nav-link scrollto " href="u-practice.html">Luyện Tập</a></li>
                        <li><a class="nav-link scrollto active" href="<%= request.getContextPath()%>/Forum">Cộng Đồng</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->
                <ul>
                    <!-- đã đăng nhập -->                    
                    <a href="u-home.html" class="logo me-auto me-lg-0" ><img src="${pageContext.request.contextPath}/user/img/logo.jpg" alt="" class="rounded-circle"></a>
                    <a class="scrollto" href="u-profile.html">Thanh Tâm</a>

                    <!-- chưa đăng nhập
                      <a href="signup.html" class="get-started-btn scrollto">Đăng Ký</a>
                    <a href="login.html" class="get-started-btn scrollto">Đăng Nhập</a>
                    -->

                </ul>
            </div>
        </header><!-- End Header -->

        <main id="main" class="bg-light">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs bg-light">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Cộng Đồng</h2>
                        <ol>
                            <li><a href="u-home.html">Trang Chủ</a></li>
                            <li>Cộng Đồng</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

            <div class="container">
                <div class="card box-shadow">
                    <div class="d-flex justify-content-center">
                        <div>
                            <p style="padding-left: 5px; padding-right: 5px; color: black; font-weight: bold; font-size: 1.2rem; display: inline-block">Chủ Đề: </p>
                            <a style="padding-left: 5px; padding-right: 5px; font-size: 1.2rem; display: inline-block" href="<%= request.getContextPath()%>/Forum">Tất Cả</a>
                            <%
                                ResultSet allTopic = (ResultSet) session.getAttribute("allTopic");
                                while (allTopic.next()) {

                            %>
                            <a style="padding-left: 5px; padding-right: 5px; font-size: 1.2rem; display: inline-block" href="<%= request.getContextPath()%>/OneTopic/<%= allTopic.getString("topic_id")%>"><%= allTopic.getString("topic_name")%></a>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
            <br>

            <div class="container">
                <div class="card box-shadow">
                    <div class="d-flex justify-content-between align-items-center">
                        <%
                            User u = (User) session.getAttribute("acc");
                            if (u != null) {
                        %>
                        <div>
                            <a href="<%= request.getContextPath()%>/NewPost" class="btn btn-outline-success" role="button">Tạo Bài Đăng Mới</a>
                            <a href="<%= request.getContextPath()%>/reportNotification.jsp" style="color: black; padding-left: 10px; padding-right: 10px;">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                                </svg>                                
                            </a>
                            <a href="<%= request.getContextPath()%>/reportNotification.jsp" style="color: black;">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-envelope-exclamation-fill" viewBox="0 0 16 16">
                                <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.026A2 2 0 0 0 2 14h6.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.606-3.446l-.367-.225L8 9.586l-1.239-.757ZM16 4.697v4.974A4.491 4.491 0 0 0 12.5 8a4.49 4.49 0 0 0-1.965.45l-.338-.207L16 4.697Z"/>
                                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1.5a.5.5 0 0 1-1 0V11a.5.5 0 0 1 1 0Zm0 3a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z"/>
                                </svg>
                            </a>
                        </div>
                        <%
                        } else {
                        %>
                        <div></div>
                        <%
                            }
                        %>
                        <form class="form-inline" onsubmit="window.location = '<%= request.getContextPath()%>/SearchPost/' + search.value; return false;">
                            <div class="input-group">
                                <input type="search" class="form-control" placeholder="Tìm Kiếm" aria-label="Tìm Kiếm" name="search" aria-describedby="button-addon2">
                                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Tìm Kiếm</button>
                            </div>
                        </form>
                    </div>
                </div>
                <br>

                <%
                    ResultSet rs = (ResultSet) session.getAttribute("postByTopic");
                    while (rs.next()) {

                %>
                
                    <div onclick="location.href = '<%= request.getContextPath()%>/Post/<%= rs.getString("post_id")%>';" style="cursor: pointer;">
                        <div class="card mb-4 box-shadow">
                            <div class="card-body">
                                <div class="d-flex">
                                    <img src="<%= request.getContextPath()%>/<%= rs.getString("avatar")%>" class="rounded-circle" alt="" width="40" height="40">
                                    <p class="text-muted p-2"><%= rs.getString("username")%></p>
                                    <p class="text-muted ms-auto p-2"><%= rs.getString("post_date").substring(0, Math.min(rs.getString("post_date").length(), 19))%></p>
                                </div>                            
                            </div>
                            <div class="card-body" >
                                <h3 style="display: inline-block" class="card-text"><%= rs.getString("post_title")%></h3>
                                <a style="color: blue" class="card-text" href="<%= request.getContextPath()%>/OneTopic/<%= rs.getString("topic_id")%>">#<%= rs.getString("topic_name")%></a>
                                <p class="card-text"><%= rs.getString("post_content")%></p>
                                <p class="card-text">Số Bình Luận: <%= rs.getString("comment_count")%></p>
                            </div>

                        </div>
                    </div>
                <%
                    }
                %>
                </div>

        </main><!-- End #main -->

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
                                <div class="social-links mt-3">
                                    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Dành Cho Bạn</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="">Trang Chủ</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Tài Liệu</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Kiểm Tra</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Luyện Tập</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Cộng Đồng</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Dịch Vụ Của Chúng Tôi</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Nguyên Tắc Cộng Đồng</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Quyền Riêng Tư</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Điều Khoản</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-4 col-md-6 footer-newsletter">
                            <h4>Nhận Thông Báo</h4>
                            <p>Chúng tôi sẽ gửi email cho bạn khi có thông báo mới.</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit" value="Gửi">
                            </form>
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
