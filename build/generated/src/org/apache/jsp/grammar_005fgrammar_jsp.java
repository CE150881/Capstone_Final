package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class grammar_005fgrammar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("\n");
      out.write("        <title>Grammar</title>\n");
      out.write("        <meta content=\"\" name=\"description\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"user/img/logo.jpg\" rel=\"icon\">\n");
      out.write("        <link href=\"user/img/logo.jpg\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Vendor CSS Files -->\n");
      out.write("        <link href=\"user/vendor/aos/aos.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"user/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"user/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"user/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"user/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"user/vendor/remixicon/remixicon.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"user/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Template Main CSS File -->\n");
      out.write("        <link href=\"user/css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- =======================================================\n");
      out.write("        * Template Name: Gp - v4.9.1\n");
      out.write("        * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/\n");
      out.write("        * Author: BootstrapMade.com\n");
      out.write("        * License: https://bootstrapmade.com/license/\n");
      out.write("        ======================================================== -->\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header_user.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <main id=\"main\">\n");
      out.write("\n");
      out.write("            <!-- ======= Breadcrumbs ======= -->\n");
      out.write("            <section id=\"breadcrumbs\" class=\"breadcrumbs\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("\n");
      out.write("                    <div class=\"d-flex justify-content-between align-items-center\">\n");
      out.write("                        <h2>Ngữ Pháp ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${level}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h2>\n");
      out.write("                        <ol>\n");
      out.write("                            <li><a href=\"HomeControl\">Trang Chủ</a></li>\n");
      out.write("                            <li>Ngữ Pháp</li>\n");
      out.write("                        </ol>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </section><!-- End Breadcrumbs -->\n");
      out.write("\n");
      out.write("            <!-- ======= Services Section ======= -->\n");
      out.write("            <section id=\"services\" class=\"services\" style=\"background: #fff\">\n");
      out.write("                <div class=\"container\" data-aos=\"fade-up\">\n");
      out.write("                    <div class=\"row gy-4 mt-4 justify-content-center\" data-aos=\"zoom-in\" data-aos-delay=\"250\">\n");
      out.write("                        <div class=\"container mt-4\">        \n");
      out.write("                            <table class=\"table table-striped\">\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th hidden>ID</th>\n");
      out.write("                                        <th>Ngữ Pháp</th>\n");
      out.write("                                        <th>Cách Dùng</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                <c:forEach items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listG}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" var=\"g\">\n");
      out.write("                                    <tr>               \n");
      out.write("                                        <td hidden>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${g.grammarID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                                        <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${g.structure}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("こん</td>\n");
      out.write("                                        <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${g.use}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                                        \n");
      out.write("                                    </tr>\n");
      out.write("                                </c:forEach>\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section><!-- End Services Section -->\n");
      out.write("\n");
      out.write("        </main><!-- End #main -->\n");
      out.write("\n");
      out.write("    </main><!-- End #main -->\n");
      out.write("\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer_user.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Vendor JS Files -->\n");
      out.write("    <script src=\"user/vendor/purecounter/purecounter_vanilla.js\"></script>\n");
      out.write("    <script src=\"user/vendor/aos/aos.js\"></script>\n");
      out.write("    <script src=\"user/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"user/vendor/glightbox/js/glightbox.min.js\"></script>\n");
      out.write("    <script src=\"user/vendor/isotope-layout/isotope.pkgd.min.js\"></script>\n");
      out.write("    <script src=\"user/vendor/swiper/swiper-bundle.min.js\"></script>\n");
      out.write("    <script src=\"user/vendor/php-email-form/validate.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Template Main JS File -->\n");
      out.write("    <script src=\"user/js/main.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
}
