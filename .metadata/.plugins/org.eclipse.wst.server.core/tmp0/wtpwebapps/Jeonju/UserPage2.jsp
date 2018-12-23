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
	ResultSet rs=null;
	ResultSet rs2=null;
	String userEmail=(String)session.getAttribute("userEmail");
	if(userEmail==null){
%>
	alert("로그인이 필요한 페이지입니다");
	document.location.href="login.jsp";
<%
	}
	postDAO pd = new postDAO();
	int like=0;
	int star=0;
	String number_like="";
	String number_star="";
	String sql2="";
	String sql3="";
	String sql4="select max(likenum) from likes";
	String sql5="";
	String sql6="";
%>

$(document).ready(function(){
	<%
	number_like=request.getParameter("number_like");
	number_star=request.getParameter("number_star");
	sql5="select like_check from likes where postnum="+number_like+" and userEmail='"+userEmail+"'";
	if (number_like!=null){
		rs=pd.getResult(sql5);
		String checked="";
		if(rs.next()){
			checked=rs.getString("like_check");
		}
		rs=pd.getResult(sql4);
		rs.next();
		if(rs.getString("max(likenum)")==null){
			like=0;
			sql3="insert into likes values("+like+","+number_like+",'"+userEmail+"',1)";
			sql2="update post set likes=likes+1 where number='"+number_like+"'";
			pd.upload(sql2);
			pd.upload(sql3);
		}
		else if(checked.equals("1")){
			%>
			alert("이미 좋아요를 누른 글입니다.");
			<%
		}
		else{
			like=Integer.parseInt(rs.getString("max(likenum)"))+1;
			sql3="insert into likes values("+like+","+number_like+",'"+userEmail+"',1)";
			sql2="update post set likes=likes+1 where number='"+number_like+"'";
			pd.upload(sql2);
			pd.upload(sql3);
		}
	}
	if (number_star!=null){
		sql2="update post set bookmarks=bookmarks+1 where number='"+number_star+"'";
		pd.upload(sql2);
	}
	%>
    $("#searchbutton").click(function(event){
    	var keyword=$(".searchtext2").val();
    	window.location.href=encodeURI("UserPage2.jsp?search="+keyword);
    });
    $('.like').click(function(){
    	var num=$(this).attr("id");
    	window.location.href=encodeURI("UserPage2.jsp?number_like="+num);
    });
    $('.star').click(function(){
    	var num=$(this).attr("id");
    	window.location.href=encodeURI("UserPage2.jsp?number_star="+num);
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
    		<img class="bigMenu" id="내가 좋아요한 글" src="images/thumb-up-button.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;내가 좋아요한 글</font></b>
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
    		<%
    		String search=request.getParameter("search");
			int count=0;
			int flag=0;
			String sql="";
			if (search==null){
				
				sql5="select postnum from likes where userEmail='"+session.getAttribute("userEmail")+"'";
				rs2=pd.getResult(sql5);
				sql="select * from post where ";
				while(rs2.next()){
					flag=1;
					sql+="number="+rs2.getString("postnum")+" or ";
				}
				if(flag==0){
					sql=sql5;
				}
				else{
					sql=sql.substring(0,sql.length()-3);
					flag=0;
				}
			}
			else{
				sql5="select postnum from likes where userEmail='"+session.getAttribute("userEmail")+"'";
				sql="select * from post where (";
				rs2=pd.getResult(sql5);
				while(rs2.next()){
					flag=1;
					sql+="number="+rs2.getString("postnum")+" or ";
				}
				if(flag==0){
					sql=sql5;
				}
				else{
					sql=sql.substring(0,sql.length()-3);
					sql+=") and (content like '%"+search+"%' or title like'%"+search+"%')";
					flag=0;
				}
				System.out.println(sql);
			}
			rs=pd.getResult(sql);
			while(rs.next()){
				count++;
				if (count%3!=1&&count!=1){
					String img="http://localhost:8080/Jeonju/UploadFile/"+rs.getString("picture1");
    		%>
				<td><div class="table_content">
					<div class="userID" align="left" style="font-size:14px;"><b><%=rs.getString("id") %></b></div>
					<img src=<%=img %> width="240px" height="180px"><br>
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
    				else if(count%3==1){
    					String img="http://localhost:8080/Jeonju/UploadFile/"+rs.getString("picture1");
    				%>
    				</tr>
    				<tr>
	    				<td><div class="table_content">
						<div class="userID" align="left" style="font-size:14px;"><b><%=rs.getString("id") %></b></div>
						<img src=<%=img %> width="240px" height="180px"><br>
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