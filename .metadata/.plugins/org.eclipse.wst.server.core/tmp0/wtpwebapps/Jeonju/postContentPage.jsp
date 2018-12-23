<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="bean.postDAO" %>
<jsp:useBean id="pb" class="bean.PostDatabasebean"/>
<jsp:setProperty name="pb" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
</head>
<body>
<div id="container">
 <jsp:include page="UserPage/header.jsp" flush="false"/>
    <jsp:include page="UserPage/UserInfo.jsp" flush="false"/>
        <section class="Userback">
    	<div class="postContent">
<%
	postDAO pd= new postDAO();
	String number=request.getParameter("number"); 
	String sql="select * from post where number="+number;
	ResultSet rs = pd.getResult(sql);
	while(rs.next()){
		String img="http://localhost:8080/Jeonju/UploadFile/"+rs.getString("picture1");
%>
    		<table class="pc">
    			<tr>
    				<td colspan="2"><h1 align="center"><%=rs.getString("title") %></h1></td>
    			</tr>
    			<tr>
    				<td align="left"><b><%=rs.getString("id") %></b></td>
    				<td align="center">[<%=rs.getString("location")%>&nbsp;-&nbsp;<%=rs.getString("living")%>]</td>
    			</tr>
    			<tr>
    				<td colspan="2" align="center"><hr><br>
    				<img width="500px" src=<%=img %>></td>
    			</tr>
    			<tr>
    				<td><br><%=rs.getString("content")%></td>
    			</tr>
    			<tr>
    				<td colspan="2" align="center"><br><br><a href="AllContent.jsp">전체 게시글 보기</a></td>
    			</tr>
    		</table>
 <%} %>
    	</div>
    </section>
</div>
</body>
</html>