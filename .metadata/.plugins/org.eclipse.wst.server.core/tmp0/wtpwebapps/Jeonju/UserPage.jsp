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
    <section>
    	<div class="title">
    		<img class="bigMenu" id="내가 쓴 글" src="paper.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;내가 쓴 글</font></b>
    	</div>
    	<div align="right">
    		<button class="btn-2" onClick="location.href='##sss'">새로운 글쓰기</button>
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
				<td><img src="ds.jpg" width="200px" height="170px"></td>
				<td><img src="ds.jpg" width="200px" height="170px"></td>
				<td><img src="ds.jpg" width="200px" height="170px"></td>				
    		</tr>
    		<tr>
    			<td height="10px">제목1</td>
				<td height="10px">제목2</td>
				<td height="10px">제목3</td>			
    		</tr>
    		<tr>
    			<td height="50px">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>
				<td height="50px">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>
				<td height="50px">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>			
    		</tr>
    		<tr>
				<td><img src="ds.jpg" width="200px" height="170px"></td>
				<td><img src="ds.jpg" width="200px" height="170px"></td>
				<td><img src="ds.jpg" width="200px" height="170px"></td>				
    		</tr>
    		<tr>
    			<td height="10px">제목1</td>
				<td height="10px">제목2</td>
				<td height="10px">제목3</td>			
    		</tr>
    		<tr>
    			<td height="50px">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>
				<td height="50px">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>
				<td height="50px">졸립고 슬프다 인생이여 이곳은 내용이 들어갈 부분이니라</td>			
    		</tr>
    		</tbody>
    	</table>
    	</div>
    </section>
</div>
</body>
</html>