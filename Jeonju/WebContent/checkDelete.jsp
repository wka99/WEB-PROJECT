<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
<title>회원확인</title>
</head>
<body>
<jsp:include page="UserPage/header.jsp" flush="false"/>	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"> </script>
<center>
<div id = "loginer">
<div id="form">
<form method="post" action="delete.jsp">
<fieldset>
	<legend><center> 회원 탈퇴 </center></legend> 
	<input type="email" name="userEmail" placeholder="이메일 입력"/><br><br>
	<input type="password" name="userPassword1" placeholder="비밀번호 입력"/><br><br>
       <input type="submit" value="탈퇴"/>
         <br>
         <br>
	</fieldset>
	</form>
	</div>
	</div>
	</center>
</body>
</html>