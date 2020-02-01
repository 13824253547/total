<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head> 
    <title>My JSP 'login.jsp' starting page</title>
  </head>
  <body>
    <form action="dolign.jsp" method="post">
用户名：<input type="text" name="username" value=""><br>
密 码：<input type="password" name="password" value=""><br>
用户类型：
<select name="type">
<option value="管理员">管理员</option>
<option value="普通用户">普通用户</option>
</select><br>
<input type="submit" value="注册">
<input type="reset" value="取消">
</form>
  </body>
</html>
