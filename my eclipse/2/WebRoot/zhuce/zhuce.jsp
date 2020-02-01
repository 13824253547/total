<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
  	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 <script type="text/javascript"  charset="UTF-8" src="01.js"></script>
    <title>注册 </title>
  </head>
  <body>
  	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form action="dozhuce.jsp" name="from1"  method="POST">
				<div class="form-group">
		<label for="password">用户名：</label><input type="text" class="form-control" 
					 name="username" id="username" maxlength="30"/>
				</div>
				<div class="form-group">
					 <label for="password">密码：</label><input type="password" class="form-control" 
					 name="password" id="password" maxlength="30" />
				</div>
				<div class="form-group">
					 <label for="password2">重复密码：</label><input type="password" class="form-control" 
					 name="password2" id="password2" maxlength="30" />
				</div>
					<div class="form-group">
					 <label for="id">身份证号码：</label><input type="text" class="form-control" name="id" 
					 id="id" maxlength="30" />
				</div>
				<div class="form-group">
					 <label >手机号码：</label><input type="number" class="form-control"
					  id="tele" name="tele" maxlength="30" />
				</div>				
					<div class="checkbox">
					 					 <label><a href="../denglu/MyHtml.html"><input type="checkbox" />已仔细阅读并同意服务条款</a></label>
				</div> 
		            <button type="submit"  class="btn btn-default" onClick="validate()">注册</button>
			</form>
		</div>
	</div>
</div>
  </body>
</html>
