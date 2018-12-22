<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="user.UserDAO" %>
    
    <%request.setCharacterEncoding("UTF-8");%>
    
    <!-- 현재 페이지에서만 빈즈 사용 -->
    <jsp:useBean id="user" class="user.User" scope="page"/>
    <jsp:setProperty name="user" property="userName"/>
    <jsp:setProperty name="user" property="userEmail"/> 
    <jsp:setProperty name="user" property="userPassword"/>
    <jsp:setProperty name="user" property="userAddress"/> 
    <jsp:setProperty name="user" property="userAge"/>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(user.getUserAge()==null || user.getUserPassword()==null||user.getUserName()==null
||user.getUserEmail()==null||user.getUserName()==null){
   PrintWriter script=response.getWriter();
   script.println("<script>");
   script.println("alert('입력이 안 된 사항이 있습니다.')");
   script.println("history.back()");
   script.println("</script>");
}else{
   response.setCharacterEncoding("utf-8");
   UserDAO userDAO = new UserDAO();
   int result=userDAO.join(user);
   if(result==-1){
      PrintWriter script=response.getWriter();
      script.println("alert('이미 존재하는 이메일입니다.')");
      script.println("history.back()");
      script.println("</script>");
   }
   else{ //회원가입이 된 경우
      session.setAttribute("userEmail", user.getUserEmail());
   	  String userName=userDAO.findName(user.getUserEmail());
   	  session.setAttribute("userName",userName);
      PrintWriter script=response.getWriter();
      script.println("<script>");
      script.println("location.href='MainPage.jsp'");
      script.println("</script>");
   }
}
   
%>
</body>
</html>