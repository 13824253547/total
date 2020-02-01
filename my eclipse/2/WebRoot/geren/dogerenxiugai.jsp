<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="zijian.User"%>
<%@ page import="zijian.XiuGai" %>
<jsp:useBean id="userxt" class="zijian.User">
		<jsp:setProperty name="userxt" property="*" />
	</jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");
	    XiuGai xiuga = new XiuGai();
		xiuga.getsql_update(userxt);
		response.sendRedirect("geren.jsp");
%>
<html>
  <head>
    <title>My JSP 'dogerenxiugai.jsp' starting page</title>
  </head>
  <body>
  </body>
</html>
