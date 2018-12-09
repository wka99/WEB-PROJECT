<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="EUC-KR">
<title>전주 mypage</title>
<link rel="stylesheet" type="text/css" href="NewFile1.css">
</head>
<body>
<div id="container">
 <jsp:include page="header.jsp" flush="false"/>
    <jsp:include page="UserInfo.jsp" flush="false"/>
    <section class="Userback">
    	<div class="title">
    		<img class="bigMenu" id="내가 즐겨찾기한 지역" src="star.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;내가 즐겨찾기한 지역</font></b>
    	</div>
    	<div align="right">
    		<button class="btn-2" onClick="location.href='##sss'">즐겨찾기 수정하기</button>
    	</div>
    	<br>
    	<select>
    		<option value="0">전체 보기</option>
    		<option value="">00동</option>
    	</select>
    	<div class="searchwindow4">
    		<input type="text" class="searchtext4" value=""/>
    		<button id="searchbutton4" type="button" class="search4">search</button>
    	</div>
    	<br><br>
    	<div class="bookmark_posts">
    	<br>
    	<table id="bookmark-table">
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