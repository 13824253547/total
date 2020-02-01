<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="shujuku.User2"%>
<%@ page import="shujuku.UserDao2"%>
<jsp:useBean id="loginUser" class="shujuku.User2" scope="page"></jsp:useBean>
<jsp:useBean id="userDao" class="shujuku.UserDao2"></jsp:useBean>
<jsp:setProperty property="*" name="loginUser" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息检验中</title>
</head>
<body>
	<%  int a=123;
		String b = new String(request.getParameter("username"));
		String name=a+b;
		if (userDao.userLogin(loginUser)) {
			session.setAttribute("user", name);
			response.sendRedirect("user.jsp");
		} else {
			//登录失败，跳转到显示错误信息界面
			response.sendRedirect("login_failure.jsp");
		}
	%>
</body>
</html>