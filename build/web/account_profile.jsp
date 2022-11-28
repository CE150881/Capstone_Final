<%-- 
    Document   : account_profile
    Created on : 24-Nov-2022, 21:22:31
    Author     : A Hi
--%>

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
    <style type="text/css">
        #myTab a.nav-link{
            color: black;
        }
        #myTab a.nav-link:hover{
            color: white;
            background-color: #f5b8c5;
        }
    </style>
    <body>

        <jsp:include page="header_user.jsp" />

        <main id="main">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Tài Khoản</h2>
                        <ol>
                            <li><a href="u-home.html">Trang Chủ</a></li>
                            <li>Tài Khoản</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

            <!-- ======= Portfolio Section ======= -->
            <section id="portfolio" class="portfolio">
                <div class="container mt-3">

                    <ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="true">Thông Tin Tài Khoản</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="info-tab" data-bs-toggle="tab" data-bs-target="#info" type="button" role="tab" aria-controls="info" aria-selected="false">Cập Nhật Thông Tin</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="avatar-tab" data-bs-toggle="tab" data-bs-target="#avatar" type="button" role="tab" aria-controls="avatar" aria-selected="false">Cập Nhật Ảnh Đại Diện</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pw-tab" data-bs-toggle="tab" data-bs-target="#pw" type="button" role="tab" aria-controls="pw" aria-selected="false">Cập Nhật Mật Khẩu</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">

                        <div class="tab-pane fade show active" style="margin-top: 50px; margin-left: 300px;" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="card mb-3" style="max-width: 770px;">
                                <div class="row g-0 img-fluid d-flex justify-content-center" >
                                    <div class="d-flex justify-content-center" style="margin-top: 20px">
                                        <img src="${sessionScope.acc.avatar}" alt="avatar" width="60%">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h4 class="card-title d-flex justify-content-center">Tài Khoản Của Bạn</h4>
                                            <div style="margin-left: 100px;">
                                                <h6 class="card-text"><strong>Tên Người Dùng: </strong>${sessionScope.acc.username}</h6>                         
                                                <h6><strong>Email: </strong>${sessionScope.acc.email}</h6>
                                                <h6><strong>Số Điện Thoại: </strong>${sessionScope.acc.phone}</h6>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" style="margin-top: 50px; margin-left: 500px;" id="info" role="tabpanel" aria-labelledby="info-tab">    
                            <div class="col-md-4">        
                                <form action="UpdateInfoControl" method="post">
                                    <div class="mb-3 mt-3">
                                        <label for="email" class="form-label">Tên Người Dùng:</label>
                                        <input type="text" class="form-control" value="${sessionScope.acc.username}" name="username">
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="pwd" class="form-label">Số Điện Thoại:</label>
                                        <input type="tel" class="form-control" id="phone" value="${sessionScope.acc.phone}" name="phone">
                                    </div>
                                    <button type="submit" class="btn " style="background-color: #f5b8c5; margin:auto; display:block;">Cập Nhật</button>
                                </form>
                            </div>
                        </div>

                        <div class="tab-pane fade" style="margin-top: 50px; margin-left: 500px;" id="avatar" role="tabpanel" aria-labelledby="avatar-tab">
                            <div class="col-md-4">        
                                <form action="UpdateAvatarControl" method="post" enctype="multipart/form-data">
                                    <div class="mb-3 mt-3">
                                        <div class="d-flex align-items-start">
                                            <img src="${sessionScope.acc.avatar}" class="img" alt="avatar" width="70%">
                                            <div class="pl-sm-4 pl-2" id="img-section">
                                                <p>Chấp nhận file .png. Ít hơn 1MB</p>
                                                <input type="file" name="file">                     
                                            </div>
                                        </div>
                                    </div>                  
                                    <button type="submit" class="btn " style="background-color: #f5b8c5; margin:auto; display:block;">Cập Nhật</button>
                                </form>
                            </div>
                        </div>

                        <div class="tab-pane fade" style="margin-top: 50px; margin-left: 500px;" id="pw" role="tabpanel" aria-labelledby="pw-tab">
                            <div class="col-md-4">        
                                <form action="UpdatePasswordControl" method="post">
                                    <div class="mb-3 mt-3">
                                        <label for="email" class="form-label">Mật Khẩu Mới:</label>
                                        <input type="password" class="form-control" placeholder="" id="txtPassword" name="newPassword" value="${newpass}">
                                    </div>
                                    <div class="mb-3">
                                        <label for="pwd" class="form-label">Nhập Lại Mật Khẩu Mới:</label>
                                        <input type="password" class="form-control" placeholder="" id="txtConfirmPassword" name="reNewPassword" value="${renewpass}">
                                    </div>
                                    <button type="submit" class="btn" onclick="return Validate()" style="background-color: #f5b8c5; margin:auto; display:block;">Cập Nhật</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                </div>
                </div>
            </section><!-- End Portfolio Section -->

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
<script type="text/javascript">
        function Validate() {
            var password = document.getElementById("txtPassword").value;
            var confirmPassword = document.getElementById("txtConfirmPassword").value;
            if (password != confirmPassword) {
                alert("Mật khẩu không trùng khớp!");
                return false;
            }
            return true;
        }
    </script>
</html>