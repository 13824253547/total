<%@ page language="java"  pageEncoding="UTF-8"%>
<title>修改记录的条件提交页面</title>
</head>
<body>
请选择修改记录所满足的条件<hr width="100%" size="3">
<form action="delect02.jsp" method="post">
<br>
姓名<input type="text" name="name"><br><br>
	<div><tr>
				<td>请选择你的性别：</td>
				<td><input type="radio" name="sex" value="男" checked>男</td>
				<td><input type="radio" name="sex" value="女" >女</td></tr>
				</div>
				体重范围：<p>
				最小<input type="text" name="w1"><br>	<br>
				最大<input type="text" name="w2"><p>
					<br>	<br>	<br>
				<tr><td>
				<input type="submit" value="查询">
					<input type="reset" value="取消">
				</td></tr>
</form>
</body>
</html>