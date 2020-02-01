<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="xiugaimima.User" %>  
<%@ page import="xiugaimima.UserDao" %> 
<%request.setCharacterEncoding("utf-8"); %>
<html>
  <head>
    <title>My JSP 'do.jsp' starting page</title>
  </head>
  <body>
   <jsp:useBean id="userxt" class="xiugaimima.User" > 
 <jsp:setProperty name="userxt" property="*"/> 
 </jsp:useBean>
    <%
  	UserDao user=new UserDao();
    user.xiugai(userxt);
    int rs=user.getRs();
    if(rs>=1){out.print("修改成功");}
  %>
    <h3>3秒后跳转页面，若没有跳转请点击<a href="../MyJsp.jsp">这里</a></h3>
	<% response.setHeader("refresh", "3;URL=../MyJsp.jsp"); %>
  </body>
</html>
