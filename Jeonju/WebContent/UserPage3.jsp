<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="EUC-KR">
<title>���� mypage</title>
<link rel="stylesheet" type="text/css" href="NewFile.css">
</head>
<body>
<div id="container">
 <jsp:include page="header.jsp" flush="false"/>
    <jsp:include page="UserInfo.jsp" flush="false"/>
    <section class="Userback">
    	<div class="title">
    		<img class="bigMenu" id="���� ��ũ���� ��" src="bookmark-ribbon.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;���� ��ũ���� ��</font></b>
    	</div>
    	<div class="scrap_posts">
    	
    	</div>
    </section>
</div>
</body>
</html>