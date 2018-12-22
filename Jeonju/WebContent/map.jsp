<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport"
   content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script
   SRC="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=b3c72128-d505-4bef-92da-e3f8299245cb"></script>

<title>Insert title here</title>
</head>
<body>
<%String a=request.getParameter("data");
String b=request.getParameter("b");%>
   <button onClick="hospitalMarker()">占쏙옙占쏙옙</button>
<button onClick="cafeMarker()">카占쏙옙</button>
<button onClick="martMarker()">占쏙옙트</button>                           
<script>
   var map,marker,markerLayer;
   
   // 占쏙옙占쏙옙占쏙옙 占십깍옙화 占쌌니댐옙.
   function initTmap(){
      map = new Tmap.Map({div:"map", width:'500px', height:'500px'});//map 占쏙옙占쏙옙
      map.setCenter(new Tmap.LonLat("a", "35.806501").transform(
            "EPSG:4326", "EPSG:3857"));
      markerLayer = new Tmap.Layer.Markers();//占쏙옙커 占쏙옙占싱억옙 占쏙옙占쏙옙
      map.addLayer(markerLayer);//map占쏙옙 占쏙옙커 占쏙옙占싱억옙 占쌩곤옙
   }

   // 占쏙옙 占쏙옙커占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 표占쏙옙占쌌니댐옙.
   function hospitalMarker(){
      markerLayer.clearMarkers(); // 占쏙옙占쏙옙 占쏙옙커 占쏙옙占� 占쏙옙占쏙옙
      var size = new Tmap.Size(24, 38); //占쏙옙占쏙옙占쏙옙 크占쏙옙
      var offset = new Tmap.Pixel(-(size.w / 2), -(size.h)); //占쏙옙占쏙옙占쏙옙 占쌩쏙옙占쏙옙
      // 占쏙옙커占쏙옙 占쏙옙치 占썼열
      var positions = [
         {
            title: '占쏙옙占쏙옙占싫곤옙', 
            lonlat: new Tmap.LonLat(127.117182, 35.806613).transform("EPSG:4326", "EPSG:3857") //占쏙옙표占쏙옙占쏙옙
         },
         {
            title: '효占쏙옙 占싱븝옙占쏙옙占식곤옙', 
            lonlat: new Tmap.LonLat(127.122079, 35.806094, ).transform("EPSG:4326", "EPSG:3857")
         },
      ];
                 
      for (var i = 0; i < positions.length; i++){//for占쏙옙占쏙옙 占쏙옙占싹울옙 占썼열 占싫울옙 占쌍댐옙 占쏙옙占쏙옙 占쏙옙커 占쏙옙占쏙옙
         var icon = new Tmap.Icon('http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_a.png',size, offset);//占쏙옙커 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
         var lonlat = positions[i].lonlat;//占쏙옙표
         marker = new Tmap.Marker(lonlat, icon);//占쏙옙커 占쏙옙占쏙옙
         markerLayer.addMarker(marker); //占쏙옙占싱어에 占쏙옙커 占쌩곤옙
      }
   }
   
   // 占쏙옙 占쏙옙커占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 표占쏙옙占쌌니댐옙.
   function cafeMarker(){
      markerLayer.clearMarkers(); // 占쏙옙占쏙옙 占쏙옙커 占쏙옙占� 占쏙옙占쏙옙
      var size = new Tmap.Size(24, 38); // 占쏙옙커 占쏙옙占쏙옙占쏙옙 크占쏙옙占쏙옙占쏙옙
      var offset = new Tmap.Pixel(-(size.w / 2), -(size.h)); // 占쏙옙커占쏙옙 占쌩쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
      // 占쏙옙커占쏙옙 占쏙옙치 占썼열
      var positions = [
         {
            title: '占쏙옙占쏙옙占쏙옙占쌉깍옙占쏙옙', 
            lonlat: new Tmap.LonLat(126.982597, 37.566065).transform("EPSG:4326", "EPSG:3857")
         },
         {
            title: '占쏙옙占쏙옙占쏙옙', 
            lonlat: new Tmap.LonLat(126.982983, 37.570181).transform("EPSG:4326", "EPSG:3857")
         },
         {
            title: '占쏙옙청占쏙옙', 
            lonlat: new Tmap.LonLat(126.976975, 37.564569).transform("EPSG:4326", "EPSG:3857")
         },
         {
            title: '占쏙옙화占쏙옙占쏙옙', 
            lonlat: new Tmap.LonLat(126.976889, 37.571644).transform("EPSG:4326", "EPSG:3857")
         }
      ];
                 
      for (var i = 0; i < positions.length; i++){
         var icon = new Tmap.Icon('http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_s.png',size, offset); // 占쏙옙커占쏙옙 占쏙옙占쏙옙占쏙옙
         var lonlat = positions[i].lonlat; // 占쏙옙커占쏙옙 占쏙옙치
         marker = new Tmap.Marker(lonlat, icon); // 占쏙옙커 占쏙옙占쏙옙
         markerLayer.addMarker(marker); // 占쏙옙커 占쏙옙占싱어에 占쏙옙커 占쌩곤옙
      }
   }
   
   // 호占쏙옙 占쏙옙커占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 표占쏙옙占쌌니댐옙.
   function martMarker(){
      markerLayer.clearMarkers(); // 占쏙옙占쏙옙 占쏙옙커 占쏙옙占� 占쏙옙占쏙옙
      var size = new Tmap.Size(24, 38); // 占쏙옙커 占쏙옙占쏙옙占쏙옙
      var offset = new Tmap.Pixel(-(size.w / 2), -(size.h)); // 占쏙옙커占쏙옙 占쌩쏙옙占쏙옙 占쏙옙占쏙옙
      // 占쏙옙커占쏙옙 占쏙옙치 占썼열
      var positions = [
         { 
            title: '占싸억옙호占쏙옙', 
            lonlat: new Tmap.LonLat(126.985515, 37.56433).transform("EPSG:4326", "EPSG:3857")
         },
         {
            title: '占썹보占쏙옙호占쏙옙', 
            lonlat: new Tmap.LonLat(126.984185, 37.561881).transform("EPSG:4326", "EPSG:3857")
         },
         {
            title: '占쌉듸옙호占쏙옙', 
            lonlat: new Tmap.LonLat(126.980837, 37.565385).transform("EPSG:4326", "EPSG:3857")
         }
      ];
                 
      for (var i = 0; i < positions.length; i++){
         var icon = new Tmap.Icon('http://tmapapis.sktelecom.com/upload/tmap/marker/pin_g_m_h.png',size, offset); // 占쏙옙커占쏙옙 占쏙옙占쏙옙占쏙옙
         var lonlat = positions[i].lonlat; // 占쏙옙커占쏙옙 占쏙옙치
         marker = new Tmap.Marker(lonlat, icon); // 占쏙옙커 占쏙옙占쏙옙
         markerLayer.addMarker(marker); // 占쏙옙커 占쏙옙占싱어에 占쏙옙커 占쌩곤옙
      }
   } 
   
   // TMap 占십깍옙화
   initTmap();
</script>
   <div id="map"></div>
</body>
</html>