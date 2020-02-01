<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="zhuce.User" %>   <!--调用User类  -->
<%@ page import="zhuce.UserDao" %> <!--调用Dao类  -->
<%request.setCharacterEncoding("utf-8"); %>  <!-- 修改字符集 -->
<html>
  <head> 
 <title>信息检验中</title>
  </head>
  <script type="text/javascript" charset="UTF-8" src="01.js"></script>
  <body>
  <jsp:useBean id="userxt" class="zhuce.User" > <!--class=包名.类名  -->
 <jsp:setProperty name="userxt" property="*"/>  <!-- 设置javaBean属性  *代表自动匹配数据库-->
 </jsp:useBean>
  <h1>出现邮箱插入为空</h1>
   <%
  	UserDao user=new UserDao();//实例化
    user.Insert(userxt);   //调用Insert方法，实现增加数据
  %>
  <a href="../denglu/index.jsp">返回登录页面</a>
  </body>
</html>



