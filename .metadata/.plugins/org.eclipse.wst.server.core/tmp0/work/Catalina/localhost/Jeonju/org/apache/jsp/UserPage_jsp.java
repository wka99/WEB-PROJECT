/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.34
 * Generated at: 2018-12-08 08:21:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UserPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta content=\"text/html\" charset=\"EUC-KR\">\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("    $(\"#searchbutton\").click(function(event){\r\n");
      out.write("    \tvar keyword=$(\".searchtext\").val();\r\n");
      out.write("    \talert(keyword);\r\n");
      out.write("    });\r\n");
      out.write("})\r\n");
      out.write("</script>\r\n");
      out.write("<title>전주 mypage</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"NewFile.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"container\">\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "UserInfo.jsp", out, false);
      out.write("\r\n");
      out.write("    <section class=\"Userback\">\r\n");
      out.write("    \t<div class=\"title\">\r\n");
      out.write("    \t\t<img class=\"bigMenu\" id=\"내가 쓴 글\" src=\"paper.png\" width=\"27px\" height=\"27px\"></img>\r\n");
      out.write("    \t\t<b><font size=\"5\">&nbsp;내가 쓴 글</font></b>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t<div align=\"right\">\r\n");
      out.write("    \t\t<button class=\"btn-2\" onClick=\"location.href='UploadPage.jsp'\">새로운 글쓰기</button>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t<br>\r\n");
      out.write("    \t<div class=\"searchwindow\">\r\n");
      out.write("    \t\t<input type=\"text\" class=\"searchtext\" value=\"\"/>\r\n");
      out.write("    \t\t<button id=\"searchbutton\" type=\"button\" class=\"search\">search</button>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t<br><br>\r\n");
      out.write("    \t<div class=\"myPost\">\r\n");
      out.write("    \t<br>\r\n");
      out.write("    \t<table id=\"user-table\">\r\n");
      out.write("    \t\t<tbody>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("\t\t\t\t<td><div class=\"table_content\">\r\n");
      out.write("\t\t\t\t\t<div class=\"userID\" align=\"left\" style=\"font-size:13px;\">User1234</div><br>\r\n");
      out.write("\t\t\t\t\t<img src=\"ds.jpg\" width=\"200px\" height=\"170px\"><br>\r\n");
      out.write("\t\t\t\t\t<div class=\"title\">제목입니다</div><br>\r\n");
      out.write("\t\t\t\t\t<div class=\"content\">목도 아프고 졸려요 오늘 해서 db로 연결까지는 하고 싶다.....</div>\r\n");
      out.write("\t\t\t\t</div></td>\t\t\t\t\t\t\t\t\r\n");
      out.write("    \t\t\t<td><div class=\"table_content\">\r\n");
      out.write("\t\t\t\t\t<div class=\"userID\" align=\"left\" style=\"font-size:13px;\">User1234</div><br>\r\n");
      out.write("\t\t\t\t\t<img src=\"ds.jpg\" width=\"200px\" height=\"170px\"><br>\r\n");
      out.write("\t\t\t\t\t<div class=\"title\">제목입니다</div><br>\r\n");
      out.write("\t\t\t\t\t<div class=\"content\">목도 아프고 졸려요 오늘 해서 db로 연결까지는 하고 싶다.....2222222222</div>\r\n");
      out.write("\t\t\t\t</div></td>\t\r\n");
      out.write("\t\t\t\t<td><div class=\"table_content\">\r\n");
      out.write("\t\t\t\t\t<div class=\"userID\" align=\"left\" style=\"font-size:13px;\">User1234</div><br>\r\n");
      out.write("\t\t\t\t\t<img src=\"ds.jpg\" width=\"200px\" height=\"170px\"><br>\r\n");
      out.write("\t\t\t\t\t<div class=\"title\">제목입니다</div><br>\r\n");
      out.write("\t\t\t\t\t<div class=\"content\">목도 아프고 졸려요 오늘 해서 db로 연결까지는 하고 싶다.....333333333333333333333333</div>\r\n");
      out.write("\t\t\t\t</div></td>\t\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t\t</tbody>\r\n");
      out.write("    \t</table>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    </section>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
