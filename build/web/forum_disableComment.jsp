<%-- 
    Document   : forum_disableComment
    Created on : Nov 26, 2022, 8:33:13 PM
    Author     : ACER
--%>


<%@page import="Models.ForumAllComment"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Quản Lí Cộng Đồng</title>
        <link href="user/img/logo.jpg" rel="icon">

        <!-- Custom fonts for this template-->
        <link href="manage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="manage/css/sb-admin-2.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <jsp:include page="header_manage.jsp" />

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">


                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">${sessionScope.acc.username}</span>
                                    <img class="img-profile rounded-circle"
                                         src="${sessionScope.acc.avatar}">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                     aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Đăng Xuất
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-6">
                                    <h2>Quản Lí Bình Luận Bị Vô Hiệu Hoá</h2>
                                </div>
                            </div>
                        </div>
                        <br>

                        <%
                            
                            List<ForumAllComment> rs = (List<ForumAllComment>) session.getAttribute("allDisableComment");
                            for (int i = 0; i < rs.size(); i++) {
                                 
                        %>
                        <div>
                            <div class="card mb-4 box-shadow">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <img src="<%= request.getContextPath()%>/<%= rs.get(i).getAvatar()%>" class="rounded-circle" alt="" width="40" height="40">
                                        <p class="text-muted p-2"><%= rs.get(i).getUsername()%></p>
                                        <p class="text-muted ml-auto p-2"><%= rs.get(i).getComment_date().substring(0, Math.min(rs.get(i).getComment_date().length(), 19))%></p>
                                    </div>
                                    <br>
                                </div>
                                <div class="card-body" >
                                    <p class="card-text"><%= rs.get(i).getComment_content()%></p>
                                </div>
                                <div class="card-body" >
                                    <form method="post" action="<%= request.getContextPath()%>/RestoreComment" style="display: inline">
                                        <input value="<%= rs.get(i).getComment_id()%>" name="comment_id" style="display: none">
                                        <button class="btn btn-secondary" type="sumbit" value="restoreComment" name="restoreComment">Phục Hồi</button>
                                    </form>
                                    <button type="button" data-toggle="modal" data-target="#exampleModalPost<%= rs.get(i).getComment_id()%>"
                                            class="btn btn-danger">Xoá Hoàn Toàn</button>
                                </div>
                            </div>
                        </div>
                        <!-- Modal Delete Comment-->
                        <div class="modal fade" id="exampleModalPost<%= rs.get(i).getComment_id()%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Xoá Hoàn Toàn</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Bạn có chắc muốn xoá hoàn toàn bình luận này?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                        <form method="post" action="<%= request.getContextPath()%>/DeleteComment">
                                            <input name="comment_id" value="<%= rs.get(i).getComment_id()%>" style="display: none">
                                            <button type="submit" value="deleteComment" name="deleteComment" class="btn btn-danger">Xoá Hoàn Toàn</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>

                    </div>

                    <!-- /.container-fluid -->
                </div>
                <!-- End of Main Content -->
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thông Báo</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Bạn muốn đăng xuất ?</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
                        <a class="btn btn-primary" href="LogoutControl">Đăng Xuất</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="manage/vendor/jquery/jquery.min.js"></script>
        <script src="manage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="manage/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="manage/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="manage/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="manage/js/demo/chart-area-demo.js"></script>
        <script src="manage/js/demo/chart-pie-demo.js"></script>

    </body>

</html>
