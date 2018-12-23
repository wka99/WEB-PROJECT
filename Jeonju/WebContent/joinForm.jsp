
<!-- 회원가입 페이지 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="UserPage/header.jsp" flush="false"/>	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"> </script>
<center>
<div id = "loginer">
<div id="form">
<form method="post" action="joinSave.jsp">
<fieldset>
	<legend><center>SIGN IN!</center></legend>
	<input type= "email" name="userEmail" placeholder="이메일">
	<!-- <a href="Dcheck.jsp"><input type="button" name="DoubleCheck" value="중복확인"></a>-->
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
        <button type="submit"> <a href = "MainPage.jsp">회원가입</a></button>
         <br>
         <br>
	</fieldset>
	</form>
	</div>
	</div>
	</center>
</body>
</html>