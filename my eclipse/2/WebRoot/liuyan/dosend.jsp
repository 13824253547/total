<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="send.User" %>  
<%@ page import="send.Userdao" %> 
<%request.setCharacterEncoding("utf-8"); %>
<html>
  <head> 
 <title>信息检验中</title>
  </head>
  <body>
  <jsp:useBean id="userxt" class="send.User" > 
 <jsp:setProperty name="userxt" property="*"/> 
 </jsp:useBean>
   <%
  	Userdao user=new Userdao();
    user.Insert(userxt);   
    int rs=user.getRs();
    if(rs>=1){out.print("发送成功");}
  %>
    <h3>3秒后跳转页面，若没有跳转请点击<a href="send.jsp">这里</a></h3>
	<% response.setHeader("refresh", "3;URL=send.jsp"); %>
  </body>
</html>

