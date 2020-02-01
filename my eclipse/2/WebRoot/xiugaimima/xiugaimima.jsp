<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="UTF-8" src="01.js"></script>
</head>
<body>
	<%
		String user = (String) session.getAttribute("name");
		if (user != null) {
	%>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-4 column">
				<form name="from1" action="do.jsp" method="POST">
				<br><br><br><br>
					<div class="form-group">
						<label for="password">原密码</label><input type="password"
							class="form-control" name="password1" id="password1"
							maxlength="30" />
					</div>
					<div class="form-group">
						<label for="password">新密码</label><input type="password"
							class="form-control" name="password2" id="password2"
							maxlength="30" />
					</div>
					<div class="form-group">
						<label for="password">重复密码</label><input type="password"
							class="form-control" name="password3" id="password3"
							maxlength="30" />
					</div>
					<input type="hidden" name="user" value=<%=user%> />
					<button type="submit" class="btn btn-default" onClick="validate()">提交</button>
				</form>
			</div>
			<div class="col-md-8 column"></div>
		</div>
	</div>
	<%
		} else {
			out.println("<h3 align=\"center\" ><a href=\"../denglu/index.jsp\">去登录</a></h3>");
		}
	%>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-4 column">
				<a href="../MyJsp.jsp"><button class="btn btn-default">返回首页</button></a>
			</div>
		</div>
		<div class="col-md-8 column"></div>
	</div>
</body>
</html>
