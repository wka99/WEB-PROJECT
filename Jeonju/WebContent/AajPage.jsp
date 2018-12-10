<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="utf-8">
<script type="text/javascript">
$(document).ready(function(){
   $('.map').click(function(){
      var name=$(this).attr('title');
      alert(name);
      //location.replace("detail.jsp");
      //window.location.href = 'https://www.naver.com';
      window.location.href = 'http://www.google.com';
      //window.location.href="detail.jsp";
   })
});

   function myfunction() {
   window.location.href="detail.jsp";
   }
</script>
<title>ALL ABOUT JEONJU</title>
<link rel="stylesheet" type="text/css" href="css/NewFile.css">
</head>
<body>
<div id="container">
	<jsp:include page="UserPage/header.jsp" flush="false"/>	
      <div id="map" style="width: 600px; float: left;">
         <h1 style="text-align: center">관심있는 지역을 눌러보세요!</h1>

         <img src='images/map.jpg' align="left" border="0" alt=""
            usemap="#Map">
         <map name="Map">
            <area class="map" target="_self" title="효자동1가" data-id="1" href=""
               onclick="myfunction();" coords="378,425,440,440" shape="rect" />
            <area class="map" target="_self" title="효자동3가" data-id="2" href=""
                coords="293,329,360,375" shape="rect" />
            <area class="map" target="_self" title="효자동2가" data-id="3" href=""
               onclick="alert('test');" coords="312,417,363,456" shape="rect" />
            <area class="map" target="_self" title="삼천동3가" data-id="4" href=""
               onclick="alert('test');"
               coords="245,441,277,444,304,475,305,511,274,501,251,471"
               shape="poly" />
         </map>

      </div>
      <div id="content" style="background-color: white; float: center;">
         <h1 style="text-align: center">실시간 순위를 확인하세요!</h1>
      </div>
</body>
</html>