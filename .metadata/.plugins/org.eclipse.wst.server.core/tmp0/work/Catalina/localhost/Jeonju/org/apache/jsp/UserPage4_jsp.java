/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.34
 * Generated at: 2018-12-08 06:09:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UserPage4_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>전주 mypage</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"NewFile.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"container\">\r\n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "UserInfo.jsp", out, false);
      out.write("\r\n");
      out.write("    <section>\r\n");
      out.write("    \t<div class=\"title\">\r\n");
      out.write("    \t\t<img class=\"bigMenu\" id=\"내가 즐겨찾기한 지역\" src=\"star.png\" width=\"27px\" height=\"27px\"></img>\r\n");
      out.write("    \t\t<b><font size=\"5\">&nbsp;내가 즐겨찾기한 지역</font></b>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t<div align=\"right\">\r\n");
      out.write("    \t\t<button class=\"btn-2\" onClick=\"location.href='##sss'\">즐겨찾기 수정하기</button>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t<br>\r\n");
      out.write("    \t<select>\r\n");
      out.write("    \t\t<option value=\"0\">전체 보기</option>\r\n");
      out.write("    \t\t<option value=\"\">00동</option>\r\n");
      out.write("    \t</select>\r\n");
      out.write("    \t<div class=\"searchwindow4\">\r\n");
      out.write("    \t\t<input type=\"text\" class=\"searchtext4\" value=\"\"/>\r\n");
      out.write("    \t\t<button id=\"searchbutton4\" type=\"button\" class=\"search4\">search</button>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t<br><br>\r\n");
      out.write("    \t<div class=\"bookmark_posts\">\r\n");
      out.write("    \t<br>\r\n");
      out.write("    \t<table id=\"bookmark-table\">\r\n");
      out.write("    \t\t<tbody>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("\t\t\t\t<td><img src=\"ds.jpg\" width=\"200px\" height=\"170px\"></td>\r\n");
      out.write("\t\t\t\t<td><img src=\"ds.jpg\" width=\"200px\" height=\"170px\"></td>\r\n");
      out.write("\t\t\t\t<td><img src=\"ds.jpg\" width=\"200px\" height=\"170px\"></td>\t\t\t\t\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("    \t\t\t<td height=\"10px\">제목1</td>\r\n");
      out.write("\t\t\t\t<td height=\"10px\">제목2</td>\r\n");
      out.write("\t\t\t\t<td height=\"10px\">제목3</td>\t\t\t\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("    \t\t\t<td height=\"50px\">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>\r\n");
      out.write("\t\t\t\t<td height=\"50px\">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>\r\n");
      out.write("\t\t\t\t<td height=\"50px\">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>\t\t\t\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("\t\t\t\t<td><img src=\"ds.jpg\" width=\"200px\" height=\"170px\"></td>\r\n");
      out.write("\t\t\t\t<td><img src=\"ds.jpg\" width=\"200px\" height=\"170px\"></td>\r\n");
      out.write("\t\t\t\t<td><img src=\"ds.jpg\" width=\"200px\" height=\"170px\"></td>\t\t\t\t\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("    \t\t\t<td height=\"10px\">제목1</td>\r\n");
      out.write("\t\t\t\t<td height=\"10px\">제목2</td>\r\n");
      out.write("\t\t\t\t<td height=\"10px\">제목3</td>\t\t\t\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("    \t\t\t<td height=\"50px\">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>\r\n");
      out.write("\t\t\t\t<td height=\"50px\">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>\r\n");
      out.write("\t\t\t\t<td height=\"50px\">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>\t\t\t\r\n");
      out.write("    \t\t</tr>\r\n");
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
