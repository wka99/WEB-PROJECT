<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%request.setCharacterEncoding("utf-8");%>
<%@page import="bean.postDAO" %>
<jsp:useBean id="pb" class="bean.PostDatabasebean"/>
<jsp:setProperty name="pb" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="utf-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
<%
	String search=request.getParameter("search");
	postDAO pd = new postDAO();
	int like=0;
	int star=0;
	String number_like="";
	String number_star="";
	String sql2="";
%>

$(document).ready(function(){
	if(search!=null)
		$(".searchtext").val("<%=search%>");
	<%
		number_like=request.getParameter("number_like");
		number_star=request.getParameter("number_star");
		if (number_like!=null){
			sql2="update post set likes=likes+1 where number='"+number_like+"'";
			pd.upload(sql2);
		}
		if (number_star!=null){
			sql2="update post set bookmarks=bookmarks+1 where number='"+number_star+"'";
			pd.upload(sql2);
		}
	%>
    $("#searchbutton").click(function(event){
    	var keyword=$(".searchtext").val();
    	window.location.href=encodeURI("AllContent.jsp?search="+keyword);
    });
    $('.like').click(function(){
    	var num=$(this).attr("id");
    	window.location.href=encodeURI("AllContent.jsp?number_like="+num+"&search="+"<%=search%>");
    });
    $('.star').click(function(){
    	var num=$(this).attr("id");
    	window.location.href=encodeURI("AllContent.jsp?number_star="+num+"&search="+"<%=search%>");
    });
    
})
</script>
<title>전주 mypage</title>
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
</head>
<body>
<div id="container">
    <jsp:include page="UserPage/header.jsp" flush="false"/>
    <jsp:include page="UserPage/UserInfo.jsp" flush="false"/>
    <section class="Userback">
    	<div class="title">
    		<br><br>
    		<b><font size="5">&nbsp;&nbsp;&nbsp;&nbsp;전체 게시글</font></b>
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
    		<%
    			int count=0;
    			ResultSet rs=null;
    			String sql="";
    			if (search==null)
    				sql="select * from post";
    			else
    				sql="select * from post where (content like '%"+search+"%' or title like'%"+search+"%')";
    			rs=pd.getResult(sql);
    			while(rs.next()){
    				count++;
    				if (count%3!=1&&count!=1){
    		%>
				<td><div class="table_content">
					<div class="userID" align="left" style="font-size:14px;"><b><%=rs.getString("id") %></b></div>
					<img src="images/ds.jpg" width="240px" height="180px"><br>
					<div class="title"style="font-size:13px;"><a href="postContentPage.jsp?number=<%=rs.getString("number")%>"><%=rs.getString("title") %></a></div>
					<div class="buttons">
					<button class="like" id="<%=rs.getString("number") %>" name="like" ><img width="15px" src="images/thumb-up-button.png"></button>
					<%=rs.getString("likes") %>
					<button class="star" id="<%=rs.getString("number") %>" name="star"><img width="15px" src="images/star.png"></button>
					<%=rs.getString("bookmarks") %>
					</div>
					<div class="content"style="font-size:13px;">
					<%
						String c=rs.getString("content");
						if (c.length()>30)//30자 이상이면 생략되도록
							c=c.substring(0,30)+"...";
						out.print(c);
					%>
					</div>
				</div></td>								
    			<%
    				}
    				else if(count%3==1){%>
    				</tr>
    				<tr>
	    				<td><div class="table_content">
						<div class="userID" align="left" style="font-size:14px;"><b><%=rs.getString("id") %></b></div>
						<img src="images/ds.jpg" width="240px" height="180px"><br>
						<div class="title"style="font-size:13px;"><a href="postContentPage.jsp?number=<%=rs.getString("number")%>"><%=rs.getString("title") %></a></div>
						<div class="buttons" id="<%=rs.getString("id") %>">
						<button id="<%=rs.getString("number") %>" class="like" name="like"><img width="15px" src="images/thumb-up-button.png"></button>
						<%=rs.getString("likes") %>
						<button id="<%=rs.getString("number") %>" class="star" name="star"><img width="15px" src="images/star.png"></button>
						<%=rs.getString("bookmarks") %>
						</div>
						<div class="content" style="font-size:13px;">
						<%
							String c=rs.getString("content"); 
							if (c.length()>30)//30자 이상이면 생략되도록
								c=c.substring(0,30)+"...";
							out.print(c);
						%>
						</div>
					</div></td>
    			<%
    				}
    			}
    			%>
    			</tr>
    		</tbody>
    	</table>
    	</div>
    </section>
</div>
</body>
</html>