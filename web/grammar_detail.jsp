<%-- 
    Document   : grammar_detail
    Created on : 25-Nov-2022, 20:57:44
    Author     : A Hi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Portfolio Details - Gp Bootstrap Template</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="user/img/favicon.png" rel="icon">
        <link href="user/img/apple-touch-icon.png" rel="apple-touch-icon">

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
                        <p onclick="history.back(-1)"><i class="bi bi-arrow-left"></i> Quay lại</p>
                        <ol>
                            <li><a href="HomeControl">Home</a></li>
                            <li>Chi Tiết Ngữ Pháp</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

        </section><!-- End Breadcrumbs -->

        <!-- ======= Portfolio Details Section ======= -->
        <section id="portfolio-details" class="portfolio-details">
            <div class="container d-flex justify-content-center">

                <div class="col-lg-8">
                    <div class="portfolio-info">
                        <ul>
                            <p><strong>Cấu trúc: </strong>${detail.structure}</p>
                            <li><strong>Cấp độ: </strong>${detail.level}</li>
                            <p><strong>Cách dùng: </strong>${detail.use}</p>
                            <p><strong>Ví dụ: </strong></p>
                            <p>
                                ${detail.example1}
                            </p>
                            <p>
                                ${detail.exampleM1}
                            </p>
                            <p><strong>Ví dụ: </strong></p>
                            <p>
                                ${detail.example2}
                            </p>
                            <p>
                                ${detail.exampleM1}
                            </p>
                        </ul>
                    </div>

                </div>

            </div>

            </div>
        </section><!-- End Portfolio Details Section -->

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
