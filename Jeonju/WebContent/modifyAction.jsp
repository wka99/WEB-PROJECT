

<!-- 개인정보 수정하는 페이지 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.*" %>
<%@ page import= "java.sql.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
    
    <!-- 현재 페이지에서만 빈즈 사용 -->
    <jsp:useBean id="user" class="user.User" scope="page"/>
    <jsp:setProperty name="user" property="*"/>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= utf-8">
<title>Insert title here</title>
</head>
<body>
<%

UserDAO userDAO = new UserDAO();
String userName=request.getParameter("userName");
String userEmail=request.getParameter("userEmail");
String userPassword=request.getParameter("userPassword");
String userAddress=request.getParameter("userAddress");
String userAge=request.getParameter("userAge");

userDAO.modifyInfo(userName, userEmail, userPassword, userAddress, userAge);
	%>
   <script>
	alert('수정되었습니다.');
	location.href='MainPage.jsp';
</script>
   
</body>
</html>