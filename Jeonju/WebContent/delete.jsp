<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="user.UserDAO" %>
<%request.setCharacterEncoding("UTF-8");%>
    
    <!-- 현재 페이지에서만 빈즈 사용 -->
    <jsp:useBean id="user" class="user.User" scope="page"/>
    <jsp:setProperty name="user" property="*"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원탈퇴</title>
</head>
<body>

<%
UserDAO userDAO = new UserDAO();
String userEmail=request.getParameter("userEmail");
String userPassword1=request.getParameter("userPassword1");
int check=userDAO.DoubleCheck(userEmail, userPassword1);

	if(check==0)
	{
%>
<script>alert('비밀번호 혹은 이메일을 잘못입력하셨습니다');

	history.back();</script>
<%
}

else{
//테스트
userDAO.out(userEmail, userPassword1);

%>
<script>
alert('정말 탈퇴되었습니다.');
location.href='logoutAction.jsp';
</script>
<%} %>
</body>
</html>