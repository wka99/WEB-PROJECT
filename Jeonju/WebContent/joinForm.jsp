<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
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
	<a class="navbar-brand" href="test.jsp">GAMJEON</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav">
	<li><a href="test.jsp">메인</a></li>
	<!-- <li><a href="bbs.jsp">게시판</a></li> -->
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
<form method="post" action="LoginPage/joinSave.jsp">
<fieldset>
	<legend><center>SIGN IN!</center></legend>
	<input type="email" name="userEmail" placeholder="이메일">
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
        <button type="submit"> <a href = "test.jsp">회원가입</a></button>
         <br>
         <br>
	</fieldset>
	</form>
	</div>
	</div>
	</center>
</body>
</html>