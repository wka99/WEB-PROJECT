/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.34
 * Generated at: 2018-12-22 09:49:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class MainPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"content-Type\" content=\"text/html;charset=utf-8\">\r\n");
      out.write("<title>감전</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\r\n");
      out.write("\r\n");
      out.write("<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/main.js\"></script>\r\n");

  request.setCharacterEncoding("utf-8");  //Set encoding
  String name  =  request.getParameter("name"); 

      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");

	String userEmail=null;
	if(session.getAttribute("userEmail")!=null){
		userEmail=(String)session.getAttribute("userEmail");
	}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"slideBehind\">\r\n");
      out.write("<div class=\"slide\">\r\n");
      out.write("<ul class=\"slide_ul\">\r\n");
      out.write("<li><a href=\"#\"><img src=\"images/night.png\" style=\"width: 1265px; height: 510px; overflow:hidden;\" alt=\"사진이 없습니다\"></a></li>\r\n");
      out.write("<li><a href=\"#\"><img src=\"images/aut.png\" style=\"width: 1265px; height: 510px; overflow:hidden;\" alt=\"사진이 없습니다\"></a></li>\r\n");
      out.write("<li><a href=\"#\"><img src=\"images/겨울전주.PNG\" style=\"width: 1265px; height: 510px; overflow:hidden;\" alt=\"사진이 없습니다\"></a></li>\r\n");
      out.write("<li><a href=\"#\"><img src=\"images/bi.png\"   style=\"width: 1265px; height: 510px; overflow:hidden;\"alt=\"사진이 없습니다\"></a></li>\r\n");
      out.write("<li><a href=\"#\"><img src=\"images/play.png\" style=\"width: 1265px; height: 510px; overflow:hidden;\" alt=\"사진이 없습니다\"></a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"slidesub\">\r\n");
      out.write("/* GAMJEON이름 가운데에 새기기*/\r\n");
      out.write("<center>\r\n");
      out.write("<br><br><br><br><br><br><br>\r\n");
      out.write(" <h1><font color=\"white\" size=\"18\"><big><b>감전</b></big></font></h1>\r\n");
      out.write("<hr color=\"white\" width=\"120\" size=\"3\" >\r\n");
      out.write("<br><br><br><br><br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--올 어바웃 전주-->\r\n");
      out.write("<a href=\"AajPage.jsp\"><font color=\"white\" size=\"4\">All About JeonJu</font></a>\r\n");
      out.write("</center>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("{<!-- 로그인-->\r\n");

	if(session.getAttribute("userEmail")==null){ //로그인 안 됐으면

      out.write("\r\n");
      out.write("    \t<center>\r\n");
      out.write("        <a href=\"login.jsp\"><div class=\"in\">login</div></a>\r\n");
      out.write("\t</center>\r\n");
      out.write(" ");

	}
	else{//로그인 됐으면
 
      out.write("\r\n");
      out.write(" <div class=\"out\">\r\n");
      out.write(" \t<div class=\"login_list_common\">");
      out.print(session.getAttribute("userName"));
      out.write("님 </div>\r\n");
      out.write(" \t<a href=\"UserPage.jsp\"><div class=\"login_list_common\">마이페이지</div></a><br>\r\n");
      out.write(" \t<a href=\"UserPage4.jsp\"><div class=\"login_list_common\">즐겨찾기</div></a><br>\r\n");
      out.write(" \t<a href=\"UserPage.jsp\"><div class=\"login_list_common\">내가 쓴 글</div></a><br>\r\n");
      out.write(" \t<a href=\"UploadPage.jsp\"><div class=\"login_list_common\">게시글 쓰기</div></a><br>\r\n");
      out.write(" \t<a href=\"logoutAction.jsp\"><div class=\"login_list_common\">로그아웃</div></a>\r\n");
      out.write(" </div>\r\n");
      out.write(" ");

	}
 
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<!--검색창과 검색 아이콘-->\r\n");
      out.write("<center>\r\n");
      out.write("<div class=\"search\">\r\n");
      out.write("\t<input id = \"write\" type=\"text\" placeholder=\"검색어 \"/>\r\n");
      out.write("\t<button type = \"submit\" id=\"enter\"><img src=\"images/magnifier.png\" id=\"ono\"></button>\r\n");
      out.write("</div>\r\n");
      out.write("</center>\r\n");
      out.write("<div class=\"logo\">\r\n");
      out.write("<center>\r\n");
      out.write("<img class=\"J\" src=\"images/전주.png\" alt=\"사진이 없습니다.\" />\r\n");
      out.write("</center>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("    ");
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
