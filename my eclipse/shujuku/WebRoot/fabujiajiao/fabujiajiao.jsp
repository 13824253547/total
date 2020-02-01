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
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-inverse navbar-static-top" role="navigation">
				
					<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span>
					 <span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">导航栏</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="../MyJsp.jsp"><span class="glyphicon glyphicon-home"></span> 首页</a>
						</li>
						<li>
							 <a href="#">  <span class="glyphicon glyphicon-send"></span>  发布家教信息</a>
						</li>
						<li>
							 <a href="#"><span class="glyphicon glyphicon-send"></span>家教自荐</a>
						</li>
						<li>
							 <a href="#"> <span class="glyphicon glyphicon-earphone"></span>家教信息咨询</a>
						</li>
						<li>
							 <a href="#"> <span class="glyphicon glyphicon-earphone"></span>优质教师咨询</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> 个人中心<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">招聘记录</a>
								</li>
						 		<li>
									 <a href="#">应聘记录</a>
								</li>
								<li>
									 <a href="#">退出登录</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
			<div class="row clearfix">
				<div class="col-md-3 column">
					<div class="jumbotron">
						<h3>
							您好！
						</h3>
						<p>
							请在表格中填写你所要发布的家教信息。
						</p>
						<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> <br><br><br><br><br><br><br><br><br><br>
				</div>
				</div>
				<div class="col-md-9 column" >
					<form action="dofabu.jsp" method="POST"  class="jumbotron">
						<div class="form-group">
							 <label for="fabujigou">发布机构</label><input type="text" maxlength="30"
							  class="form-control" name="fabujigou" id="fabujigou" />
						</div>
						
						<div class="form-group">
							 <label for="nianji">年级</label><input type="text" maxlength="30"
							  class="form-control" name="nianji" id="nianji" />
						</div>
						
						<div class="form-group">
							 <label for="kemu">科目</label><input type="text" maxlength="30"
							  class="form-control" name="kemu" id="kemu" />
						</div>
						
							<div class="form-group">
							 <label for="student">学生情况</label><textarea class="form-control" 
							 maxlength="100"  name="student" id="student" rows="4" cols="90"></textarea>
						</div>
						
						<div class="form-group">
							 <label for="yaoqiu">应聘要求</label><textarea class="form-control"
							  maxlength="100" name="yaoqiu" id="yaoqiu" rows="4" cols="90"></textarea>
						</div>
						
						<div class="form-group">
							 <label for="money">薪资/小时</label><input type="text" maxlength="30"
							  class="form-control" name="money" id="money" />
						</div>
						
						<div class="form-group">
							 <label for="tele">联系方式</label><input type="text" maxlength="30"
							  class="form-control" name="tele" id="tele" />
						</div>
						
						<button type="submit" class="btn btn-default">发布</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
    <h1>添加一个时间的隐藏域，再写一个时间处理程序，返回几天前</h1>
  </body>
</html>
