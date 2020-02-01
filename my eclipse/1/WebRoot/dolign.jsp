<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>My JSP 'dolign.jsp' starting page</title>
  </head>
  <body>
    <%@page import="java.sql.*" %>  <!-- 调用java 包 -->
    <%@ page import="nuc.test.user.User" %>   <!--调用User类  -->
    <%@ page import="nuc.test.Dao.UserDao" %> <!--调用Dao类  -->
 <%request.setCharacterEncoding("utf-8"); %>  <!-- 修改字符集 -->
 <jsp:useBean id="userxt" class="nuc.test.user.User" > <!--class=包名.类名  -->
 <jsp:setProperty name="userxt" property="*"/>  <!-- 设置javaBean属性  *代表自动匹配数据库-->
 </jsp:useBean>
 <%
  	UserDao user=new UserDao();//实例化
       user.Insert(userxt);   //调用Insert方法，实现增加数据
  %>
  </body>
</html>
