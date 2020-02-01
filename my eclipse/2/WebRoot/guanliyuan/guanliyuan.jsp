<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-4 column">
			<br><br><br><br>
				<form action="doguanli.jsp" method="POST">
					<div class="form-group">
						<label for="username">用户名</label><input type="text"
							class="form-control" name="username" id="username" maxlength="30" />
					</div>
					<div class="form-group">
						<label for="password">密码</label><input type="password"
							class="form-control" name="pwd" id="pwd" maxlength="30" /><br>
					</div>
					<button type="submit" class="btn btn-default">管理员登录</button>
				</form>
			</div>
		</div>
		<div class="col-md-8 column"></div>
	</div>
</body>
</html>
