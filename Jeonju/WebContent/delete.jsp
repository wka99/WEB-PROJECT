<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="user.UserDAO" %>
<%request.setCharacterEncoding("UTF-8");%>
    
    <!-- ���� ������������ ���� ��� -->
    <jsp:useBean id="user" class="user.User" scope="page"/>
    <jsp:setProperty name="user" property="*"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ��Ż��</title>
</head>
<body>

<%
UserDAO userDAO = new UserDAO();
String userEmail=request.getParameter("userEmail");
String userPassword1=request.getParameter("userPassword1");
int check=userDAO.DoubleCheck(userEmail, userPassword1);

	if(check==0)
	{
%>
<script>alert('��й�ȣ Ȥ�� �̸����� �߸��Է��ϼ̽��ϴ�');

	history.back();</script>
<%
}

else{
//�׽�Ʈ
userDAO.out(userEmail, userPassword1);

%>
<script>
alert('���� Ż��Ǿ����ϴ�.');
location.href='logoutAction.jsp';
</script>
<%} %>
</body>
</html>