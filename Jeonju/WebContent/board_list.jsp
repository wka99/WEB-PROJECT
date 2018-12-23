<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import ="java.sql.*" %>
<%@page import="bean.postDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>board_list</title>
</head>
<body>
<%
      int id=0;
      int ref=0;
      int rownum=0;
      String userlocation =request.getParameter("title");
 %>
      <center>
      <h1><b>${param.title }의 게시글</b></h1><br>
       <table border="0" align="center" width="600px;" height="200px;">
       
       <tr style="background-color:Lightgray;">
         <td align="center" width="75">글번호</td>
         <td align="center" width="75">글쓴이</td>
         <td align="center"width="200">사진</td>
         <td align="center" width="175">글제목</td>
       </tr>
      
      <%
      postDAO pd=new postDAO();
      String sql="select * from post where location=\""+userlocation+"\"";
      ResultSet rs=pd.getResult(sql); //Database라는 클래스의 getResult 메소드로 sql문 실행후, resultset에 저장.
      if(rs==null)
         out.println("DB연동 오류입니다."); 
      
      rs.last();
      rownum = rs.getRow();
      rs.beforeFirst();
      
      while(rs.next())
      {
    	  String img="http://localhost:8080/Jeonju/UploadFile/"+rs.getString("picture1");
         %>
           <tr>
             <td align="center"><%= rownum %> </td>
             <td align="left"><%=rs.getString("id") %></td>
             <td align="left">
             	<img src=<%=img %> width="100%" height="120"/>
             </td>
             <td align="center"><a href="postContentPage.jsp?number=<%=rs.getString("number")%>"><%= rs.getString("title") %></td>
            </tr>
      <%
           rownum--;
      }
      %>
     </table>
   </center>
</body>
</html>