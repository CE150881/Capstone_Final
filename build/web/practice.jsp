<%-- 
    Document   : practice
    Created on : Nov 26, 2022, 7:14:55 PM
    Author     : ACER
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
        <style type="text/css">
            
            .tools a
            {
                text-decoration: none;
            }
            #colors_sketch
            {
                border: 1px solid #ccc;
            }
        </style>
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top" style="background-color: rgba(0,0,0,0.8);">
            <div class="container d-flex align-items-center justify-content-lg-between">

                <h1 class="logo me-auto me-lg-0"><a href="home.jsp">JPD<span>.</span></a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="user/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto" href="home.jsp">Trang Chủ</a></li>
                        <li class="dropdown"><a href=""><span>Tài Liệu</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li class="dropdown"><a href="u-alphabet.html"><span>Bảng Chữ Cái</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <li><a href="#">Deep Drop Down 1</a></li>
                                        <li><a href="#">Deep Drop Down 2</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="u-kanji.html"><span>Kanji</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <li><a href="#">N1</a></li>
                                        <li><a href="#">N2</a></li>
                                        <li><a href="#">N3</a></li>
                                        <li><a href="#">N4</a></li>
                                        <li><a href="#">N5</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="u-grammar.html"><span>Ngữ Pháp</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <li><a href="#">N1</a></li>
                                        <li><a href="#">N2</a></li>
                                        <li><a href="#">N3</a></li>
                                        <li><a href="#">N4</a></li>
                                        <li><a href="#">N5</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a class="nav-link scrollto" href="">Kiểm Tra</a></li>
                        <li><a class="nav-link scrollto active" href="u-practice.html">Luyện Tập</a></li>
                        <li><a class="nav-link scrollto " href="<%= request.getContextPath()%>/Forum">Cộng Đồng</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->
                <ul>
                    <!-- đã đăng nhập -->                    
                    <a href="home.jsp" class="logo me-auto me-lg-0" ><img src="${pageContext.request.contextPath}/user/img/logo.jpg" alt="" class="rounded-circle"></a>
                    <a class="scrollto" href="u-profile.html">Thanh Tâm</a>

                    <!-- chưa đăng nhập
                      <a href="signup.html" class="get-started-btn scrollto">Đăng Ký</a>
                    <a href="login.html" class="get-started-btn scrollto">Đăng Nhập</a>
                    -->

                </ul>
            </div>
        </header><!-- End Header -->

        <main id="main" class="bg-light">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs bg-light">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Cộng Đồng</h2>
                        <ol>
                            <li><a href="home.jsp">Trang Chủ</a></li>
                            <li>Cộng Đồng</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

            <!-- Điền nội dung -->
            <div class="container">
                <div id="myGroup">
                    <div class="text-center">
                        <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                            <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample1" aria-expanded="false"
                                    aria-controls="multiCollapseExample1" class="btn btn-secondary">Luyện Nghe</button>
                            <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false"
                                    aria-controls="multiCollapseExample2" class="btn btn-secondary">Luyện Nói</button>
                            <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample3" aria-expanded="false"
                                    aria-controls="multiCollapseExample3" class="btn btn-secondary">Dịch Thuật</button>
                            <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample4" aria-expanded="false"
                                    aria-controls="multiCollapseExample4" class="btn btn-secondary">Luyện Viết</button>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="accordion-group">
                        <div data-bs-parent="#myGroup" class="collapse  multi-collapse" id="multiCollapseExample1">
                            <div class="card mb-4 box-shadow">
                                <div class="card-body">

                                </div>
                            </div>
                        </div>
                        <div data-bs-parent="#myGroup" class="collapse  multi-collapse" id="multiCollapseExample2">
                            <div class="card mb-4 box-shadow">
                                <div class="card-body text-center">
                                    <button class="btn btn-primary" id="btnTalk">Bắt Đầu Nói</button>
                                    <br><br>
                                    <span style="font-weight: bold; font-size: large;" id="message"></span>
                                    <br>
                                    <span style="font-weight: bold; font-size: large;" id="confidence"></span>
                                    <br><br>
                                    <script>
                                        var message = document.querySelector('#message');
                                        var messageC = document.querySelector('#confidence');

                                        var SpeechRecognition = SpeechRecognition || webkitSpeechRecognition;
                                        var SpeechGrammarList = SpeechGrammarList || webkitSpeechGrammarList;

                                        var grammar = '#JSGF V1.0';

                                        var recognition = new SpeechRecognition();
                                        var speechRecognitionList = new SpeechGrammarList();
                                        speechRecognitionList.addFromString(grammar, 1);
                                        recognition.grammars = speechRecognitionList;
                                        recognition.lang = 'ja-JP';
                                        recognition.interimResults = false;

                                        recognition.onresult = function (event) {
                                            var lastResult = event.results.length - 1;
                                            var content = event.results[lastResult][0].transcript;
                                            var confidence = event.results[lastResult][0].confidence;
                                            message.textContent = 'Câu nói nhận diện được: ' + content;
                                            messageC.textContent = 'Độ chính xác: ' + (confidence * 100).toFixed(2) + '%';
                                        };

                                        recognition.onspeechend = function () {
                                            // Stop recognition
                                            recognition.stop();
                                        };

                                        recognition.onerror = function (event) {
                                            message.textContent = 'Error occurred in recognition: ' + event.error;
                                        }

                                        document.querySelector('#btnTalk').addEventListener('click', function () {
                                            recognition.start();
                                        });
                                    </script>
                                    <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2"
                                            aria-expanded="false" aria-controls="multiCollapseExample2"
                                            class="btn btn-sm btn-outline-secondary">Đóng</button>
                                </div>

                            </div>
                        </div>
                        <%
                            String text = (String) request.getAttribute("text");
                            String translatedText = (String) request.getAttribute("translatedText");
                            if (translatedText != null) {
                        %>
                        <div data-bs-parent="#myGroup" class="collapse show multi-collapse" id="multiCollapseExample3">
                            <%
                            } else {
                            %>
                            <div data-bs-parent="#myGroup" class="collapse  multi-collapse" id="multiCollapseExample3">
                                <%
                                    }
                                %>
                                <div class="card mb-4 box-shadow">
                                    <div class="card-body">
                                        <form method="post" action="Practice" accept-charset="utf-8">
                                            <div class="form-group">
                                                <label for="exampleFormControlTextarea1">Nhập Câu Tiếng Nhật</label>                                        
                                                <%
                                                    if (text != null) {
                                                %>
                                                <textarea name="sentence" class="form-control" id="exampleFormControlTextarea1" rows="3"><%=text%></textarea>
                                                <%
                                                } else {
                                                %>
                                                <textarea name="sentence" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <button type="submit" name="translate" value="translate" class="btn btn-sm btn-outline-secondary">Dịch</button>
                                            <button type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample3"
                                                    aria-expanded="false" aria-controls="multiCollapseExample3"
                                                    class="btn btn-sm btn-outline-secondary">Đóng</button>
                                        </form>
                                    </div>
                                    <div class="card-body">
                                        <label for="exampleFormControlTextarea2">Dịch Sang Tiếng Việt</label>
                                        <%
                                            if (translatedText != null) {
                                        %>
                                        <textarea class="form-control" id="exampleFormControlTextarea2" rows="3"><%=translatedText%></textarea>
                                        <%
                                        } else {
                                        %>
                                        <textarea class="form-control" id="exampleFormControlTextarea2" rows="3"></textarea>
                                        <%
                                            }
                                        %>
                                    </div>

                                </div>
                            </div>
                            <%
                                String recognizeWord = (String) session.getAttribute("recognizeWord");
                                if (recognizeWord != null) {
                                    if (translatedText == null) {
                            %>
                            <div data-bs-parent="#myGroup" class="collapse show multi-collapse" id="multiCollapseExample4">
                                <%
                                } else {
                                %>
                                <div data-bs-parent="#myGroup" class="collapse multi-collapse" id="multiCollapseExample4">
                                    <%
                                        }
                                    } else {
                                    %>
                                    <div data-bs-parent="#myGroup" class="collapse multi-collapse" id="multiCollapseExample4">
                                        <%
                                            }
                                        %>
                                        <div class="card mb-4 box-shadow">
                                            <div class="card-body text-center">
                                                <div class="tools">
                                                    <a href="#colors_sketch" data-tool="marker">Vẽ</a> <a href="#colors_sketch" data-tool="eraser">
                                                        Xoá</a>
                                                </div>
                                                <br />
                                                <canvas id="colors_sketch" width="200" height="200">
                                                </canvas>
                                                <br />
                                                <%
                                                    String imageBase64 = (String) session.getAttribute("imageBase64");
                                                    if (imageBase64 != null) {

                                                %>

                                                <img id = "imgCapture" src="<%= imageBase64%>" alt = "" style = "border:1px solid #ccc" />
                                                <%
                                                    }
                                                %>

                                                <%
                                                    if (recognizeWord != null) {
                                                %>
                                                <p style="display: inline; font-size:100px; font-weight: bolder"><%= recognizeWord%></p>
                                                <%
                                                    }
                                                %>
                                                <br />
                                                <br />
                                                <input type="button" id="btnSave" value="Nhận Diện" />

                                                <form style="display: none" id="formSubmitImage64" method="post" action="SubmitImage">
                                                    <input id="imageBase64" name="imageBase64" value=""></input>
                                                    <button id="submitImage" type="submit" name="submitImage" value="submitImage">Send Image</button>
                                                </form>

                                                <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
                                                <script src="https://cdn.rawgit.com/mobomo/sketch.js/master/lib/sketch.min.js" type="text/javascript"></script>
                                                <script type="text/javascript">
                                        $(function () {
                                            $('#colors_sketch').sketch();
                                            $(".tools a").eq(0).attr("style", "color:#000");
                                            $(".tools a").click(function () {
                                                $(".tools a").removeAttr("style");
                                                $(this).attr("style", "color:#000");
                                            });
                                            $("#btnSave").bind("click", function () {
                                                var base64 = $('#colors_sketch')[0].toDataURL();
                                                $("#imageBase64").attr("value", base64);
                                                document.getElementById('formSubmitImage64').submit();
                                            });
                                        });
                                                </script>
                                            </div>
                                        </div>

                                        <script>
                                            var voiceList = document.querySelector('#voiceList');
                                            var txtInput = document.querySelector('#txtInput');
                                            var btnSpeak = document.querySelector('#btnSpeak');



                                            var tts = window.speechSynthesis;
                                            var voices = [];

                                            GetVoice();

                                            if (speechSynthesis !== undefined) {
                                                speechSynthesis.onvoiceschanged = GetVoice;
                                            }

                                            btnSpeak.addEventListener('click', () => {
                                                var toSpeak = new SpeechSynthesisUtterance(txtInput.value);
                                                var selectedVoiceName = voiceList.selectedOptions[0].getAttribute('data-name');
                                                voices.forEach((voice) => {
                                                    if (voice.name === selectedVoiceName) {
                                                        toSpeak.voice = voice;
                                                    }
                                                });
                                                tts.speak(toSpeak);
                                            });

                                            function GetVoice() {
                                                voices = tts.getVoices();
                                                voiceList.innerHTML = '';
                                                voices.forEach((voice) => {
                                                    var listItem = document.createElement('option');
                                                    listItem.textContent = voice.name;
                                                    listItem.setAttribute('data-lang', voice.lang);
                                                    listItem.setAttribute('data-name', voice.name);
                                                    voiceList.appendChild(listItem);
                                                });

                                                voiceList.selectedIndex = 191;
                                            }
                                        </script>

                                    </div>
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
                                                <div class="social-links mt-3">
                                                    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-2 col-md-6 footer-links">
                                            <h4>Dành Cho Bạn</h4>
                                            <ul>
                                                <li><i class="bx bx-chevron-right"></i> <a href="">Trang Chủ</a></li>
                                                <li><i class="bx bx-chevron-right"></i> <a href="#">Tài Liệu</a></li>
                                                <li><i class="bx bx-chevron-right"></i> <a href="#">Kiểm Tra</a></li>
                                                <li><i class="bx bx-chevron-right"></i> <a href="#">Luyện Tập</a></li>
                                                <li><i class="bx bx-chevron-right"></i> <a href="#">Cộng Đồng</a></li>
                                            </ul>
                                        </div>

                                        <div class="col-lg-3 col-md-6 footer-links">
                                            <h4>Dịch Vụ Của Chúng Tôi</h4>
                                            <ul>
                                                <li><i class="bx bx-chevron-right"></i> <a href="#">Nguyên Tắc Cộng Đồng</a></li>
                                                <li><i class="bx bx-chevron-right"></i> <a href="#">Quyền Riêng Tư</a></li>
                                                <li><i class="bx bx-chevron-right"></i> <a href="#">Điều Khoản</a></li>
                                            </ul>
                                        </div>

                                        <div class="col-lg-4 col-md-6 footer-newsletter">
                                            <h4>Nhận Thông Báo</h4>
                                            <p>Chúng tôi sẽ gửi email cho bạn khi có thông báo mới.</p>
                                            <form action="" method="post">
                                                <input type="email" name="email"><input type="submit" value="Gửi">
                                            </form>
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
