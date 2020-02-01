<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="zijian.User"%>
<%@ page import="zijian.UserDao"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<title>信息提交中</title>
</head>
<body>
	<jsp:useBean id="userxt" class="zijian.User">
		<jsp:setProperty name="userxt" property="*" />
	</jsp:useBean>
	<%
		UserDao user = new UserDao();
		user.Insert(userxt);
		response.sendRedirect("../jiaoshizixun/jiaoshizixun.jsp");
	%>
</body>
</html>
