<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
 <body>
 <div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column">
			
		</div>
		<br><br><br><br><br><br><br>
		<div class="col-md-4 column">
			<form action="doLogin.jsp" method="POST">
				<div class="form-group">
					 <label for="username">用户名</label><input type="text" class="form-control"
					  name="username" id="username" maxlength="30"/>
				</div>
				<div class="form-group">
					 <label for="password">密码</label><input type="password" class="form-control"
					  name="password" id="password" maxlength="30"/>
				</div>
					<div class="checkbox">
					 <label><input type="checkbox" />已仔细阅读并同意服务条款</label>
				</div> <button type="submit" class="btn btn-default">提交</button>
				<a href="login_failure.jsp"> <button type="button" name="zhuce" class="btn btn-default" >注册</button></a>	
			</form>
		</div>
	</div>
</div>
 </body>
</html>
