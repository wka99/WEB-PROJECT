 <%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet">
<style> #container{font-family: "jua", sans-serif;}</style>
<meta content="text/html" charset="utf-8">
<script type="text/javascript">
   $(document).ready(function() {
      $('.map').click(function(e) {
         e.preventDefault();
         var title = $(this).attr("title");
         window.location.href = encodeURI("detail.jsp?title=" + title);
      })
   });
</script>

<title>ALL ABOUT JEONJU</title>
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
</head>
<body>
   <div id="container" >
      <jsp:include page="UserPage/header.jsp" flush="false" />
      <div id="map" style="width:500px; float: left;">
         <h1 style="text-align: center; nanumgothiccoding ">관심있는 지역을 눌러보세요!</h1>

         <img src='images/map.jpg' align="left" 
            usemap="#Map" >
         <map name="Map">
            <area class="map" target="_self" title="효자동1가" data-id="1" href=""
               coords="378,425,440,440" shape="rect" />
            <area class="map" target="_self" title="효자동3가" data-id="2" href=""
               coords="293,329,360,375" shape="rect" />
            <area class="map" target="_self" title="효자동2가" data-id="3" href=""
               coords="312,417,363,456" shape="rect" />
            
         </map>

      </div>
      <div id="content" style="height:600px;float: right;">
         <h1 style="text-align: center">실시간 순위를 확인하세요!</h1>
         <div class="ranking">
            <jsp:include page="aajpost.jsp"/>
         </div>
      </div>
</body>
</html>