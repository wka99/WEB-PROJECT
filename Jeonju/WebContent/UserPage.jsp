<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>
<%request.setCharacterEncoding("euc-kr");%>
<%@page import="bean.postDAO" %>
<jsp:useBean id="pb" class="bean.PostDatabasebean"/>
<jsp:setProperty name="pb" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="EUC-KR">
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
	<%//��¦ �ļ��� �� ��ư ���� 
	 //�ڹٽ�ũ��Ʈ�� ������ jsp�� ������ �ȵǾ ��ư Ŭ���ϸ� �������� query �����ؼ�
	//������ reload, �ٸ� ����� �ִٸ� ���ĺ��ô� +session�� �Ἥ �ѹ� ��ư�� ������ �ٽ� �������� �� �� ���� �� �մϴ�....
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
<title>���� mypage</title>
<link rel="stylesheet" type="text/css" href="NewFile1.css">
</head>
<body>
<div id="container">
    <jsp:include page="header.jsp" flush="false"/>
    <jsp:include page="UserInfo.jsp" flush="false"/>
    <section class="Userback">
    	<div class="title">
    		<img class="bigMenu" id="���� �� ��" src="paper.png" width="27px" height="27px"></img>
    		<b><font size="5">&nbsp;���� �� ��</font></b>
    	</div>
    	<div align="right">
    		<button class="btn-2" onClick="location.href='UploadPage.jsp'">���ο� �۾���</button>
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
    			//���߿� ���̵� �ش��ϴ� �Խñ۸� �������� ���� ������ ���� ������� ���̵� Ȯ���ϰ� �̿� ��ġ�ϴ�
    			//�Խñ� ���� ���������� sql �����Ұ�!!
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
						if (c.length()>30)//30�� �̻��̸� �����ǵ���
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
							if (c.length()>30)//30�� �̻��̸� �����ǵ���
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