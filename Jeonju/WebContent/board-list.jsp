<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="bean.postDAO" %>

<!DOCTYPE html>
<html>
<head>


<title>board-list</title>
</head>
<body>

<%
      int id=0;
      int ref=0;
      int rownum=0;
 %>
 
 
      <center>
      <h1><b>게시글 목록 보기</b></h1>
       <table border="1" align="center" width="603px;">
       
       <tr style="background-color:Lightgray;">
         <td align="center" width="75">글번호</td>
         <td align="center" width="75">글쓴이</td>
         <td align="center"width="275">글제목</td>
         <td align="center" width="175">전자우편</td>
       </tr>
      
      <%
      postDAO pd=new postDAO();
      String sql = "select * from post"; //실행문을 sql 변수에 저장
      ResultSet rs=pd.getResult(sql); //Database라는 클래스의 getResult 메소드로 sql문 실행후, resultset에 저장.
      if(rs==null)
         out.println("DB연동 오류입니다."); 
      
      rs.last();
      rownum = rs.getRow();
      rs.beforeFirst();
      
      while(rs.next())
      {
         %>
           <tr>
             <td align="center"><%= rownum %> </td>
             <td align="left"><%=rs.getString("title") %></td>
             <td align="left"><% if (id!=ref) out.println("┖---→"); %>
               <a href=board-read.jsp?id=<%=rs.getString("content") %> style="width:250;"><%=rs.getString("title") %></a>
             </td>
             <td align="center"><%= rs.getString("number") %></td>
            </tr>
      <%
           rownum--;
      }
      %>

     </table>
   
<a href="board-insert.jsp">게시글 쓰기</a>
 
   </center>
</body>
</html>