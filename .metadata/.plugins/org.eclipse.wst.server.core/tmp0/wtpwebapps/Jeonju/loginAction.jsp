<!-- 로그인 처리 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
    
    <!-- 현재 페이지에서만 빈즈 사용 -->
    <jsp:useBean id="user" class="user.User" scope="page"/>
    <jsp:setProperty name="user" property="userEmail"/>
    <jsp:setProperty name="user" property="userPassword"/> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= utf-8">
<title>로그인 처리</title>
</head>
<body>
<%
String userEmail=null;
if(session.getAttribute("userEmail")!=null){
	userEmail=(String)session.getAttribute("userEmail");
}
if(userEmail!=null){
	PrintWriter script=response.getWriter();
	script.println("<script>");
	script.println("alert('이미 로그인이 되어있습니다.')");
	script.println("location.href='MainPage.jsp'");
	script.println("</script>");
}
	UserDAO userDAO = new UserDAO();
	
	int result=userDAO.login(user.getUserEmail(), user.getUserPassword());
	
	if(result==1){ //로그인 성공
		session.setAttribute("userEmail", user.getUserEmail());
		String userE=(String)session.getAttribute("userEmail");
		session.setAttribute("userName",userDAO.findName(userE));
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("location.href='MainPage.jsp'");
		script.println("</script>");
	}
	else if(result==0){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result==-1){ //이메일이 없음
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('이메일이 존재하지 않습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result==-2){//DB오류
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('데이터 베이스 오류가 발생했습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
%>
</body>
</html>