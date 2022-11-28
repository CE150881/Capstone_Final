<%-- 
    Document   : alphabet_alphabet
    Created on : 24-Nov-2022, 21:21:57
    Author     : A Hi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <jsp:include page="header_user.jsp" />

        <main id="main">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Kanji ${level}</h2>
                        <ol>
                            <li><a href="HomeControl">Trang Chủ</a></li>
                            <li>Kanji</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services" style="background: #fff">
                <div class="container" data-aos="fade-up">
                    <div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">

                        <c:forEach items="${listK}" var="g">
                            <div class="col-xl-3 col-md-4" onclick="location.href = 'DetailKanjiControl?kanjiID=${g.kanjiID}';" style="cursor: pointer;">
                                <div class="icon-box">
                                    <p hidden>${g.kanjiID}</p>
                                    <h4><a href="">${g.kanji}</a></h4>
                                    <p>${g.meaning}</p>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </section><!-- End Services Section -->

        </main><!-- End #main -->

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
