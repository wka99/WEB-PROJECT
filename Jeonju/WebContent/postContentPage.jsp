<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
%>
    		<table class="pc">
    			<tr>
    				<td colspan="2"><h1 align="center"><%=rs.getString("title") %></h1></td>
    			</tr>
    			<tr>
    				<td align="left"><b><%=rs.getString("id") %></b></td>
    				<td align="right">[<%=rs.getString("location")%>&nbsp;-&nbsp;<%=rs.getString("living")%>]</td>
    			</tr>
    			<tr>
    				<td colspan="2" align="center"><hr><br><%=rs.getString("content")%></td>
    			</tr>
    		</table>
 <%} %>
    	</div>
    </section>
</div>
</body>
</html>