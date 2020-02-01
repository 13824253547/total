<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
 <body>
 <div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column">
			<img  src="images/huida.png" class="img-rounded" style="width: 947px; "/>
		</div>
		<br><br><br><br><br><br><br>
		<div class="col-md-4 column">
			<form role="form" action="jianyan.jsp" method="post">
				<div class="form-group">
					 <label for="User">用户名</label><input type="text" class="form-control" name="User" id="User" />
				</div>
				<div class="form-group">
					 <label for="Password">密码</label><input type="password" class="form-control" name="Password" id="Password" />
				</div>
					<div class="checkbox">
					 <label><input type="checkbox" />已仔细阅读并同意服务条款</label>
				</div> <button type="submit" class="btn btn-default">提交</button>
			</form>
		</div>
	</div>
</div>
 </body>
</html>
