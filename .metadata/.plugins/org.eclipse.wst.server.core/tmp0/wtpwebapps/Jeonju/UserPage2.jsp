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
    		<img class="bigMenu" id="���� ���ƿ��� ��" src="thumb-up-button.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;���� ���ƿ��� ��</font></b>
    	</div>
    	<br><br>
    	<div class="searchwindow2">
    		<input type="text" class="searchtext2" value=""/>
    		<button id="searchbutton" type="button" class="search2">search</button>
    	</div>
    	<br><br>
    	<div class="mylikePost">
    	<br>
    	<table id="user-like-table">
    		<tbody>
    		<tr>
				<td><img src="ds.jpg" width="200px" height="170px"></td>
				<td><img src="ds.jpg" width="200px" height="170px"></td>
				<td><img src="ds.jpg" width="200px" height="170px"></td>				
    		</tr>
    		<tr>
    			<td height="10px">����1</td>
				<td height="10px">����2</td>
				<td height="10px">����3</td>			
    		</tr>
    		<tr>
    			<td height="50px">������ ������ �λ��̿� �̰��� ������ �� �κ��̴϶�</td>
				<td height="50px">������ ������ �λ��̿� �̰��� ������ �� �κ��̴϶�</td>
				<td height="50px">������ ������ �λ��̿� �̰��� ������ �� �κ��̴϶�</td>			
    		</tr>
    		<tr>
				<td><img src="ds.jpg" width="200px" height="170px"></td>
				<td><img src="ds.jpg" width="200px" height="170px"></td>
				<td><img src="ds.jpg" width="200px" height="170px"></td>				
    		</tr>
    		<tr>
    			<td height="10px">����1</td>
				<td height="10px">����2</td>
				<td height="10px">����3</td>			
    		</tr>
    		<tr>
    			<td height="50px">������ ������ �λ��̿� �̰��� ������ �� �κ��̴϶�</td>
				<td height="50px">������ ������ �λ��̿� �̰��� ������ �� �κ��̴϶�</td>
				<td height="50px">������ ������ �λ��̿� �̰��� ������ �� �κ��̴϶�</td>			
    		</tr>
    		</tbody>
    	</table>
    	</div>
    </section>
</div>
</body>
</html>