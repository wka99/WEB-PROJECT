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
   //String []pictureSrcs=multi.getParameterValues("box_all");
   //System.out.println(pictureSrcs[0]);
   request.setCharacterEncoding("UTF-8");
   
   String directory=application.getRealPath("/UploadFile/");
   int maxSize=1024*1024*100;
   String encoding="UTF-8";
   MultipartRequest multi=new MultipartRequest(request,directory,maxSize,encoding,new DefaultFileRenamePolicy());
   String id=multi.getParameter("userName");
   String Title=multi.getParameter("title");
   String Content=multi.getParameter("content");
   String location=multi.getParameter("location");
   String living=multi.getParameter("living");
   
   String fileName=multi.getFilesystemName("file");
   
   uploadDB udb=new uploadDB();
   int number=udb.upload(id,Title,Content,location,living,fileName);
   response.sendRedirect("../UserPage.jsp");
%>
</body>
</html>