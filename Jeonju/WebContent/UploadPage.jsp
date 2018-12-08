<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="utf-8">
<title>전주 mypage</title>
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/UploadPage.js"></script>    
<script>
$(document).ready(function(){
    $("#searchbutton").click(function(event){
    	var keyword=$(".searchtext").val();
    	alert(keyword);
    });
})
</script>
</head>
<body>
<div id="container">
    <jsp:include page="UserPage/header.jsp" flush="false"/>
    <jsp:include page="UserPage/UserInfo.jsp" flush="false"/>
    <jsp:include page="UploadPage/UplPgOnly.jsp" flush="false"/>
</div>
</body>
</html>