<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>
<%request.setCharacterEncoding("euc-kr");%>
<%@page import="bean.postDAO" %>
<jsp:useBean id="pb" class="bean.PostDatabasebean"/>
<jsp:setProperty name="pb" property="*"/>

=======
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
>>>>>>> a760cce7f45d37437528106806f86dcf528bba89
<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="utf-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
<%
	postDAO pd = new postDAO();
	int like=0;
	int star=0;
	String number_like="";
	String number_star="";
	String sql2="";
%>

$(document).ready(function(){
	<%//»ìÂ¦ ²Ä¼ö¸¦ ¾´ ¹öÆ° ±¸Çö 
	 //ÀÚ¹Ù½ºÅ©¸³Æ®ÀÇ º¯¼ö°¡ jsp·Î Àü´ŞÀÌ ¾ÈµÇ¾î¼­ ¹öÆ° Å¬¸¯ÇÏ¸é ÆäÀÌÁö¿¡ query Àü´ŞÇØ¼­
	//ÆäÀÌÁö reload, ´Ù¸¥ ¹æ¹ıÀÌ ÀÖ´Ù¸é °íÃÄº¾½Ã´Ù +sessionÀ» ½á¼­ ÇÑ¹ø ¹öÆ°À» ´©¸£¸é ´Ù½Ã ¸ø´©¸£°Ô ÇÒ ¼ö ÀÖÀ» µí ÇÕ´Ï´Ù....
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
    	window.location.href=encodeURI("UserPage.jsp?search="+keyword);
    });
    $('.like').click(function(){
    	var num=$(this).attr("id");
    	window.location.href=encodeURI("UserPage.jsp?number_like="+num);
    	<%
		sql2="";
		like+=1;
		%>
    });
    $('.star').click(function(){
    	var num=$(this).attr("id");
    	window.location.href=encodeURI("UserPage.jsp?number_star="+num);
    	<%
		sql2="";
		star+=1;
		%>
    });
    
})
</script>
<<<<<<< HEAD
<title>ÀüÁÖ mypage</title>
<link rel="stylesheet" type="text/css" href="NewFile1.css">
=======
<title>ì „ì£¼ mypage</title>
<link rel="stylesheet" type="text/css" href="css/NewFile.css">

>>>>>>> a760cce7f45d37437528106806f86dcf528bba89
</head>
<body>
<div id="container">
    <jsp:include page="UserPage/header.jsp" flush="false"/>
    <jsp:include page="UserPage/UserInfo.jsp" flush="false"/>
    <section class="Userback">
    	<div class="title">
    		<img class="bigMenu" id="ë‚´ê°€ ì“´ ê¸€" src="images/paper.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;ë‚´ê°€ ì“´ ê¸€</font></b>
    	</div>
    	<div align="right">
    		<button class="btn-2" onClick="location.href='UploadPage.jsp'">ìƒˆë¡œìš´ ê¸€ì“°ê¸°</button>
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
    			String search=request.getParameter("search");
    			//³ªÁß¿¡ ¾ÆÀÌµğ¿¡ ÇØ´çÇÏ´Â °Ô½Ã±Û¸¸ °¡Á®¿À±â À§ÇØ ¼¼¼ÇÀÇ ÇöÀç »ç¿ëÀÚÀÇ ¾ÆÀÌµğ¸¦ È®ÀÎÇÏ°í ÀÌ¿Í ÀÏÄ¡ÇÏ´Â
    			//°Ô½Ã±Û ¸¸À» °¡Á®¿Àµµ·Ï sql Á¶Á¤ÇÒ°Í!!
    			//String id=(String)session.getAttribute("id");
    			int count=0;
    			ResultSet rs=null;
    			String sql="";
    			if (search==null)
    				sql="select * from post";
    			else
    				sql="select * from post where content like '%"+search+"%' or title like'%"+search+"%'";
    			rs=pd.getResult(sql);
    			while(rs.next()){
    				count++;
    				if (count%3!=1&&count!=1){
    		%>
				<td><div class="table_content">
<<<<<<< HEAD
					<div class="userID" align="left" style="font-size:14px;"><b><%=rs.getString("id") %></b></div>
					<img src="ds.jpg" width="240px" height="180px"><br>
					<div class="title"style="font-size:13px;"><%=rs.getString("title") %></div>
					<div class="buttons">
					<button class="like" id="<%=rs.getString("number") %>" name="like" ><img width="15px" src="thumb-up-button.png"></button>
					<button class="star" id="<%=rs.getString("number") %>" name="star"><img width="15px" src="star.png"></button>
					</div>
					<div class="content"style="font-size:13px;">
					<%
						String c=rs.getString("content");
						if (c.length()>30)//30ÀÚ ÀÌ»óÀÌ¸é »ı·«µÇµµ·Ï
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
						<img src="ds.jpg" width="240px" height="180px"><br>
						<div class="title"style="font-size:13px;"><%=rs.getString("title") %></div>
						<div class="buttons" id="<%=rs.getString("id") %>">
						<button id="<%=rs.getString("number") %>" class="like" name="like"><img width="15px" src="thumb-up-button.png"></button>
						<button id="<%=rs.getString("number") %>" class="star" name="star"><img width="15px" src="star.png"></button>
						</div>
						<div class="content" style="font-size:13px;">
						<%
							String c=rs.getString("content"); 
							if (c.length()>30)//30ÀÚ ÀÌ»óÀÌ¸é »ı·«µÇµµ·Ï
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
=======
					<div class="userID" align="left" style="font-size:13px;">User1234</div><br>
					<img src="images/ds.jpg" width="200px" height="170px"><br>
					<div class="title">ì œëª©ì…ë‹ˆë‹¤</div><br>
					<div class="content">ëª©ë„ ì•„í”„ê³  ì¡¸ë ¤ìš” ì˜¤ëŠ˜ í•´ì„œ dbë¡œ ì—°ê²°ê¹Œì§€ëŠ” í•˜ê³  ì‹¶ë‹¤.....</div>
				</div></td>								
    			<td><div class="table_content">
					<div class="userID" align="left" style="font-size:13px;">User1234</div><br>
					<img src="images/ds.jpg" width="200px" height="170px"><br>
					<div class="title">ì œëª©ì…ë‹ˆë‹¤</div><br>
					<div class="content">ëª©ë„ ì•„í”„ê³  ì¡¸ë ¤ìš” ì˜¤ëŠ˜ í•´ì„œ dbë¡œ ì—°ê²°ê¹Œì§€ëŠ” í•˜ê³  ì‹¶ë‹¤.....2222222222</div>
				</div></td>	
				<td><div class="table_content">
					<div class="userID" align="left" style="font-size:13px;">User1234</div><br>
					<img src="images/ds.jpg" width="200px" height="170px"><br>
					<div class="title">ì œëª©ì…ë‹ˆë‹¤</div><br>
					<div class="content">ëª©ë„ ì•„í”„ê³  ì¡¸ë ¤ìš” ì˜¤ëŠ˜ í•´ì„œ dbë¡œ ì—°ê²°ê¹Œì§€ëŠ” í•˜ê³  ì‹¶ë‹¤.....333333333333333333333333</div>
				</div></td>	
    		</tr>
    		
>>>>>>> a760cce7f45d37437528106806f86dcf528bba89
    		</tbody>
    	</table>
    	</div>
    </section>
</div>
</body>
</html>