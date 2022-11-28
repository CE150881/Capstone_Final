<%-- 
    Document   : nav_user
    Created on : 24-Nov-2022, 22:40:44
    Author     : A Hi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- ======= Header ======= -->
<header id="header" class="fixed-top" style="background-color: rgba(0,0,0,0.8);">
    <div class="container d-flex align-items-center justify-content-lg-between">

        <h1 class="logo me-auto me-lg-0"><a href="u-home.html">JPD<span>.</span></a></h1>
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
                <li><a class="nav-link scrollto" href="u-practice.html">Luyện Tập</a></li>
                <li><a class="nav-link scrollto" href="u-forum.html">Cộng Đồng</a></li>
                <li><a class="nav-link scrollto" href="u-forum.html">Liên Hệ</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
        <ul>                   
            <c:if test="${sessionScope.acc.role == 'Người dùng'}">

                <div class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown" style="display: inline-block;">
                        <img src="${sessionScope.acc.avatar}" class="rounded-circle" alt="Avatar" width="30" height="30">
                        ${sessionScope.acc.username}
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="account_profile.jsp">Tài Khoản</a></li>
                        <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#logoutModal">Đăng Xuất</a></li>
                    </ul>
                </div>
        </div>
    </c:if>

    <c:if test="${sessionScope.acc.role != 'Người dùng'}">                  
        <a href="account_signup.jsp" class="get-started-btn scrollto">Đăng Ký</a>
        <a href="account_login.jsp" class="get-started-btn scrollto">Đăng Nhập</a>
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
                <a class="btn" style="background-color: #f5b8c5; color: white" href="LogoutControl">Đăng Xuất</a>
            </div>
        </div>
    </div>
</div> 


