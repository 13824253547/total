
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改记录的条件提交页面</title>
</head>
<body>
请选择修改记录所满足的条件<hr width="100%" size="3">
<form action="xiugai02.jsp" method="post">
<br>
姓名<input type="text" name="name"><br><br>
	<div><tr>
				<td>请选择你的性别：</td>
				<td><input type="radio" name="sex" value="男" checked>男</td>
				<td><input type="radio" name="sex" value="女" >女</td></tr>
				</div>
				<br>	<br>	<br>	<br>	<br>
				<tr><td>
				<input type="submit" value="查询">
					<input type="reset" value="取消">
				</td></tr>
</form>
</body>
</html>