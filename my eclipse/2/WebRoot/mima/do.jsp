<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="nuc.test.coon.UserCoon"%>
<%@ page import="mima.User"%>
<%@ page import="mima.UserDa"%>

<html>
  <head>
  </head>
  <jsp:useBean id="userxt" class="mima.User">
		<jsp:setProperty name="userxt" property="*" />
	</jsp:useBean>
  <body>
  <%
		UserDa user = new UserDa();
		%>
		<h4>找回的密码为：<%=user.getpassword(userxt)%></h4>
		 <h3>3秒后跳转页面，若没有跳转请点击<a href="../denglu/index.jsp">这里</a></h3>
	<% response.setHeader("refresh", "3;URL=../denglu/index.jsp"); %>
  </body>
  </html>
