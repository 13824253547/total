<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '01.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
   <%
   String driverName="com.mysql.jdbc.Driver";
   String user="root";
   String userPwd="huang15217839291";
   String dbName="students";
   String url1="jdbc:mysql://localhost:3306/test";
   String url2="?user=root&password=huang15217839291";
   String url3="&useUnicode=true&characterEncoding=UTF-8";
   String url=url1+url2+url3;
   Class.forName(driverName);
   Connection conn=DriverManager.getConnection(url);
    %>
    
  </body>
</html>
