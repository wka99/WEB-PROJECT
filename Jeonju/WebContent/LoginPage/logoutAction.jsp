<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();
%>
<script>
location.href='MainPage.jsp';
</script>
</body>
</html>