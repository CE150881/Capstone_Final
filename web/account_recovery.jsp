<%-- 
    Document   : account_recovery
    Created on : Dec 3, 2022, 10:47:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Khôi Phục Tài Khoản</title>
        
        <!-- Favicons -->
        <link href="user/img/logo.jpg" rel="icon">
        <link href="user/img/logo.jpg" rel="apple-touch-icon">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="user/css/login.css">
    </head>
    <body class="img js-fullheight" style="background-image: url(user/img/13.jpg);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Khôi phục tài khoản</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <form action="<%=request.getContextPath()%>/PasswordRecovery" method="POST" class="signin-form">
                                <div class="form-group">
                                    <input type="text" name="recoverEmail" class="form-control" placeholder="Nhập Email" required>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">XÁC NHẬN</button>
                                </div>
                                <div class="form-group d-md-flex">

                                    <div class="w-100 text-md-center">
                                        <a href="<%=request.getContextPath()%>/account_login.jsp" style="color: #fff">Quay lại Đăng nhập</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="user/js/jquery.min.js"></script>
        <script src="user/js/bootstrap.min.js"></script>
        <script src="user/js/login.js"></script>

    </body>
</html>
