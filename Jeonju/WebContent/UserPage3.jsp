<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<meta content="text/html" charset="EUC-KR">
<title>���� mypage</title>
<link rel="stylesheet" type="text/css" href="NewFile1.css">
=======
<meta content="text/html" charset="utf-8">
<title>전주 mypage</title>
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
>>>>>>> a760cce7f45d37437528106806f86dcf528bba89
</head>
<body>
<div id="container">
 <jsp:include page="UserPage/header.jsp" flush="false"/>
    <jsp:include page="UserPage/UserInfo.jsp" flush="false"/>
    <section class="Userback">
    	<div class="title">
    		<img class="bigMenu" id="내가 스크랩한 글" src="images/bookmark-ribbon.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;내가 스크랩한 글</font></b>
    	</div>
    	<div class="scrap_posts">
    		<input type="text" class="searchtext2" value=""/>
    		<button id="searchbutton" type="button" class="search2">search</button>
    	</div>
    </section>
</div>
</body>
</html>