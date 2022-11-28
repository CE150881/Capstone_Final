package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_005fmanage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Sidebar -->\n");
      out.write("        <ul class=\"navbar-nav bg-primary sidebar sidebar-dark accordion\" id=\"accordionSidebar\">\n");
      out.write("\n");
      out.write("            <!-- Sidebar - Brand -->\n");
      out.write("            <a class=\"sidebar-brand d-flex align-items-center justify-content-center\" href=\"dashboard.html\">\n");
      out.write("                <div class=\"sidebar-brand-text mx-3\">JPD</div>\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <!-- Divider -->\n");
      out.write("            <hr class=\"sidebar-divider my-0\">\n");
      out.write("\n");
      out.write("            <!-- Nav Item - Dashboard -->\n");
      out.write("            <li class=\"nav-item active\">\n");
      out.write("                <a class=\"nav-link\" href=\"DashboardControl\">\n");
      out.write("                    <i class=\"fas fa-fw fa-tachometer-alt\"></i>\n");
      out.write("                    <span>Trang Chủ</span></a>\n");
      out.write("            </li>\n");
      out.write("\n");
      out.write("            <!-- Divider -->\n");
      out.write("            <hr class=\"sidebar-divider\">\n");
      out.write("\n");
      out.write("            <c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.acc.role == 'Quản trị viên'}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                <!-- Heading -->\n");
      out.write("                <div class=\"sidebar-heading\">\n");
      out.write("                    QUẢN TRỊ VIÊN\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Account -->\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapseTwo\"\n");
      out.write("                       aria-expanded=\"true\" aria-controls=\"collapseTwo\">\n");
      out.write("                        <i class=\"fas fa-fw fa-cog\"></i>\n");
      out.write("                        <span>Tài Khoản</span>\n");
      out.write("                    </a>\n");
      out.write("                    <div id=\"collapseTwo\" class=\"collapse\" aria-labelledby=\"headingTwo\" data-parent=\"#accordionSidebar\">\n");
      out.write("                        <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                            <h6 class=\"collapse-header\">Quản Lý Tài Khoản:</h6>\n");
      out.write("                            <a class=\"collapse-item\" href=\"ManageAccountControl\">Danh Sách Tài Khoản</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <!-- Notification -->\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapseTwoo\"\n");
      out.write("                       aria-expanded=\"true\" aria-controls=\"collapseTwoo\">\n");
      out.write("                        <i class=\"fas fa-fw fa-cog\"></i>\n");
      out.write("                        <span>Thông Báo</span>\n");
      out.write("                    </a>\n");
      out.write("                    <div id=\"collapseTwoo\" class=\"collapse\" aria-labelledby=\"headingTwo\" data-parent=\"#accordionSidebar\">\n");
      out.write("                        <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                            <h6 class=\"collapse-header\">Quản Lý Thông Báo:</h6>\n");
      out.write("                            <a class=\"collapse-item\" href=\"a-manageNoti.html\">Danh Sách Thông Báo</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <!-- Forum -->\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapseUtilities\"\n");
      out.write("                       aria-expanded=\"true\" aria-controls=\"collapseUtilities\">\n");
      out.write("                        <i class=\"fas fa-fw fa-wrench\"></i>\n");
      out.write("                        <span>Cộng Đồng</span>\n");
      out.write("                    </a>\n");
      out.write("                    <div id=\"collapseUtilities\" class=\"collapse\" aria-labelledby=\"headingUtilities\"\n");
      out.write("                         data-parent=\"#accordionSidebar\">\n");
      out.write("                        <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                            <h6 class=\"collapse-header\">Quản Lý Cộng Đồng:</h6>\n");
      out.write("                            <a class=\"collapse-item\" href=\"a-adminForum.html\">Báo Cáo Chung</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"a-reportPost.html\">Bài Đăng Bị Báo Cáo</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"a-reportComment.html\">Bình Luận Bị Báo Cáo</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"a-topic.html\">Chủ Đề</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"a-disablePost.html\">Bài Đăng Bị Vô Hiệu Hóa</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"a-disableComment.html\">Bình Luận Bị Vô Hiệu Hóa</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"a-disableTopic.html\">Chủ Đề Bị Vô Hiệu Hóa</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <!-- Divider -->\n");
      out.write("                <hr class=\"sidebar-divider\">\n");
      out.write("            </c:if>\n");
      out.write("\n");
      out.write("            <c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.acc.role == 'Quản lí nội dung'}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> \n");
      out.write("                <!-- Heading -->\n");
      out.write("                <div class=\"sidebar-heading\">\n");
      out.write("                    QUẢN LÝ NỘI DUNG\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Nav Item - Pages Collapse Menu -->\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapsePages\"\n");
      out.write("                       aria-expanded=\"true\" aria-controls=\"collapsePages\">\n");
      out.write("                        <i class=\"fas fa-fw fa-folder\"></i>\n");
      out.write("                        <span>Bài Học</span>\n");
      out.write("                    </a>\n");
      out.write("                    <div id=\"collapsePages\" class=\"collapse\" aria-labelledby=\"headingPages\" data-parent=\"#accordionSidebar\">\n");
      out.write("                        <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                            <h6 class=\"collapse-header\">Quản Lý Bài Học:</h6>\n");
      out.write("                            <a class=\"collapse-item\" href=\"c-manageAlphabet.html\">Bảng Chữ Cái</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"c-manageKanji.html\">Kanji</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"c-manageGrammar.html\">Ngữ Pháp</a>\n");
      out.write("                            <div class=\"collapse-divider\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <!-- Nav Item - Pages Collapse Menu -->\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapse\"\n");
      out.write("                       aria-expanded=\"true\" aria-controls=\"collapse\">\n");
      out.write("                        <i class=\"fas fa-fw fa-folder\"></i>\n");
      out.write("                        <span>Kiểm Tra</span>\n");
      out.write("                    </a>\n");
      out.write("                    <div id=\"collapse\" class=\"collapse\" aria-labelledby=\"headingPages\" data-parent=\"#accordionSidebar\">\n");
      out.write("                        <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                            <h6 class=\"collapse-header\">Login Screens:</h6>\n");
      out.write("                            <a class=\"collapse-item\" href=\"login.html\">Login</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"register.html\">Register</a>\n");
      out.write("                            <a class=\"collapse-item\" href=\"forgot-password.html\">Forgot Password</a>\n");
      out.write("                            <div class=\"collapse-divider\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("            </c:if>\n");
      out.write("        </ul>\n");
      out.write("        <!-- End of Sidebar -->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
