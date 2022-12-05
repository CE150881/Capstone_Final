<%-- 
    Document   : Test_manage_insretTest_question
    Created on : Nov 30, 2022, 9:36:05 PM
    Author     : Saing
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Quản Lí</title>
        <link href="user/img/logo.jpg" rel="icon">

        <!-- Custom fonts for this template-->
        <link href="manage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="manage/css/sb-admin-2.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css" rel="stylesheet">

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
                                    <h2>Quản Lý Câu Trả Lời</h2>
                                    <h4>Câu Hỏi: ${sessionScope.ques}</h4>
                                </div>
                                <div class="col-sm-6">
                                    <a href="#add" class="btn btn-success" data-toggle="modal" data-target="#add" 
                                       style="margin-left: 450px; background-color: #000000; border-color: #000000;"><span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                            </svg>
                                            Tạo Mới
                                        </span>
                                    </a>                                             
                                </div>
                            </div>
                        </div>
                        <br>
                        <form action="answerControl" method="POST">
                            <table id="example" class="table table-striped" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Câu Hỏi</th>
                                        <th>Câu Trả lời</th>
                                        <th>Đúng / Sai</th>
                                        <th>Cập Nhật/ Xoá</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listAnswer}" var="o" varStatus="i">
                                        <tr>
                                            <td>${i.index+1}</td>
                                            <td>${o.question}</td>
                                            <td>${o.answer}</td>
                                            <td>
                                                <c:if test="${o.isCorrect == 1}">Đúng</c:if>
                                                <c:if test="${o.isCorrect == 0}">Sai</c:if>
                                                </td>
                                                <td>
                                                <c:if test = "${sessionScope.hasResult==0}">
                                                    <button type="button" data-toggle="modal" data-target="#editAnswerModal${i.index+1}" class="btn btn-secondary">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                                        <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                                                        </svg>                                                
                                                        Cập Nhật
                                                    </button>
                                                    <c:if test = "${o.isCorrect!=1}">
                                                        <button type="button" data-toggle="modal" data-target="#deleteAnswerModal${i.index+1}" class="btn btn-danger">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                                            </svg>
                                                            Xoá
                                                        </button>
                                                    </c:if>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <a href="insertTest_Test" class="btn btn-outline-secondary" tabindex="-1" role="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-left" viewBox="0 0 16 16">
                                <path d="M10 12.796V3.204L4.519 8 10 12.796zm-.659.753-5.48-4.796a1 1 0 0 1 0-1.506l5.48-4.796A1 1 0 0 1 11 3.204v9.592a1 1 0 0 1-1.659.753z"/>
                                </svg>
                                Quay Lại
                            </a>

                        </form> 
                    </div> 


                    <c:forEach items="${listAnswer}" var="o" varStatus="i">
                        <!-- Modal Edit Answer-->
                        <div class="modal fade" id="editAnswerModal${i.index+1}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">                      
                                        <h5 class="modal-title" id="exampleModalLabel">Cập Nhật Câu Trả Lời</h5>
                                    </div>
                                    <div class="modal-body">    
                                        <form id="editAnswerform${i.index+1}" action="${pageContext.request.contextPath}/insertTest_EditAnswer" method="post">
                                            <div class="form-group">
                                                <label>Câu Hỏi: ${o.question}</label>
                                                <input name="answerID" value="${o.answerID}" style="display: none"/>
                                            </div>                            
                                            <div class="form-group">
                                                <label>Câu Trả Lời:</label>
                                                <input type="text" name="answer" value="${o.answer}" class="form-control" required/>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Hủy</button>
                                        <button type="submit" form="editAnswerform${i.index+1}" name="editanswer" class="btn btn-success">Cập Nhật</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal Delete Answer-->
                        <div class="modal fade" id="deleteAnswerModal${i.index+1}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">                      
                                        <h5 class="modal-title" id="exampleModalLabel">Xoá Câu Trả Lời</h5>
                                    </div>
                                    <div class="modal-body">  
                                        <form id="deleteAnswerform${i.index+1}" action="${pageContext.request.contextPath}/insertTest_DeleteAnswer" method="post">
                                            <div class="form-group">
                                                <label>Bạn chắc là bạn có thật sự muốn xoá hay không?</label>
                                                <input name="answerID" value="${o.answerID}"  style="display: none"/>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Hủy</button>
                                        <button type="submit" form="deleteAnswerform${i.index+1}" name="deleteanswer" class="btn btn-danger">Xoá</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- Modal Add Answer-->
                    <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">                      
                                    <h5 class="modal-title" id="exampleModalLabel">Thêm Câu Trả Lời Mới</h5>
                                </div>
                                <div class="modal-body">    
                                    <form id="addAnswerform" action="${pageContext.request.contextPath}/insertTest_CreateAnswer" method="post">
                                        <div class="form-group">
                                            <label>Câu Trả Lời:</label>
                                            <input type="text" name="Answer" class="form-control" required/>
                                        </div>
                                    </form>
                                </div>      

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Hủy</button>
                                    <button type="submit" form="addAnswerform" class="btn btn-success">Thêm</button>
                                </div>
                            </div>
                        </div>
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

        <!-- datatable -->
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({
                    "lengthMenu": [[5, 10, 15, 20, 25, 30, -1], [5, 10, 15, 20, 25, 30, 'Tất cả']],
                    "pageLength": 5,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/1.12.1/i18n/vi.json",
                        "lengthMenu": "Hiển thị tối đa _MENU_ dữ liệu",
                        "info": "Hiển thị _END_ trên tổng số _TOTAL_ dữ liệu"
                    }
                });
            });
            function showMess(ID) {
                var option = confirm('Bạn có muốn xoá hay không?');
                if (option === true) {
                    window.location.href = '${pageContext.request.contextPath}/insertTest_DeleteAnswer?answerID=' + ID;
                }
            }
            ;
        </script>
    </body>

</html>


