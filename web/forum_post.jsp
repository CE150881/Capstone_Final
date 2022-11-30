<%-- 
    Document   : forum_post
    Created on : Nov 25, 2022, 11:34:50 AM
    Author     : ACER
--%>

<%@page import="Models.ForumTopic"%>
<%@page import="Models.ForumPost"%>
<%@page import="Models.User"%>
<%@page import="java.sql.ResultSet"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="${pageContext.request.contextPath}/user/img/logo.jpg" rel="icon">
        <link href="${pageContext.request.contextPath}/user/img/logo.jpg" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="${pageContext.request.contextPath}/user/vendor/aos/aos.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/user/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet">

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

                <h1 class="logo me-auto me-lg-0"><a href="<%= request.getContextPath()%>/HomeControl">JPD<span>.</span></a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="user/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/HomeControl">Trang Chủ</a></li>
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
                        <li><a class="nav-link scrollto active" href="<%= request.getContextPath()%>/Forum">Cộng Đồng</a></li>
                        <li><a class="nav-link scrollto" href="<%= request.getContextPath()%>/chat_user.jsp">Hỗ Trợ</a></li>
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
                        <a href="<%= request.getContextPath()%>/account_signup.jsp" class="get-started-btn scrollto">Đăng Ký</a>
                        <a href="<%= request.getContextPath()%>/account_login.jsp" class="get-started-btn scrollto">Đăng Nhập</a>
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
                        <a class="btn" style="background-color: #f5b8c5; color: white" href="<%= request.getContextPath()%>/LogoutControl">Đăng Xuất</a>
                    </div>
                </div>
            </div>
        </div>

        <main id="main" class="bg-light">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs bg-light">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 style="display: inline-block;">Cộng Đồng</h2>                            
                        </div>

                        <ol>                                                       
                            <li><a href="<%= request.getContextPath()%>/HomeControl">Trang Chủ</a></li>
                            <li>Cộng Đồng</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->
            
            <div class="bg-light">
                <div class="container">
                    <div>
                        <%
                            ForumPost p = (ForumPost) session.getAttribute("singlePost");
                            ForumTopic t = (ForumTopic) session.getAttribute("singleTopic");

                            User u2 = (User) session.getAttribute("userPost");
                        %>
                        <div>
                            <div class="card mb-4 box-shadow">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <img src="<%= request.getContextPath()%>/<%= u2.getAvatar()%>" class="rounded-circle" alt="" width="40" height="40">
                                        <p class="text-muted p-2"><%= u2.getUsername()%></p>
                                        <p class="text-muted ms-auto p-2"><%= p.getPost_date().substring(0, Math.min(p.getPost_date().length(), 19))%></p>
                                    </div>                                    
                                </div>
                                <div class="card-body"">
                                    <h3 style="display: inline-block" class="card-text"><%= p.getPost_title()%></h3>
                                    <a style="color: blue" class="card-text" href="<%= request.getContextPath()%>/OneTopic/<%= t.getTopic_id()%>">#<%= t.getTopic_name()%></a>
                                    <p class="card-text"><%= p.getPost_content()%></p>
                                    <%
                                        User u = (User) session.getAttribute("acc");
                                        if (u != null) {
                                            if (p.getUser_id() == u.getUserID()) {
                                    %>
                                    <div>
                                        <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExamplePost" aria-expanded="false" aria-controls="multiCollapseExamplePost"
                                                class="btn btn-outline-secondary">Chỉnh Sửa</button>
                                        <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModalPost"
                                                class="btn btn-danger">Xoá</button>
                                    </div>                                    
                                    <% } else {
                                    %>
                                    <div class="btn-group">                                       
                                        <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModalPostReport"
                                                class="btn btn-danger">Báo Cáo</button>
                                    </div>
                                    <%
                                            }
                                        }
                                    %>
                                </div>                                                
                            </div>
                        </div>

                        <!-- Edit Post-->
                        <div class="collapse multi-collapse" id="multiCollapseExamplePost">
                            <div class="card mb-4 box-shadow">
                                <div class="card-body">
                                    <form role='form' method="post" action="Post">

                                        <input name="post_id" value="<%= p.getPost_id()%>" style="display: none">
                                        <input name="newReply" value="" style="display: none">
                                        <input name="edit" value="" style="display: none">
                                        <input name="delete" value="" style="display: none">                                        
                                        <input name="deletePost" value="" style="display: none">

                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Chỉnh Sửa Chủ Đề</label>
                                            <select name="topic_id" class="form-select" aria-label="Default select example">
                                                <%
                                                    ResultSet rt = (ResultSet) session.getAttribute("allTopic");
                                                    while (rt.next()) {

                                                %>
                                                <option <% if (p.getTopic_id() == Integer.parseInt(rt.getString("topic_id"))) {
                                                    %>selected<%
                                                        }

                                                    %>
                                                    value="<%= rt.getString("topic_id")%>"><%= rt.getString("topic_name")%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                            <br>
                                            <label for="exampleFormControlTextarea1">Chỉnh Sửa Tiêu Đề</label>
                                            <textarea required="required" maxlength="100" name="post_title" class="form-control" id="exampleFormControlTextarea1"
                                                      rows="1"><%= p.getPost_title()%></textarea>
                                                      <br>
                                            <label for="exampleFormControlTextarea1">Chỉnh Sửa Nội Dung</label>
                                            <textarea required="required" maxlength="500" name="post_content" class="form-control" id="exampleFormControlTextarea1"
                                                      rows="3"><%= p.getPost_content()%></textarea>
                                                      <br>
                                        </div>
                                        <button type="submit" value="Edit" name="editPost"
                                                class="btn  btn-outline-secondary">Chỉnh Sửa</button>
                                        <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExamplePost" aria-expanded="false" aria-controls="multiCollapseExamplePost"
                                                class="btn  btn-outline-secondary">Đóng</button>
                                    </form>

                                </div>

                            </div>
                        </div>
                        <!-- Modal Delete Post-->
                        <div class="modal fade" id="exampleModalPost" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Bạn có chắc sẽ xoá bài đăng này?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                        <form role='form' method="post" action="Post">
                                            <input name="newReply" value="" style="display: none">
                                            <input name="edit" value="" style="display: none">
                                            <input name="delete" value="" style="display: none">
                                            <input name="editPost" value="" style="display: none">                                        
                                            <input name="post_id" value="<%= p.getPost_id()%>" style="display: none">                                                   
                                            <button type="submit" value="Delete" name="deletePost" class="btn btn-danger">Xoá</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal Report Post-->
                        <div class="modal fade" id="exampleModalPostReport" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Báo Cáo Bài Đăng</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Bạn có chắc khi báo cáo bài đăng này?
                                        <form id="myform" role='form' method="post" action="<%= request.getContextPath()%>/Report">
                                            <label for="exampleFormControlTextarea1">Lý Do</label>
                                            <textarea required="required" maxlength="500" placeholder="Nội dung (Tối đa 500 chứ cái)" name="report_post_reason" class="form-control" id="exampleFormControlTextarea1"
                                                      rows="3"></textarea>
                                            <input name="newReply" value="" style="display: none">
                                            <input name="edit" value="" style="display: none">
                                            <input name="delete" value="" style="display: none">
                                            <input name="editPost" value="" style="display: none">
                                            <input name="reportComment" value="" style="display: none">
                                            <input name="deletePost" value="" style="display: none">
                                            <input name="post_id" value="<%= p.getPost_id()%>" style="display: none">
                                            <%
                                                if (u != null) {
                                            %>
                                            <input name="userID" value="<%= u.getUserID()%>" style="display: none">                                                        

                                            <%
                                                }
                                            %>
                                        </form>                                                        
                                    </div>
                                    <div class="modal-footer">  
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                        <button type="submit" form="myform" value="reportPost" name="reportPost" class="btn btn-danger">Báo Cáo</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <%
                            String check = "";
                            check = (String) session.getAttribute("report");
                            if (check != null && check.equalsIgnoreCase("success")){
                        %>                
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Bạn đã báo cáo thành công!</strong>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <%
                            }
                            session.setAttribute("report", "");
                        %>

                        <%
                            if (u != null) {
                        %>
                        <!-- Reply Comment-->
                        <div>
                            <div class="card mb-4 box-shadow">
                                <div class="card-body">
                                    <form role='form' method="post" action="Post">
                                        <input name="userID" value="<%= u.getUserID()%>" style="display: none">
                                        <input name="userID2" value="<%= p.getUser_id()%>" style="display: none">
                                        <input name="edit" value="" style="display: none">
                                        <input name="delete" value="" style="display: none">
                                        <input name="editPost" value="" style="display: none">
                                        <input name="deletePost" value="" style="display: none">                                    
                                        <input name="post_id" value="<%= p.getPost_id()%>" style="display: none">
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Bình Luận</label>
                                            <textarea maxlength="500" required="required" name="comment_content" class="form-control" id="exampleFormControlTextarea1"
                                                      rows="10" placeholder="Nội dung (Tối đa 500 chứ cái)"></textarea>
                                        </div>
                                        <br>
                                        <button type="submit" value="New Reply" name="newReply" class="btn  btn-outline-secondary">Bình Luận</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>

                        <%
                            ResultSet rs = (ResultSet) session.getAttribute("allComment");

                            while (rs.next()) {
                        %>
                        <div class="container">
                            <div class="card mb-4 box-shadow">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <img src="<%= request.getContextPath()%>/<%= rs.getString("avatar")%>" class="rounded-circle" alt="" width="40" height="40">
                                        <p class="text-muted p-2"><%= rs.getString("username")%></p>
                                        <p class="text-muted ms-auto p-2"><%= rs.getString("comment_date").substring(0, Math.min(rs.getString("comment_date").length(), 19))%></p>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="card-text"><%= rs.getString("comment_content")%></p>
                                </div>                            
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <%
                                            if (u != null) {
                                                if (Integer.parseInt(rs.getString("userID")) == u.getUserID()) {
                                        %>
                                        <div>
                                            <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample<%= rs.getString("comment_id")%>" aria-expanded="false" aria-controls="multiCollapseExample<%= rs.getString("comment_id")%>"
                                                    class="btn btn-outline-secondary">Chỉnh Sửa</button>
                                            <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal<%= rs.getString("comment_id")%>"
                                                    class="btn btn-danger">Xoá</button>
                                        </div>                                    
                                        <%
                                        } else {
                                        %>
                                        <div class="btn-group">                                       
                                            <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModalCommentReport<%= rs.getString("comment_id")%>"
                                                    class="btn btn-danger">Báo Cáo</button>
                                        </div>
                                        <%
                                                }
                                            }

                                        %>
                                    </div>
                                </div>
                            </div>
                            <!-- Edit Comment-->
                            <div class="collapse multi-collapse" id="multiCollapseExample<%= rs.getString("comment_id")%>">
                                <div class="card mb-4 box-shadow">
                                    <div class="card-body">
                                        <form role='form' method="post" action="Post">
                                            <input name="comment_id" value="<%= rs.getString("comment_id")%>" style="display: none">
                                            <input name="post_id" value="<%= p.getPost_id()%>" style="display: none">
                                            <input name="newReply" value="" style="display: none">
                                            <input name="delete" value="" style="display: none">
                                            <input name="editPost" value="" style="display: none">
                                            <input name="deletePost" value="" style="display: none">
                                            <div class="form-group">
                                                <label for="exampleFormControlTextarea1">Chỉnh Sửa Bình Luận</label>
                                                <textarea maxlength="500" required="required" name="comment_content" class="form-control" id="exampleFormControlTextarea1"
                                                          rows="3"><%= rs.getString("comment_content")%></textarea>
                                            </div>
                                            <br>
                                            <button type="submit" value="Edit" name="edit"
                                                    class="btn  btn-outline-secondary">Chỉnh Sửa</button>
                                            <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample<%= rs.getString("comment_id")%>" aria-expanded="false" aria-controls="multiCollapseExample<%= rs.getString("comment_id")%>"
                                                    class="btn  btn-outline-secondary">Đóng</button>
                                        </form>

                                    </div>

                                </div>
                            </div>
                            <!-- Modal Delete Comment-->
                            <div class="modal fade" id="exampleModal<%= rs.getString("comment_id")%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            Bạn có chắc khi xoá bình luận này?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                            <form role='form' method="post" action="Post">
                                                <input name="newReply" value="" style="display: none">
                                                <input name="edit" value="" style="display: none">
                                                <input name="editPost" value="" style="display: none">
                                                <input name="deletePost" value="" style="display: none">
                                                <input name="comment_id" value="<%= rs.getString("comment_id")%>" style="display: none">
                                                <input name="post_id" value="<%= p.getPost_id()%>" style="display: none">                                                      
                                                <button type="submit" value="Delete" name="delete" class="btn btn-danger">Xoá</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal Report Comment-->
                            <div class="modal fade" id="exampleModalCommentReport<%= rs.getString("comment_id")%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Báo Cáo Bình Luận</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            Bạn có chắc khi báo cáo bình luận này?
                                            <form id="myformComment<%= rs.getString("comment_id")%>" role='form' method="post" action="<%= request.getContextPath()%>/Report">
                                                <label for="exampleFormControlTextarea1">Lý Do</label>
                                                <textarea required="required" maxlength="500" placeholder="Nội dung (Tối đa 500 chứ cái)" name="report_comment_reason" class="form-control" id="exampleFormControlTextarea1"
                                                          rows="3"></textarea>
                                                <input name="newReply" value="" style="display: none">
                                                <input name="edit" value="" style="display: none">
                                                <input name="delete" value="" style="display: none">
                                                <input name="editPost" value="" style="display: none">
                                                <input name="post_id" value="<%= p.getPost_id()%>" style="display: none"> 
                                                <input name="comment_id" value="<%= rs.getString("comment_id")%>" style="display: none">
                                                <%
                                                    if (u != null) {
                                                %>
                                                <input name="userID" value="<%= u.getUserID()%>" style="display: none">

                                                <%
                                                    }
                                                %>
                                                <input name="reportPost" value="" style="display: none">                                                         
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                            <button type="submit" form="myformComment<%= rs.getString("comment_id")%>" value="reportComment" name="reportComment" class="btn btn-danger">Báo Cáo</button>
                                        </div>
                                    </div>
                                </div>
                            </div>                    
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                            <div class="footer-info">
                                <h3>JPD<span>.</span></h3>
                                <p>
                                    600 Nguyễn Văn Cừ <br>
                                    An Bình, Cần Thơ<br><br>
                                    <strong>Số Điện Thoại:</strong> 0349554811<br>
                                    <strong>Email:</strong> noreply.jpd@gmail.com<br>
                                </p>                                
                            </div>
                        </div>                                              
                    </div>
                </div>
            </div>
        </footer><!-- End Footer -->

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="${pageContext.request.contextPath}/user/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/aos/aos.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/user/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="${pageContext.request.contextPath}/user/js/main.js"></script>

    </body>

</html>