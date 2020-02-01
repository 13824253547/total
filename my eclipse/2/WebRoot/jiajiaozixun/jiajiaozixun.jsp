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
			<div class="col-md-12 column">
				<nav class="navbar navbar-default navbar-inverse navbar-static-top"
					role="navigation">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span> <span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">导航栏</a>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="../MyJsp.jsp"><span
									class="glyphicon glyphicon-home"></span> 首页</a></li>
							<li><a href="../fabujiajiao/fabujiajiao.jsp"> <span
									class="glyphicon glyphicon-send"></span> 发布家教信息
							</a></li>
							<li><a href="../zijian/zijian.jsp"><span
									class="glyphicon glyphicon-send"></span>家教自荐 </a></li>
							<li><a href="#"> <span
									class="glyphicon glyphicon-earphone"></span>家教信息咨询
							</a></li>
							<li><a href="../jiaoshizixun/jiaoshizixun.jsp"> <span
									class="glyphicon glyphicon-earphone"></span>优质教师咨询
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <span
									class="glyphicon glyphicon-user"></span> 个人中心<strong
									class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="../zhaoping/zpjl.jsp">招聘记录</a></li>
									<li><a href="../geren/geren.jsp">个人简历</a></li>
									<li><a href="../liuyan/send.jsp">发送信息</a></li>
									<li><a href="../liuyan/accept.jsp">查看留言</a></li>
									<li><a href="../xiugaimima/xiugaimima.jsp">修改密码</a></li>
									<li><a href="../geren/exit.jsp">退出登录</a></li>
								</ul></li>
						</ul>
					</div>

				</nav>

				<div class="col-md-12 column" class="jumbotron">
					<form action="do.jsp" method="POST" class="form-inline"
						target="showZip">
						<div class="form-group">
							<label for="fabujigou">家教机构/地点</label><input type="text"
								maxlength="30" placeholder="请输入您所期望的机构名称或家教地点"
								class="form-control" name="fabujigou" id="fabujigou" />
						</div>
						&nbsp;
						<div class="form-group">
							<label for="nianji">年级</label><input type="text" maxlength="30"
								placeholder="请输入所期望学生的所在年级" class="form-control" name="nianji"
								id="nianji" />
						</div>
						&nbsp;
						<div class="form-group">
							<label for="kemu">科目</label><input type="text" maxlength="30"
								placeholder="请输入所期望教导的科目" class="form-control" name="kemu"
								id="kemu" />
						</div>
						&nbsp; <br> <br>
						<div class="form-group">
							<label for="time">辅导时间</label><input type="text" maxlength="30"
								placeholder="请输入带有星期X的字样" class="form-control" name="time"
								id="time" />
						</div>
						&nbsp;
						<div class="form-group">
							<label for="minmoney">最低薪资*元/小时</label><input type="text"
								maxlength="30" class="form-control" name="minmoney"
								id="minmoney" />
						</div>
						&nbsp;
						<div class="form-group">
							<label for="maxmoney">最高薪资*元/小时</label><input type="text"
								maxlength="30" class="form-control" name="maxmoney"
								id="maxmoney" />
						</div>
						&nbsp;
						<button type="submit" class="btn btn-default">搜索</button>
					</form>

					<iframe name="showZip" id="Pcyear"
						sandbox='allow-scripts allow-same-origin' src="do.jsp"
						frameborder="0" width="100%" height="100%"></iframe>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>