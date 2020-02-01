<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="send.User2" %>  
<%@ page import="send.Userdao2" %> 
<%request.setCharacterEncoding("utf-8"); %>
<html>
  <head> 
 <title>信息检验中</title>
  </head>
  <body>
  <jsp:useBean id="userxt" class="send.User2" > 
 <jsp:setProperty name="userxt" property="*"/> 
 </jsp:useBean>
   <%
   String send=request.getParameter("accept");
  	Userdao2 user=new Userdao2();
    user.Insert(userxt);
    int rs=user.getRs();
    if(rs>=1){out.print("发送成功");}
  %>
    <h3>3秒后跳转页面，若没有跳转请点击<a href="accept.jsp">这里</a></h3>
	<% response.setHeader("refresh", "1;URL=accept.jsp"); %>
  </body>
</html>

