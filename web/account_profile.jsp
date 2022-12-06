<%-- 
    Document   : account_profile
    Created on : 24-Nov-2022, 21:22:31
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

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
        .dropdown-menu li:hover>a{
            background-color: #f5b8c5;
        }
    </style>

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
                        <h2>Tài Khoản</h2>
                        <ol>
                            <li><a href="HomeControl">Trang Chủ</a></li>
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
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="history-tab" data-bs-toggle="tab" data-bs-target="#history" type="button" role="tab" aria-controls="history" aria-selected="false" href="viewHistoryTest">Lịch Sử Kiểm Tra</a>
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
                                <!--
                                <form action="UpdateAvatarControl" method="post" enctype="multipart/form-data">
                                    <div class="mb-3 mt-3">
                                        <div class="d-flex align-items-start">
                                            <img src="" class="img" alt="avatar" width="70%">
                                            <div class="pl-sm-4 pl-2" id="img-section">
                                                <p>Chấp nhận file .png. Ít hơn 1MB</p>
                                                <input type="file" name="file">                     
                                            </div>
                                        </div>
                                    </div>                  
                                    <button type="submit" class="btn " style="background-color: #f5b8c5; margin:auto; display:block;">Cập Nhật</button>
                                </form> -->

                                <img src="${sessionScope.acc.avatar}" class="img" alt="avatar" width="70%">
                                <form method="post" action="UpdateAvatarControl" enctype="multipart/form-data">
                                    Select file to upload: <input type="file" name="file" size="60" /><br /><br /> 
                                    <input type="submit" value="Upload" />
                                </form>
                            </div>
                        </div>

                        <div class="tab-pane fade" style="margin-top: 50px; margin-left: 500px;" id="pw" role="tabpanel" aria-labelledby="pw-tab">
                            <div class="col-md-4">        
                                <form action="UpdatePasswordControl" method="post">
                                    <div class="mb-3 mt-3 form-group">
                                        <label for="email" class="form-label">Mật Khẩu Mới:</label>
                                        <input type="password" class="form-control" placeholder="" id="txtPassword" name="newPassword" value="${newpass}">
                                        <span toggle="#txtPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                    </div>
                                    <div class="mb-3 form-group">
                                        <label for="pwd" class="form-label">Nhập Lại Mật Khẩu Mới:</label>
                                        <input type="password" class="form-control" placeholder="" id="txtConfirmPassword" name="reNewPassword" value="${renewpass}">
                                        <span toggle="#txtPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                    </div>
                                    <button type="submit" class="btn" onclick="return Validate()" style="background-color: #f5b8c5; margin:auto; display:block;">Cập Nhật</button>
                                </form>
                            </div>
                        </div>

                        <div class="tab-pane fade" style="margin-top: 50px; margin-left: 300px;" id="history" role="tabpanel" aria-labelledby="history-tab">

                            <form action="${pageContext.request.contextPath}/resultDetail" method="POST">
                                <table id="example" class="table table-striped" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Test</th>
                                            <th>Thời Gian Bắt Đầu</th>
                                            <th>Thời Gian Kết Thúc</th>
                                            <th>Tổng Điểm</th>
                                            <th>Tổng Đáp Án Đúng</th>
                                            <th>Xem Chi Tiết</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <div class="resultform">
                                        <c:forEach items="${listResult}" var="o" varStatus="i">
                                            <tr>
                                                <td>${i.index+1}</td>
                                                <td>${o.test}</td>
                                                <td>${o.timeBigin}</td>
                                                <td>${o.timeExpire}</td>
                                                <td>${o.score}</td>
                                                <td>${o.trueQuestion}</td>
                                                <td><a href="viewResultDetail?resultID=${o.resultID}" class="btn btn-success" tabindex="-1" role="button">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                                                        <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                                                        <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
                                                        </svg>
                                                        Đáp Án Chi tiết
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </div>
                                    </tbody>
                                </table>
                            </form>

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
                                        $(document).ready(function () {
                                            $(".toggle-password").click(function () {

                                                $(this).toggleClass("fa-eye fa-eye-slash");
                                                var input = $($(this).attr("toggle"));
                                                if (input.attr("type") == "password") {
                                                    input.attr("type", "text");
                                                } else {
                                                    input.attr("type", "password");
                                                }
                                            });
                                        });

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