<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
    $("#searchbutton").click(function(event){
    	var keyword=$(".searchtext").val();
    	alert(keyword);
    });
})
</script>
<title>전주 mypage</title>
<link rel="stylesheet" type="text/css" href="NewFile.css">
</head>
<body>
<div id="container">
    <jsp:include page="header.jsp" flush="false"/>
    <jsp:include page="UserInfo.jsp" flush="false"/>
    <section class="Userback">
    	<div class="title">
    		<img class="bigMenu" id="내가 쓴 글" src="paper.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;내가 쓴 글</font></b>
    	</div>
    	<div align="right">
    		<button class="btn-2" onClick="location.href='UploadPage.jsp'">새로운 글쓰기</button>
    	</div>
    	<br>
    	<div class="searchwindow">
    		<input type="text" class="searchtext" value=""/>
    		<button id="searchbutton" type="button" class="search">search</button>
    	</div>
    	<br><br>
    	<div class="myPost">
    	<br>
    	<table id="user-table">
    		<tbody>
    		<tr>
				<td><div class="table_content">
					<div class="userID" align="left" style="font-size:13px;">User1234</div><br>
					<img src="ds.jpg" width="200px" height="170px"><br>
					<div class="title">제목입니다</div><br>
					<div class="content">목도 아프고 졸려요 오늘 해서 db로 연결까지는 하고 싶다.....</div>
				</div></td>								
    			<td><div class="table_content">
					<div class="userID" align="left" style="font-size:13px;">User1234</div><br>
					<img src="ds.jpg" width="200px" height="170px"><br>
					<div class="title">제목입니다</div><br>
					<div class="content">목도 아프고 졸려요 오늘 해서 db로 연결까지는 하고 싶다.....2222222222</div>
				</div></td>	
				<td><div class="table_content">
					<div class="userID" align="left" style="font-size:13px;">User1234</div><br>
					<img src="ds.jpg" width="200px" height="170px"><br>
					<div class="title">제목입니다</div><br>
					<div class="content">목도 아프고 졸려요 오늘 해서 db로 연결까지는 하고 싶다.....333333333333333333333333</div>
				</div></td>	
    		</tr>
    		
    		</tbody>
    	</table>
    	</div>
    </section>
</div>
</body>
</html>