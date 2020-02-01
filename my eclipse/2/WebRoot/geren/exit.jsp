<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'exit.jsp' starting page</title>
</head>
  
  <body>
  <%   
  session.removeAttribute("name");
   %>
    <h3>3秒后跳转页面，若没有跳转请点击<a href="../denglu/index.jsp">这里</a></h3>
	<% response.setHeader("refresh", "3;URL=../denglu/index.jsp"); %>
  </body>
</html>
