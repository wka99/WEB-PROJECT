<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.*"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*" %>


 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html;charset=utf-8">
<title>감전</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<%
  request.setCharacterEncoding("utf-8");  //Set encoding
  String name  =  request.getParameter("name"); 
%>
</head>

<body>
<%
	String userEmail=null;
	if(session.getAttribute("userEmail")!=null){
		userEmail=(String)session.getAttribute("userEmail");
	}
%>

<div class="slideBehind">
<div class="slide">
<ul class="slide_ul">
<li><a href="#"><img src="images/night.png" style="width: 1265px; height: 510px; overflow:hidden;" alt="사진이 없습니다"></a></li>
<li><a href="#"><img src="images/aut.png" style="width: 1265px; height: 510px; overflow:hidden;" alt="사진이 없습니다"></a></li>
<li><a href="#"><img src="images/겨울전주.PNG" style="width: 1265px; height: 510px; overflow:hidden;" alt="사진이 없습니다"></a></li>
<li><a href="#"><img src="images/bi.png"   style="width: 1265px; height: 510px; overflow:hidden;"alt="사진이 없습니다"></a></li>
<li><a href="#"><img src="images/play.png" style="width: 1265px; height: 510px; overflow:hidden;" alt="사진이 없습니다"></a></li>
</ul>
</div>
</div>


<div class="slidesub">
/* GAMJEON이름 가운데에 새기기*/
<center>
<br><br><br><br><br><br><br>
 <h1><font color="white" size="18"><big><b>감전</b></big></font></h1>
<hr color="white" width="120" size="3" >
<br><br><br><br><br>


<!--올 어바웃 전주-->
<a href="AajPage.jsp"><font color="white" size="4">All About JeonJu</font></a>
</center>
</div>

{<!-- 로그인-->
<%
	if(session.getAttribute("userEmail")==null){ //로그인 안 됐으면
%>
    	<center>
        <a href="login.jsp"><div class="in">login</div></a>
	</center>
 <%
	}
	else{//로그인 됐으면
 %>
 <div class="out">
 	<div class="login_list_common"><%=session.getAttribute("userName")%>님 </div>
 	<a href="UserPage.jsp"><div class="login_list_common">마이페이지</div></a><br>
 	<a href="UserPage4.jsp"><div class="login_list_common">즐겨찾기</div></a><br>
 	<a href="UserPage.jsp"><div class="login_list_common">내가 쓴 글</div></a><br>
 	<a href="UploadPage.jsp"><div class="login_list_common">게시글 쓰기</div></a><br>
 	<a href="logoutAction.jsp"><div class="login_list_common">로그아웃</div></a><br>
 </div>
 <%
	}
 %>
<br>
<!--검색창과 검색 아이콘-->
<center>
<form action="AllContent.jsp" method="get">
<div class="search">
	<input id = "write" type="text" name="search" placeholder="검색어 "/>
	<button type = "submit" id="enter"><img src="images/magnifier.png" id="ono"></button>
</div>
</form>
</center>
<div class="logo">
<center>
<img class="J" src="images/전주.png" alt="사진이 없습니다." />
</center>
</div>


</body>
</html>
    