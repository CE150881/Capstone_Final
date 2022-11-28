package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("\r\n");
      out.write("        <title>Trang Chủ</title>\r\n");
      out.write("        <meta content=\"\" name=\"description\">\r\n");
      out.write("        <meta content=\"\" name=\"keywords\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Favicons -->\r\n");
      out.write("        <link href=\"user/img/logo.jpg\" rel=\"icon\">\r\n");
      out.write("        <link href=\"user/img/logo.jpg\" rel=\"apple-touch-icon\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Google Fonts -->\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Vendor CSS Files -->\r\n");
      out.write("        <link href=\"user/vendor/aos/aos.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"user/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"user/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"user/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"user/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"user/vendor/remixicon/remixicon.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"user/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Template Main CSS File -->\r\n");
      out.write("        <link href=\"user/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- =======================================================\r\n");
      out.write("        * Template Name: Gp - v4.9.1\r\n");
      out.write("        * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/\r\n");
      out.write("        * Author: BootstrapMade.com\r\n");
      out.write("        * License: https://bootstrapmade.com/license/\r\n");
      out.write("        ======================================================== -->\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <!-- ======= Header ======= -->\r\n");
      out.write("        <header id=\"header\" class=\"fixed-top\">\r\n");
      out.write("            <div class=\"container d-flex align-items-center justify-content-lg-between\">\r\n");
      out.write("\r\n");
      out.write("                <h1 class=\"logo me-auto me-lg-0\"><a href=\"u-home.html\">JPD<span>.</span></a></h1>\r\n");
      out.write("                <!-- Uncomment below if you prefer to use an image logo -->\r\n");
      out.write("                <!-- <a href=\"index.html\" class=\"logo me-auto me-lg-0\"><img src=\"user/img/logo.png\" alt=\"\" class=\"img-fluid\"></a>-->\r\n");
      out.write("\r\n");
      out.write("                <nav id=\"navbar\" class=\"navbar order-last order-lg-0\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a class=\"nav-link scrollto active\" href=\"u-home.html\">Trang Chủ</a></li>\r\n");
      out.write("                        <li class=\"dropdown\"><a href=\"\"><span>Tài Liệu</span> <i class=\"bi bi-chevron-down\"></i></a>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li class=\"dropdown\"><a><span>Bảng Chữ Cái</span> <i class=\"bi bi-chevron-right\"></i></a>\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"dropdown\"><a><span>Kanji</span> <i class=\"bi bi-chevron-right\"></i></a>\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write(" \r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li class=\"dropdown\"><a><span>Ngữ Pháp</span> <i class=\"bi bi-chevron-right\"></i></a>\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li><a class=\"nav-link scrollto\" href=\"\">Kiểm Tra</a></li>\r\n");
      out.write("                        <li><a class=\"nav-link scrollto \" href=\"u-practice.html\">Luyện Tập</a></li>\r\n");
      out.write("                        <li><a class=\"nav-link scrollto\" href=\"");
      out.print( request.getContextPath());
      out.write("/Forum\">Cộng Đồng</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <i class=\"bi bi-list mobile-nav-toggle\"></i>\r\n");
      out.write("                </nav><!-- .navbar -->\r\n");
      out.write("                <ul>\r\n");
      out.write("                    \r\n");
      out.write("                     ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </header><!-- End Header -->\r\n");
      out.write("\r\n");
      out.write("        <!-- ======= Hero Section ======= -->\r\n");
      out.write("        <section id=\"hero\" class=\"d-flex align-items-center justify-content-center\">\r\n");
      out.write("            <div class=\"container\" data-aos=\"fade-up\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row justify-content-center\" data-aos=\"fade-up\" data-aos-delay=\"150\">\r\n");
      out.write("                    <div class=\"col-xl-6 col-lg-8\">\r\n");
      out.write("                        <h1>Ứng dụng học tiếng Nhật JPD<span>.</span></h1>\r\n");
      out.write("                        <h2>Học tiếng nhật miễn phí và hiệu quả</h2>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row gy-4 mt-5 justify-content-center\" data-aos=\"zoom-in\" data-aos-delay=\"250\">\r\n");
      out.write("                    <div class=\"col-xl-2 col-md-4\">\r\n");
      out.write("                        <div class=\"icon-box\">\r\n");
      out.write("                            <i class=\"ri-store-line\"></i>\r\n");
      out.write("                            <h3><a href=\"\">Trang Chủ</a></h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-xl-2 col-md-4\">\r\n");
      out.write("                        <div class=\"icon-box\">\r\n");
      out.write("                            <i class=\"ri-bar-chart-box-line\"></i>\r\n");
      out.write("                            <h3><a href=\"\">Tài Liệu</a></h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-xl-2 col-md-4\">\r\n");
      out.write("                        <div class=\"icon-box\">\r\n");
      out.write("                            <i class=\"ri-calendar-todo-line\"></i>\r\n");
      out.write("                            <h3><a href=\"\">Kiểm Tra</a></h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-xl-2 col-md-4\">\r\n");
      out.write("                        <div class=\"icon-box\">\r\n");
      out.write("                            <i class=\"ri-paint-brush-line\"></i>\r\n");
      out.write("                            <h3><a href=\"\">Luyện Tập</a></h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-xl-2 col-md-4\">\r\n");
      out.write("                        <div class=\"icon-box\">\r\n");
      out.write("                            <i class=\"ri-database-2-line\"></i>\r\n");
      out.write("                            <h3><a href=\"");
      out.print( request.getContextPath());
      out.write("/Forum\">Cộng Đồng</a></h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </section><!-- End Hero -->\r\n");
      out.write("\r\n");
      out.write("        <main id=\"main\">\r\n");
      out.write("\r\n");
      out.write("            <!-- ======= About Section ======= -->\r\n");
      out.write("            <section id=\"about\" class=\"about\">\r\n");
      out.write("                <div class=\"container\" data-aos=\"fade-up\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-6 order-1 order-lg-2\" data-aos=\"fade-left\" data-aos-delay=\"100\">\r\n");
      out.write("                            <img src=\"user/img/about.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content\" data-aos=\"fade-right\" data-aos-delay=\"100\">\r\n");
      out.write("                            <h3>Bảng Tin</h3>\r\n");
      out.write("                            <p class=\"fst-italic\">\r\n");
      out.write("                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore\r\n");
      out.write("                                magna aliqua.\r\n");
      out.write("                            </p>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n");
      out.write("                                <li><i class=\"ri-check-double-line\"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n");
      out.write("                                <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                            <p>\r\n");
      out.write("                                Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n");
      out.write("                                velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident\r\n");
      out.write("                            </p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </section><!-- End About Section -->\r\n");
      out.write("\r\n");
      out.write("            <!-- ======= Features Section ======= -->\r\n");
      out.write("            <section id=\"features\" class=\"features\">\r\n");
      out.write("                <div class=\"container\" data-aos=\"fade-up\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"image col-lg-6\" style='background-image: url(\"user/img/3.jpg\");' data-aos=\"fade-right\"></div>\r\n");
      out.write("                        <div class=\"col-lg-6\" data-aos=\"fade-left\" data-aos-delay=\"100\">\r\n");
      out.write("                            <div class=\"icon-box mt-5 mt-lg-0\" data-aos=\"zoom-in\" data-aos-delay=\"150\">\r\n");
      out.write("                                <i class=\"bx bx-receipt\"></i>\r\n");
      out.write("                                <h4>Tài Liệu</h4>\r\n");
      out.write("                                <p>Tra cứu bảng chữ cái, kanji theo cấp độ và ngữ pháp theo cấp độ</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"icon-box mt-5\" data-aos=\"zoom-in\" data-aos-delay=\"150\">\r\n");
      out.write("                                <i class=\"bx bx-cube-alt\"></i>\r\n");
      out.write("                                <h4>Kiểm Tra</h4>\r\n");
      out.write("                                <p>Thử sức với những bài thi JLPT ở mọi cấp độ</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"icon-box mt-5\" data-aos=\"zoom-in\" data-aos-delay=\"150\">\r\n");
      out.write("                                <i class=\"bx bx-images\"></i>\r\n");
      out.write("                                <h4>Luyện Tập</h4>\r\n");
      out.write("                                <p>Trau dồi kiến thức tiếng Nhật mọi kỹ năng</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"icon-box mt-5\" data-aos=\"zoom-in\" data-aos-delay=\"150\">\r\n");
      out.write("                                <i class=\"bx bx-shield\"></i>\r\n");
      out.write("                                <h4>Cộng Đồng</h4>\r\n");
      out.write("                                <p>Tham gia cộng đồng để trao đổi, giải đáp thắc mắc về tiếng Nhật</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </section><!-- End Features Section -->\r\n");
      out.write("\r\n");
      out.write("            <!-- ======= Testimonials Section ======= -->\r\n");
      out.write("            <section id=\"testimonials\" class=\"testimonials\">\r\n");
      out.write("                <div class=\"container\" data-aos=\"zoom-in\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"testimonials-slider swiper\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n");
      out.write("                        <div class=\"swiper-wrapper\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"swiper-slide\">\r\n");
      out.write("                                <div class=\"testimonial-item\">\r\n");
      out.write("                                    <img src=\"user/img/testimonials/testimonials-1.jpg\" class=\"testimonial-img\" alt=\"\">\r\n");
      out.write("                                    <h3>Saul Goodman</h3>\r\n");
      out.write("                                    <h4>Ceo &amp; Founder</h4>\r\n");
      out.write("                                    <p>\r\n");
      out.write("                                        <i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n");
      out.write("                                        自分の生きる人生を愛せ。自分の愛する人生を生きろ。\r\n");
      out.write("                                        <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>\r\n");
      out.write("                                    </p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div><!-- End testimonial item -->\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"swiper-slide\">\r\n");
      out.write("                                <div class=\"testimonial-item\">\r\n");
      out.write("                                    <img src=\"user/img/testimonials/testimonials-2.jpg\" class=\"testimonial-img\" alt=\"\">\r\n");
      out.write("                                    <h3>Sara Wilsson</h3>\r\n");
      out.write("                                    <h4>Designer</h4>\r\n");
      out.write("                                    <p>\r\n");
      out.write("                                        <i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n");
      out.write("                                        自分の行為に責任を持つべきだ。\r\n");
      out.write("                                        <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>\r\n");
      out.write("                                    </p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div><!-- End testimonial item -->\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"swiper-slide\">\r\n");
      out.write("                                <div class=\"testimonial-item\">\r\n");
      out.write("                                    <img src=\"user/img/testimonials/testimonials-3.jpg\" class=\"testimonial-img\" alt=\"\">\r\n");
      out.write("                                    <h3>Jena Karlis</h3>\r\n");
      out.write("                                    <h4>Store Owner</h4>\r\n");
      out.write("                                    <p>\r\n");
      out.write("                                        <i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n");
      out.write("                                        すべては練習のなかにある。\r\n");
      out.write("                                        <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>\r\n");
      out.write("                                    </p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div><!-- End testimonial item -->\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"swiper-pagination\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </section><!-- End Testimonials Section -->\r\n");
      out.write("\r\n");
      out.write("            <!-- ======= Team Section ======= -->\r\n");
      out.write("            <section id=\"team\" class=\"team\">\r\n");
      out.write("                <div class=\"container\" data-aos=\"fade-up\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"section-title\">\r\n");
      out.write("                        <h2>Nhóm phát triển JPD</h2>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-lg-3 col-md-6 d-flex align-items-stretch\">\r\n");
      out.write("                            <div class=\"member\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n");
      out.write("                                <div class=\"member-img\">\r\n");
      out.write("                                    <img src=\"user/img/team/team-1.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                                    <div class=\"social\">\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"member-info\">\r\n");
      out.write("                                    <h4>Nguyễn Quốc Hưng</h4>\r\n");
      out.write("                                    <span>Trưởng nhóm</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-lg-3 col-md-6 d-flex align-items-stretch\">\r\n");
      out.write("                            <div class=\"member\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n");
      out.write("                                <div class=\"member-img\">\r\n");
      out.write("                                    <img src=\"user/img/team/team-2.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                                    <div class=\"social\">\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"member-info\">\r\n");
      out.write("                                    <h4>Nguyễn Thanh Tâm</h4>\r\n");
      out.write("                                    <span>Thành viên</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-lg-3 col-md-6 d-flex align-items-stretch\">\r\n");
      out.write("                            <div class=\"member\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n");
      out.write("                                <div class=\"member-img\">\r\n");
      out.write("                                    <img src=\"user/img/team/team-3.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                                    <div class=\"social\">\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"member-info\">\r\n");
      out.write("                                    <h4>Nguyễn Mạnh Tân</h4>\r\n");
      out.write("                                    <span>Thành viên</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-lg-3 col-md-6 d-flex align-items-stretch\">\r\n");
      out.write("                            <div class=\"member\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n");
      out.write("                                <div class=\"member-img\">\r\n");
      out.write("                                    <img src=\"user/img/team/team-4.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                                    <div class=\"social\">\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n");
      out.write("                                        <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"member-info\">\r\n");
      out.write("                                    <h4>Nguyễn Lâm Sang</h4>\r\n");
      out.write("                                    <span>Thành viên</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </section><!-- End Team Section -->\r\n");
      out.write("\r\n");
      out.write("        </main><!-- End #main -->\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer_user.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("        <!-- Vendor JS Files -->\r\n");
      out.write("        <script src=\"user/vendor/purecounter/purecounter_vanilla.js\"></script>\r\n");
      out.write("        <script src=\"user/vendor/aos/aos.js\"></script>\r\n");
      out.write("        <script src=\"user/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("        <script src=\"user/vendor/glightbox/js/glightbox.min.js\"></script>\r\n");
      out.write("        <script src=\"user/vendor/isotope-layout/isotope.pkgd.min.js\"></script>\r\n");
      out.write("        <script src=\"user/vendor/swiper/swiper-bundle.min.js\"></script>\r\n");
      out.write("        <script src=\"user/vendor/php-email-form/validate.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Template Main JS File -->\r\n");
      out.write("        <script src=\"user/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listT}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("q");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                            <li><a href=\"AlphabetControl?type=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${q.type}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${q.type}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\r\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listL}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("w");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                            <li><a href=\"Kanji?level=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${w.level}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${w.level}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\r\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listL}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("e");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                            <li><a href=\"Grammar?level=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${e.level}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${e.level}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\r\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.acc.role == 'Người dùng'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                    <!-- đã đăng nhập -->\r\n");
        out.write("                    <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"30\" height=\"30\" style=\"color: white; padding-right:5px;\" fill=\"currentColor\" class=\"bi bi-envelope-exclamation\" viewBox=\"0 0 17 17\">\r\n");
        out.write("                    <path d=\"M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z\"/>\r\n");
        out.write("                    <path d=\"M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1.5a.5.5 0 0 1-1 0V11a.5.5 0 0 1 1 0Zm0 3a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z\"/>\r\n");
        out.write("                    </svg>\r\n");
        out.write("                    <a href=\"HomeControl\" class=\"logo me-auto me-lg-0\" ><img src=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.acc.avatar}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" alt=\"\" class=\"rounded-circle\"></a>\r\n");
        out.write("                    <a class=\"scrollto\" href=\"account_profile.jsp\" style=\"color: white\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.acc.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</a>\r\n");
        out.write("                     ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.acc.role != 'Người dùng'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("                  \r\n");
        out.write("                      <a href=\"signup.jsp\" class=\"get-started-btn scrollto\">Đăng Ký</a>\r\n");
        out.write("                    <a href=\"account_login.jsp\" class=\"get-started-btn scrollto\">Đăng Nhập</a>\r\n");
        out.write("                    ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }
}
