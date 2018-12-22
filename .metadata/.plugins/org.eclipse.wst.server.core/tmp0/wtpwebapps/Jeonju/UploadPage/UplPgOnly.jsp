<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html" charset="utf-8">
<title>전주 mypage</title>
<link rel="stylesheet" type="text/css" href="css/uploadPage.css">
</head>
<body>
<form action="UploadPage/upload.jsp" method="post">
    <img id="새로운 글쓰기" src="images/writing.png" width="40px" height="40px">&nbsp&nbsp새로운 글쓰기</img>
        <div class="ALL_wrap">
                <div class="upload_wrap">
                    <div id="photo-zone">
                        <img id="box" src="images/X-box.png">
                        <input type="hidden" id="box1" name="box_all" value="" src="" display="none">
                        <input type="hidden" id="box2" name="box_all" value="" src="" display="none">
                        <input type="hidden" id="box3" name="box_all" value="" src="" display="none">
                        <input type="hidden" id="box4" name="box_all" value="" src="" display="none">
                        <input type="hidden" id="box5" name="box_all" value="" src="" display="none">
                    </div>
                    <div id="select-zone1">
                        <img id="small_1" src="" display="none" onclick=select_small(1)>
                        <img id="small_2" src="" display="none" onclick=select_small(2)>
                        <img id="small_3" src="" display="none" onclick=select_small(3)>
                        <img id="small_4" src="" display="none" onclick=select_small(4)>
                        <img id="small_5" src="" display="none" onclick=select_small(5)>
                    </div>
                    <div id="select-zone">
                        <table>
                            <tbody>
                                <tr>
                                    <td>지역:</td>
                                    <td>
                                        <select name="location">
                                            <option>효자동1가</option>
                                            <option>효자동2가</option>
                                            <option>효자동3가</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>분야:</td>
                                    <td>
                                        <select name="living">
                                            <option>카페</option>
                                            <option>병원</option>
                                            <option>관광지</option>
                                            <option>미용실</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="canvas_wrap" >
                    <div id=canvas_head_wrap>
                        <label for="Uploading"><img src="images/picture.png"></label>
                        <input type="file" id="Uploading">
                    </div>
                    <div id="title_wrapper">
                        <input name="title" type="text" placeholder="제목을 입력하세요.">
                    </div><hr>
                    <div id="content_wrapper">
                        <textArea name="content" placeholder="내용을 입력하세요."></textArea> 
                    </div>
                </div>
                <div class="bottom_wrap">
                    <button id="submittt">업로드!</button>
                </div>
        </div>
        </form>
</body>
</html>