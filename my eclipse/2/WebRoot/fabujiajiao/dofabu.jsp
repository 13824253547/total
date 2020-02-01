<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="jiajiaofabu.User"%>
<%@ page import="jiajiaofabu.UserDao"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>信息发布中</title>
</head>
<body>
	<jsp:useBean id="userxt" class="jiajiaofabu.User">
		<jsp:setProperty name="userxt" property="*" />
	</jsp:useBean>
	<%
		UserDao user = new UserDao();
		user.Insert(userxt);
		response.sendRedirect("../MyJsp.jsp");
	%>
</body>
</html>
