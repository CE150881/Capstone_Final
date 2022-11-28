<%-- 
    Document   : forum_newPost
    Created on : Nov 25, 2022, 1:23:13 PM
    Author     : ACER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Models.User"%>
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
                <div>
                    <div class="card mb-4 box-shadow">
                        <div class="card-body">
                            <form role='form' method="post" action="NewPost" accept-charset="utf-8">
                                <%
                                    User u = (User) session.getAttribute("acc");
                                %>
                                <input name="userID" value="<%= u.getUserID()%>" style="display: none">
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Tiêu Đề</label>
                                    <textarea class="form-control" required="required" name="post_title" id="exampleFormControlTextarea1"
                                              rows="1" placeholder="Please enter post title"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Nội Dung</label>
                                    <textarea class="form-control" required="required" name="post_content" id="exampleFormControlTextarea2"
                                              rows="10" placeholder="Please enter post content"></textarea>
                                </div>
                                <select name="topic_id" class="form-select" aria-label="Default select example">
                                    <%
                                        ResultSet rs = (ResultSet) session.getAttribute("allTopic");
                                        while (rs.next()) {

                                    %>
                                    <option value="<%= rs.getString("topic_id")%>"><%= rs.getString("topic_name")%></option>
                                    <%                                            }
                                    %>
                                </select>
                                <Button type="submit" value="New Post" name="newPost" class="btn btn-sm btn-outline-secondary">Đăng Bài</button>

                            </form>
                        </div>
                    </div>
                </div>                
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