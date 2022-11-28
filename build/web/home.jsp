<%-- 
    Document   : home
    Created on : 24-Nov-2022, 21:07:17
    Author     : A Hi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Trang Chủ</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="user/img/logo.jpg" rel="icon">
        <link href="user/img/logo.jpg" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="user/vendor/aos/aos.css" rel="stylesheet">
        <link href="user/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="user/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="user/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="user/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="user/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="user/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="user/css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: Gp - v4.9.1
        * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top">
            <div class="container d-flex align-items-center justify-content-lg-between">

                <h1 class="logo me-auto me-lg-0"><a href="HomeControl">JPD<span>.</span></a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="user/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto active" href="HomeControl">Trang Chủ</a></li>
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
                                            <li><a href="Kanji?level=${w.level}">${w.level}</a></li>
                                            </c:forEach> 
                                    </ul>
                                </li>
                                <li class="dropdown"><a><span>Ngữ Pháp</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <c:forEach items="${listL}" var="e">
                                            <li><a href="Grammar?level=${e.level}">${e.level}</a></li>
                                            </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a class="nav-link scrollto" href="">Kiểm Tra</a></li>
                        <li><a class="nav-link scrollto " href="<%= request.getContextPath()%>/Practice">Luyện Tập</a></li>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/Forum">Cộng Đồng</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->
                <ul>

                    <c:if test="${sessionScope.acc.role == 'Người dùng'}">
                        <!-- đã đăng nhập -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: white; padding-right:5px;" fill="currentColor" class="bi bi-envelope-exclamation" viewBox="0 0 17 17">
                        <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1.5a.5.5 0 0 1-1 0V11a.5.5 0 0 1 1 0Zm0 3a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z"/>
                        </svg>
                        <a href="HomeControl" class="logo me-auto me-lg-0" ><img src="${sessionScope.acc.avatar}" alt="" class="rounded-circle"></a>
                        <a class="scrollto" href="account_profile.jsp" style="color: white">${sessionScope.acc.username}</a>
                    </c:if>

                    <c:if test="${sessionScope.acc.role != 'Người dùng'}">                  
                        <a href="account_signup.jsp" class="get-started-btn scrollto">Đăng Ký</a>
                        <a href="account_login.jsp" class="get-started-btn scrollto">Đăng Nhập</a>
                    </c:if>

                </ul>
            </div>
        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center justify-content-center">
            <div class="container" data-aos="fade-up">

                <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
                    <div class="col-xl-6 col-lg-8">
                        <h1>Ứng dụng học tiếng Nhật JPD<span>.</span></h1>
                        <h2>Học tiếng nhật miễn phí và hiệu quả</h2>
                    </div>
                </div>

                <div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-store-line"></i>
                            <h3><a href="HomeControl">Trang Chủ</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-bar-chart-box-line"></i>
                            <h3><a href="">Tài Liệu</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-calendar-todo-line"></i>
                            <h3><a href="">Kiểm Tra</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-paint-brush-line"></i>
                            <h3><a href="<%= request.getContextPath()%>/Practice">Luyện Tập</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-database-2-line"></i>
                            <h3><a href="<%= request.getContextPath()%>/Forum">Cộng Đồng</a></h3>
                        </div>
                    </div>
                </div>

            </div>
        </section><!-- End Hero -->

        <main id="main">

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container" data-aos="fade-up">

                    <div class="row">
                        <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                            <img src="user/img/about.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
                            <h3>Bảng Tin</h3>
                            <p class="fst-italic">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                magna aliqua.
                            </p>
                            <ul>
                                <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                                <li><i class="ri-check-double-line"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                                <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                            </ul>
                            <p>
                                Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident
                            </p>
                        </div>
                    </div>

                </div>
            </section><!-- End About Section -->

            <!-- ======= Features Section ======= -->
            <section id="features" class="features">
                <div class="container" data-aos="fade-up">

                    <div class="row">
                        <div class="image col-lg-6" style='background-image: url("user/img/3.jpg");' data-aos="fade-right"></div>
                        <div class="col-lg-6" data-aos="fade-left" data-aos-delay="100">
                            <div class="icon-box mt-5 mt-lg-0" data-aos="zoom-in" data-aos-delay="150">
                                <i class="bx bx-receipt"></i>
                                <h4>Tài Liệu</h4>
                                <p>Tra cứu bảng chữ cái, kanji theo cấp độ và ngữ pháp theo cấp độ</p>
                            </div>
                            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                                <i class="bx bx-cube-alt"></i>
                                <h4>Kiểm Tra</h4>
                                <p>Thử sức với những bài thi JLPT ở mọi cấp độ</p>
                            </div>
                            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                                <i class="bx bx-images"></i>
                                <h4>Luyện Tập</h4>
                                <p>Trau dồi kiến thức tiếng Nhật mọi kỹ năng</p>
                            </div>
                            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                                <i class="bx bx-shield"></i>
                                <h4>Cộng Đồng</h4>
                                <p>Tham gia cộng đồng để trao đổi, giải đáp thắc mắc về tiếng Nhật</p>
                            </div>
                        </div>
                    </div>

                </div>
            </section><!-- End Features Section -->

            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container" data-aos="zoom-in">

                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <img src="user/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                    <h3>Saul Goodman</h3>
                                    <h4>Ceo &amp; Founder</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        自分の生きる人生を愛せ。自分の愛する人生を生きろ。
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <img src="user/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                    <h3>Sara Wilsson</h3>
                                    <h4>Designer</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        自分の行為に責任を持つべきだ。
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <img src="user/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                    <h3>Jena Karlis</h3>
                                    <h4>Store Owner</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        すべては練習のなかにある。
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div><!-- End testimonial item -->
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section><!-- End Testimonials Section -->

            <!-- ======= Team Section ======= -->
            <section id="team" class="team">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Nhóm phát triển JPD</h2>
                    </div>

                    <div class="row">

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="100">
                                <div class="member-img">
                                    <img src="user/img/team/team-1.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Quốc Hưng</h4>
                                    <span>Trưởng nhóm</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="200">
                                <div class="member-img">
                                    <img src="user/img/team/team-2.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Thanh Tâm</h4>
                                    <span>Thành viên</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="300">
                                <div class="member-img">
                                    <img src="user/img/team/team-3.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Mạnh Tân</h4>
                                    <span>Thành viên</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="400">
                                <div class="member-img">
                                    <img src="user/img/team/team-4.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Lâm Sang</h4>
                                    <span>Thành viên</span>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Team Section -->

        </main><!-- End #main -->

        <jsp:include page="footer_user.jsp" />



        <!-- Vendor JS Files -->
        <script src="user/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="user/vendor/aos/aos.js"></script>
        <script src="user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="user/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="user/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="user/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="user/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="user/js/main.js"></script>

    </body>

</html>
