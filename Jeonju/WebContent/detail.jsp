<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<style>
.myButton {
   -moz-box-shadow: inset 0px 1px 0px 0px #e8b7b2;
   -webkit-box-shadow: inset 0px 1px 0px 0px #e8b7b2;
   box-shadow: inset 0px 1px 0px 0px #e8b7b2;
   background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f0c3c0
      ), color-stop(1, #f07b73));
   background: -moz-linear-gradient(top, #f0c3c0 5%, #f07b73 100%);
   background: -webkit-linear-gradient(top, #f0c3c0 5%, #f07b73 100%);
   background: -o-linear-gradient(top, #f0c3c0 5%, #f07b73 100%);
   background: -ms-linear-gradient(top, #f0c3c0 5%, #f07b73 100%);
   background: linear-gradient(to bottom, #f0c3c0 5%, #f07b73 100%);
   filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f0c3c0',
      endColorstr='#f07b73', GradientType=0);
   background-color: #f0c3c0;
   -moz-border-radius: 6px;
   -webkit-border-radius: 6px;
   border-radius: 6px;
   border: 1px solid #ed8980;
   display: inline-block;
   cursor: pointer;
   color: #ffffff;
   font-family: Arial;
   font-size: 15px;
   font-weight: bold;
   padding: 6px 24px;
   text-decoration: none;
   text-shadow: 0px 1px 0px #b23e35;
}

.myButton:hover {
   background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f07b73
      ), color-stop(1, #f0c3c0));
   background: -moz-linear-gradient(top, #f07b73 5%, #f0c3c0 100%);
   background: -webkit-linear-gradient(top, #f07b73 5%, #f0c3c0 100%);
   background: -o-linear-gradient(top, #f07b73 5%, #f0c3c0 100%);
   background: -ms-linear-gradient(top, #f07b73 5%, #f0c3c0 100%);
   background: linear-gradient(to bottom, #f07b73 5%, #f0c3c0 100%);
   filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f07b73',
      endColorstr='#f0c3c0', GradientType=0);
   background-color: #f07b73;
}

.myButton:active {
   position: relative;
   top: 1px;
}
</style>
<title>detail</title>
</head>
<body><link rel="stylesheet" type="text/css" href="css/NewFile.css">
</head>
<%   String title = request.getParameter("title"); %>

<script
   src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=b3c72128-d505-4bef-92da-e3f8299245cb"></script>
<script>

   title="<%=title%>";
   var gdo,wido; var n;
   if(title=="효자동1가"){gdo="127.118421"; wido="35.806518";n=1;}
   else if(title=="효자동2가"){gdo="127.101939"; wido="35.812029";n=2;}
   else if(title=="효자동3가"){gdo="127.098409"; wido="35.811976";n=3;}
   else{history.back(0);} 
   var map,marker,markerLayer;
   var a="EPSG:4326";var b="EPSG:3857";
   
   // 지도를 초기화 합니다.
   function initTmap(){
      map = new Tmap.Map({div:'map', width:'650px', height:'600px'});//map 생성
      var lonlat = new Tmap.LonLat(gdo, wido).transform(a, b);
      map.setCenter(lonlat,16); //지도의 중심좌표 설정
      markerLayer = new Tmap.Layer.Markers();//마커 레이어 생성
      map.addLayer(markerLayer);//map에 마커 레이어 추가
   }
   
   function basic(positions){
      markerLayer.clearMarkers(); // 기존 마커 모두 삭제
      var size = new Tmap.Size(18, 25); //아이콘 크기24 38
      var offset = new Tmap.Pixel(-(size.w / 2), -(size.h)); //아이콘 중심점
      for (var i = 0; i < positions.length; i++){//for문을 통하여 배열 안에 있는 값을 마커 생성
         var icon = new Tmap.Icon('http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_p.png',size, offset);//마커 아이콘 설정
         var lonlat = positions[i].lonlat;//좌표
         var label=new Tmap.Label(positions[i].title);
         marker = new Tmap.Markers(lonlat, icon,label);//마커 생성
         markerLayer.addMarker(marker); //레이어에 마커 추가
         marker.popup.show();
      }
   }
 
   function martMarker(){
      if(n==1){ var positions = [{title: '서원마트', lonlat: new Tmap.LonLat(127.119686,35.808662).transform(a, b)},{title: '화신마트', lonlat: new Tmap.LonLat(127.120803 , 35.810279).transform(a, b)},{title: '전주마트', lonlat: new Tmap.LonLat(127.116130 , 35.806390).transform(a, b)},{title: '홈플러스', lonlat: new Tmap.LonLat(127.114097 , 35.807030).transform(a, b)}, {title: '다마트', lonlat: new Tmap.LonLat(127.114249 , 35.805455).transform(a, b)}];}
      else if(n==2){var positions = [{title: '휴먼시아', lonlat: new Tmap.LonLat(127.104190 ,35.810727).transform(a, b)},{title: '주공우림마트', lonlat: new Tmap.LonLat(127.101336  , 35.808551).transform(a, b)},{title: '강남마트', lonlat: new Tmap.LonLat(127.104061  , 35.812014).transform(a, b)},{title: '효자로마트', lonlat: new Tmap.LonLat(127.107194  , 35.811579).transform(a, b)},  {title: '하이마트', lonlat: new Tmap.LonLat(127.105586  , 35.815840).transform(a, b)},{title: 'gs슈퍼', lonlat: new Tmap.LonLat(127.097104  , 35.810455).transform(a, b)}];}   
      else{var positions = [{title: '훼미리마트', lonlat: new Tmap.LonLat(127.097358,35.812272 ).transform(a, b)},{title: '농부마트', lonlat: new Tmap.LonLat(127.096714  , 35.812534).transform(a, b)}];} 
         basic(positions);
   }
   function cafeMarker(){
      if(n==1){var positions = [ {title: '이디야', lonlat: new Tmap.LonLat(127.115040,35.806372).transform(a, b)},{title: 'pat', lonlat: new Tmap.LonLat(127.118944,35.807076).transform(a, b)},{title: '엔제리너스', lonlat: new Tmap.LonLat(127.114070, 35.807035 ).transform(a, b)},{title: '펠리치따', lonlat: new Tmap.LonLat(127.113839,35.805443).transform(a, b)},{title: '루시다레', lonlat: new Tmap.LonLat(127.123710,35.805599 ).transform(a, b)} ]; }
      else if(n==2){var positions = [{title: '이디야 ', lonlat: new Tmap.LonLat(127.103071 ,35.809221).transform(a, b)},  {title: 'kave', lonlat: new Tmap.LonLat(127.100368 , 35.812980 ).transform(a, b)},{title: '탐앤탐스', lonlat: new Tmap.LonLat(127.102128 , 35.813885).transform(a, b)}, {title: '스타벅스', lonlat: new Tmap.LonLat(127.106506 ,35.815695).transform(a, b)} ]; }
      else{var positions = [{title: '화양연화', lonlat: new Tmap.LonLat(127.097744 ,35.813055).transform(a, b)},{title: '가르송', lonlat: new Tmap.LonLat(127.097272  , 35.814395).transform(a, b)}];} 
      basic(positions);
   }
   
   function hospitalMarker(){
      if(n==1){var positions = [{title: '밝은안과', lonlat: new Tmap.LonLat(127.117165 , 35.806521).transform(a, b)},{title: '신기독 병원', lonlat: new Tmap.LonLat(127.115406 , 35.809097).transform(a, b)},{title: '세인신경외과', lonlat: new Tmap.LonLat(127.113603 , 35.805773).transform(a, b)},{title: '효자이비인후과', lonlat: new Tmap.LonLat(127.121908 , 35.805929).transform(a, b)}];}
      else if(n==2){var positions = [{title: '진평양약국', lonlat: new Tmap.LonLat(127.101671 , 35.813665).transform(a, b)}];}
      else{var positions = [{title: '삼성안과', lonlat: new Tmap.LonLat(127.101113 ,35.814499).transform(a, b)}];} 
      basic(positions);
   } 

</script>
<body onload="initTmap()">
   <div id="container">
      <jsp:include page="UserPage/header.jsp" flush="false" /><br>
      <div class="mapcontainer"
         style="width: 600px; hieght: 600px; float: left;">
         <table>
            <tr>
               <td><h1><%=title%></h1></td>
               <td>&nbsp</td>
               <td>즐겨찾는 지역 추가
                  <button>
                     <img class="myregion" id="my" src="images/heart.png" width="25px" height="25px">
                  </button>
               </td>
            </tr>
         </table>
         <button class="myButton" onClick="martMarker()" id="마트">마트</button>
         <button class="myButton" onClick="cafeMarker()" id="카페">카페</button>
         <button class="myButton" onClick="hospitalMarker()" id="병원">병원</button>
         <br> <br>
         
         <div id="map"></div>
      </div>
      <div class="post" style="float: right;"><%@include
            file="board_list.jsp"%></div>
   </div>
</body>
</html>