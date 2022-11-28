<%-- 
    Document   : grammar_grammar
    Created on : 24-Nov-2022, 21:31:47
    Author     : A Hi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Grammar</title>
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

        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css" rel="stylesheet">

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
                        <h2>Ngữ Pháp ${level}</h2>
                        <ol>
                            <li><a href="HomeControl">Trang Chủ</a></li>
                            <li>Ngữ Pháp</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services" style="background: #fff">
                <div class="container" data-aos="fade-up">
                    <div class="row gy-4 mt-4 justify-content-center" data-aos="zoom-in" data-aos-delay="250">
                        <div class="container mt-4">        
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th hidden>ID</th>
                                        <th>Ngữ Pháp</th>
                                        <th>Cách Dùng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listG}" var="g">
                                        <tr onclick="location.href = 'DetailGrammarControl?grammarID=${g.grammarID}';" style="cursor: pointer;">               
                                            <td hidden>${g.grammarID}</td>
                                            <td>${g.structure}</td>
                                            <td>${g.use}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
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

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>

    <!-- Template Main JS File -->
    <script src="user/js/main.js"></script>


</body>

</html>