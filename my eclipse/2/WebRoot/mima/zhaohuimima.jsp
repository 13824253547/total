<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>zhaohuimima.jsp</title>
</head>
<body>
 <div class="container">
	<div class="row clearfix">
		
		<div class="col-md-4 column">
		<form action="do.jsp" method="POST">
				<div class="form-group">
					 <label for="username">用户名</label><input type="text" class="form-control"
					  name="username" id="username" maxlength="30"/>
				</div>
					<div class="form-group">
					 <label for="id">身份证号码</label><input type="text" class="form-control"
					  name="id" id="id" maxlength="30"/>
				</div>
					<div class="form-group">
					 <label for="tele">电话号码</label><input type="text" class="form-control"
					  name="tele" id="tele" maxlength="30"/>
				</div>
				<button type="submit" class="btn btn-default">提交</button>
			</form>
			<a href="../MyJsp.jsp"><button class="btn btn-default">返回首页</button></a>
		</div>
		<div class="col-md-8 column">
		</div>
	</div>
</div>
</body>
</html>
