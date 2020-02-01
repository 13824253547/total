<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="shujuku.*"%>
<jsp:useBean id="loginUser" class="shujuku.Users" scope="page"></jsp:useBean>
<jsp:useBean id="userDao" class="shujuku.UserDao"></jsp:useBean>
<jsp:setProperty property="*" name="loginUser" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息检验中</title>
</head>
<body>
	<%
		String a = new String(request.getParameter("username"));
        int b=123;
        String name=a+b;
		if (userDao.userLogin(loginUser)) {
			session.setAttribute("name", name);
			response.sendRedirect("../MyJsp.jsp");
		} else {
			//登录失败，跳转到显示错误信息界面
			response.sendRedirect("login_failure.jsp");
		}
	%>
</body>
</html>