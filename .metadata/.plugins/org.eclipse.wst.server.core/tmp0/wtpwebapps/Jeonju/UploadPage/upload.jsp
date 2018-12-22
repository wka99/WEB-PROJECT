<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.io.File" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="java.util.Enumeration" %>
<%@page import="file.uploadDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("userName");
	String Title=request.getParameter("title");
	String Content=request.getParameter("content");
	String location=request.getParameter("location");
	String living=request.getParameter("living");
	String []pictureNames=request.getParameterValues("box_all");

	
	String directory=application.getRealPath("/upload/");
	int maxSize=1024*1024*100;
	String encoding="UTF-8";

	for(int i=0;i<pictureNames.length;i++){
		out.write(i+": "+pictureNames[i]+"<br>");
	}
	new uploadDB().upload(id,Title,Content,location,living,pictureNames);
	response.sendRedirect("../UserPage.jsp");
%>
</body>
</html>