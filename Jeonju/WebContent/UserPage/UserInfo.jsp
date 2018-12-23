<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="UserInfo">
    	<br><br>
    	<img id="userImg" src="images/user.png" width="80px" height="80px"></img>
    	<br><p align="center"><%if (session.getAttribute("userName")!=null) out.println(session.getAttribute("userName"));
    	else out.println("로그인이 필요합니다.");%></p><br></a>
	<div class="menu">
    	<img id="usermenuimg" src="images/paper.png"></img>
    	<a href="UserPage.jsp"><span>&nbsp;내가 쓴 글</span><br></a>
    	<img id="usermenuimg" src="images/thumb-up-button.png"></img>
    	<a href="UserPage2.jsp"><span>&nbsp;내가 좋아요한 글</span><br></a>
    	<img id="usermenuimg" src="images/bookmark-ribbon.png"></img>
    	<a href="UserPage3.jsp"><span>&nbsp;내가 스크랩한 글</span><br></a>
    	<img id="usermenuimg" src="images/star.png"></img>
    	<a href="UserPage4.jsp"><span>&nbsp;내가 즐겨찾기한 지역</span></a><br>
    	<a href="checkModi.jsp"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 회원 정보 수정</span></a><br>
    	<a href="checkDelete.jsp"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 회원 탈퇴</span></a>
	</div>
    </nav>
</body>
</html>