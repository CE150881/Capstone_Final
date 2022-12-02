<%-- 
    Document   : header_manage
    Created on : 25-Nov-2022, 21:52:31
    Author     : A Hi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <!-- Sidebar -->
        <ul class="navbar-nav bg-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.jsp">
                <div class="sidebar-brand-text mx-3">JPD</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="DashboardControl">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Trang Chủ</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <c:if test="${sessionScope.acc.role == 'Quản trị viên'}">
                <!-- Heading -->
                <div class="sidebar-heading">
                    QUẢN TRỊ VIÊN
                </div>

                <!-- Account -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                       aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Tài Khoản</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quản Lý Tài Khoản:</h6>
                            <a class="collapse-item" href="ManageAccountControl">Danh Sách Tài Khoản</a>
                        </div>
                    </div>
                </li>

                <!-- Notification -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwoo"
                       aria-expanded="true" aria-controls="collapseTwoo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Thông Báo</span>
                    </a>
                    <div id="collapseTwoo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quản Lý Thông Báo:</h6>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/NotificationManage">Danh Sách Thông Báo</a>
                        </div>
                    </div>
                </li>

                <!-- Forum -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                       aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-fw fa-wrench"></i>
                        <span>Cộng Đồng</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quản Lý Cộng Đồng:</h6>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/AdminForum">Báo Cáo Chung</a>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/ReportPost">Bài Đăng Bị Báo Cáo</a>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/ReportComment">Bình Luận Bị Báo Cáo</a>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/Topic">Chủ Đề</a>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/DisablePost">Bài Đăng Bị Vô Hiệu Hóa</a>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/DisableComment">Bình Luận Bị Vô Hiệu Hóa</a>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/DisableTopic">Chủ Đề Bị Vô Hiệu Hóa</a>
                        </div>
                    </div>
                </li>
                
                <!-- Chat -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwou"
                       aria-expanded="true" aria-controls="collapseTwou">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Hỗ Trợ</span>
                    </a>
                    <div id="collapseTwou" class="collapse" aria-labelledby="collapseTwou" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quản Lý Tin Nhắn:</h6>
                            <a class="collapse-item" href="<%= request.getContextPath()%>/chat_manage.jsp">Hỗ Trợ Người Dùng</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">
            </c:if>

            <c:if test="${sessionScope.acc.role == 'Quản lí nội dung'}"> 
                <!-- Heading -->
                <div class="sidebar-heading">
                    QUẢN LÝ NỘI DUNG
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                       aria-expanded="true" aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Bài Học</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quản Lý Bài Học:</h6>
                            <a class="collapse-item" href="ManageAlphabetControl">Bảng Chữ Cái</a>
                            <a class="collapse-item" href="ManageKanjiControl">Kanji</a>
                            <a class="collapse-item" href="ManageGrammarControl">Ngữ Pháp</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse"
                       aria-expanded="true" aria-controls="collapse">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Kiểm Tra</span>
                    </a>
                    <div id="collapse" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quản Lý Bài Kiểm Tra:</h6>
                            <a href="resultControl" class="collapse-item">Kết Quả</a>
                            <a href="testControl" class="collapse-item">Bài Kiểm Tra</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>
            </c:if>
        </ul>
        <!-- End of Sidebar -->
    </body>
</html>
