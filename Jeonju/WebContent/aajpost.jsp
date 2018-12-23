<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="bean.postDAO" %>
<jsp:useBean id="pb" class="bean.PostDatabasebean"/>


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
    $('.like').click(function(){
       var num=$(this).attr("id");
       window.location.href=encodeURI("AajPage.jsp?number_like="+num);
    });
    $('.star').click(function(){
       var num=$(this).attr("id");
       window.location.href=encodeURI("AajPage.jsp?number_star="+num);
    });
    
})
</script>
</head>
<body>
       <br>
       <table id="user-table2">
          <tbody>
          <tr>
          <%
             int count=0;
             ResultSet rs=null;
             String sql="select * from post order by likes desc, bookmarks desc";
             rs=pd.getResult(sql);
             while(rs.next()&&count<6){
                count++;
                String img="http://localhost:8080/Jeonju/UploadFile/"+rs.getString("picture1");
                if (count%2!=1&&count!=1){
                	
          %>
            <td><div class="table_content">
               <div class="userID" align="left" style="font-size:14px;"><b><%=rs.getString("id") %></b></div>
            <img src=<%=img %> width="160px" height="130px"><br>
            <div class="title"style="font-size:13px;"><a href="postContentPage.jsp?number=<%=rs.getString("number")%>"><%=rs.getString("title") %></a></div>
            <div class="buttons" id="<%=rs.getString("id") %>">
            <button id="<%=rs.getString("number") %>" class="like" name="like"><img width="15px" src="images/thumb-up-button.png"></button>
            <%=rs.getString("likes") %>
            <button id="<%=rs.getString("number") %>" class="star" name="star"><img width="15px" src="images/star.png"></button>
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
                else if(count%2==1){
                	
                %>
                </tr>
                <tr>
                   <td><div class="table_content">
                  <div class="userID" align="left" style="font-size:14px;"><b><%=rs.getString("id") %></b></div>
               <img src=<%=img %> width="160px" height="130px"><br>
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
</body>
</html>