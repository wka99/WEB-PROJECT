<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="EUC-KR">
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
	<li><a href="test.jsp">����</a></li>
	<!-- <li><a href="bbs.jsp">�Խ���</a></li>-->
	</ul>
	<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
	<a href="#" class="dropdown-toggle"
	data-toggle="dropdown" role="button" aria-haspopup="true"
	aria-expanded="false">�����ϱ�<span class="caret"></span></a>
	<ul class="dropdown-menu">
	<li class="active"><a href="login.jsp">�α���</a></li>
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
	<input type="email" name="userEmail" placeholder="�̸����� �Է��ϼ���.">
	<br><br>
	<input type="password" name="userPassword" placeholder="��й�ȣ�� �Է��ϼ���." maxlength="20">
        <br><br>
        <button type="submit"> <a href = "test.jsp">login</a></button>
         <br>
         <br>
              ������ �����Ű���?<a href="joinForm.jsp">&nbsp ȸ������</a>
	</fieldset>
	</form>
	</div>
	</div>
	</center>
</body>
</html>