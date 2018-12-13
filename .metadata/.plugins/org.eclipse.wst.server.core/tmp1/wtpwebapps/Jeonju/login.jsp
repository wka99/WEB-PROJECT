<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default">
	<div class = "navbar-header">
	<button type="button" class="navbar-toggle collapsed"
	data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
	aria-expanded="false">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="MainPage.jsp">GAMJEON</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav">
	<li><a href="MainPage.jsp">메인</a></li>
	<!-- <li><a href="bbs.jsp">게시판</a></li>-->
	</ul>
	<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
	<a href="#" class="dropdown-toggle"
	data-toggle="dropdown" role="button" aria-haspopup="true"
	aria-expanded="false">접속하기<span class="caret"></span></a>
	<ul class="dropdown-menu">
	<li class="active"><a href="login.jsp">로그인</a></li>
	</ul>
	</li>
	</ul>
	
	</div>
</nav>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"> </script>
<center>
<div id = "loginer">
<div id="form">
<form method="post" action="LoginPage/loginAction.jsp">
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