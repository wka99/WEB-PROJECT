<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*"%>
    <%@ page import="user.UserDAO" %>
<%request.setCharacterEncoding("UTF-8");%>
     <!-- 현재 페이지에서만 빈즈 사용 -->
    <jsp:useBean id="user" class="user.User" scope="page"/>
    <jsp:setProperty name="user" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
<title>정보수정</title>
</head>
<body>
<jsp:include page="UserPage/header.jsp" flush="false"/>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"> </script>
<%
UserDAO userDAO = new UserDAO();
String userEmail=request.getParameter("userEmail");
String userPassword1=request.getParameter("userPassword1");
	
int result=userDAO.DoubleCheck(userEmail, userPassword1);
if(result==0)	{
%>
<script>alert('정보를 잘못 입력하셨습니다');

	history.back();</script>
<%
}

else if(result==1) { //비밀번호 제대로 입력했으면
//테스트
%>
<center>
<div id = "loginer">
<div id="form">
<form method="post" action="modifyAction.jsp">
<fieldset>
	<legend><center>회원정보수정</center></legend>
	이메일: <%=request.getParameter("userEmail") %>
	<input type="hidden" name="userEmail" value="<%= request.getParameter("userEmail")%>">
	<br><br>
	<input type="password" name="userPassword" placeholder="비밀번호" maxlength="20">
        <br><br>
    <input type="text" name="userName" placeholder="이름" maxlength="20"> <br><br>
   
   <select type="text" name="userAddress" size="1">
   <option>효자동1가</option>
   <option>효자동2가</option>
   <option>효자동3가</option>
   
   </select>
   <br><br>
        <input type="text" name="userAge" placeholder="나이" maxlength="20"><br><br>
        <input type="submit" value="수정"/> 
         <br>
         <br>
	</fieldset>
	</form>
	</div>
	</div>
	</center>
	<%}	%>
</body>
</html>