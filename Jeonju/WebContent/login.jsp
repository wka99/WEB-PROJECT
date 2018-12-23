
<!-- 로그인 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
<title>로그인</title>
</head>
<body>
<jsp:include page="UserPage/header.jsp" flush="false"/>	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"> </script>
<center>
<div id = "loginer">
<div id="form">
<form method="post" action="loginAction.jsp">
<fieldset>
	<legend><center>LOGIN!</center></legend>
	<input type="email" name="userEmail" placeholder="이메일을 입력하세요.">
	<br><br>
	<input type="password" name="userPassword" placeholder="비밀번호를 입력하세요." maxlength="20">
        <br><br>
        <button type="submit"> <a href = "MainPage.jsp">login</a></button>
         <br>
         <br>
              계정이 없으신가요?<a href="joinForm.jsp">&nbsp 회원가입</a>
	</fieldset>
	</form>
	</div>
	</div>
	</center>
</body>
</html>