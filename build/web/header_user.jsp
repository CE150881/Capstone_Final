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
                <li><a class="nav-link scrollto " href="<%= request.getContextPath()%>/Practice">Luyện Tập</a></li>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/Forum">Cộng Đồng</a></li>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/chat_user.jsp">Hỗ Trợ</a></li>
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


