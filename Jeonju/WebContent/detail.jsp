<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 
<title>detail</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
</head>
<body>
<% String title=request.getParameter("title");%>
<script>
$(document).ready(function() {
   title="<%=title%>";
   var a,b;
   if(title=="ȿ�ڵ�1��"){
         a="127.121983"; b="35.806501";
         
      }else if(title=="ȿ�ڵ�2��"){
         a="127.100327"; b="35.807247";
      }else if(title=="ȿ�ڵ�3��"){
         a="127.098285"; b="35.825140";
      }else{
         out.println("�ٽ� �������ּ���");
      }  


});
   </script>
<div id="container">
      <jsp:include page="UserPage/header.jsp" flush="false" />
<h2><%=title %>�Դϴ�</h2> 
<table>
<tr>
<td><%@include file="map.jsp"%></td>
<td><%@include file="board-list.jsp"%></td>
</table>

</div>
</body>
</html>