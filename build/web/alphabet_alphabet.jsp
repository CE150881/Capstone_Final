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

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top" style="background-color: rgba(0,0,0,0.8);">
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
                                            <li><a href="KanjiControl?levelID=${w.levelID}">${w.levelName}</a></li>
                                            </c:forEach> 
                                    </ul>
                                </li>
                                <li class="dropdown"><a><span>Ngữ Pháp</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <c:forEach items="${listL}" var="e">
                                            <li><a href="GrammarControl?levelID=${e.levelID}">${e.levelName}</a></li>
                                            </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="nav-link scrollto"><span>Kiểm Tra</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <c:forEach items="${listtag}" var="i">
                                    <li class="dropdown"><a><span>${i.desc}</span> <i class="bi bi-chevron-right"></i></a>
                                        <ul>
                                            <c:forEach items="${listlevel}" var="x">
                                                <li><a href="choiceTestControl?levelID=${x.levelID}&&tagID=${i.tagID}">${x.levelName}</a></li>
                                                </c:forEach> 
                                        </ul>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li><a class="nav-link scrollto " href="<%= request.getContextPath()%>/Practice">Luyện Tập</a></li>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/Forum">Cộng Đồng</a></li>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/Chat">Hỗ Trợ</a></li>
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
                        <a href="account_signup.jsp" class="get-started-btn scrollto">Đăng Ký</a>
                        <a href="account_login.jsp" class="get-started-btn scrollto">Đăng Nhập</a>
                    </c:if>
                </ul>
            </div>

            <style>
                .dropdown-menu li:hover>a{
                    background-color: #f5b8c5;
                }
            </style>
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
                        <a class="btn" style="background-color: #f5b8c5; color: white" href="LogoutControl">Đăng Xuất</a>
                    </div>
                </div>
            </div>
        </div>


        <main id="main">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>${type}</h2>
                        <ol>
                            <li><a href="HomeControl">Trang Chủ</a></li>
                            <li>Bảng Chữ Cái</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services" style="background: #fff">
                <div class="container" data-aos="fade-up">
                    <div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">

                        <c:forEach items="${listA}" var="g">
                            <div class="col-xl-3 col-md-4">
                                <div class="icon-box" onclick="myFunction()">
                                    <h4><input id="text" value="${g.alphabet}" style="display: none"><a>${g.alphabet}</a></input></h4>
                                    <p>${g.pronounce}</p>                                    
                                </div>
                                <script>
                                    function myFunction() {
                                        var text = document.getElementById("text").value
                                        document.getElementById("text").value = text;

                                        var msg = new SpeechSynthesisUtterance();
                                        var voices = window.speechSynthesis.getVoices();

                                        msg.volume = 1; // 0 to 1
                                        msg.rate = 1; // 0.1 to 10                
                                        msg.text = text;
                                        msg.lang = 'ja-JP';

                                        msg.onend = function (e) {
                                            console.log('Finished in ' + event.elapsedTime + ' seconds.');
                                        };
                                        speechSynthesis.speak(msg);
                                    }
                                </script>
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
