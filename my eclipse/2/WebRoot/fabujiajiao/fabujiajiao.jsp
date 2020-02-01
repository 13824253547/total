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
<script type="text/javascript" charset="UTF-8" src="01.js"></script>
</head>
<body>
	<%
		String a = (String) session.getAttribute("name");
		String b = UUID.randomUUID().toString().replace("-", "");
	%>
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
							<li><a href="#"> <span class="glyphicon glyphicon-send"></span>
									发布家教信息
							</a></li>
							<li><a href="../zijian/zijian.jsp"><span
									class="glyphicon glyphicon-send"></span>家教自荐 </a></li>
							<li><a href="../jiajiaozixun/jiajiaozixun.jsp"> <span
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
				<div class="row clearfix">
					<div class="col-md-12 column">
						<form name="from1" action="dofabu.jsp" method="POST"
							class="jumbotron">


							<div class="form-group">
								<label for="fabujigou">发布机构/家教地点</label><input type="text"
									maxlength="30" placeholder="请输入您所代表的机构名称或家教地点"
									class="form-control" name="fabujigou" id="fabujigou" />
							</div>

							<div class="form-group">
								<label for="nianji">年级</label><input type="text" maxlength="30"
									placeholder="请输入学生的所在年级" class="form-control" name="nianji"
									id="nianji" />
							</div>

							<div class="form-group">
								<label for="kemu">科目</label><input type="text" maxlength="30"
									placeholder="请输入学生的所需教导的科目" class="form-control" name="kemu"
									id="kemu" />
							</div>

							<div class="form-group">
								<label for="time">辅导时间</label><input type="text" maxlength="40"
									placeholder="请输入星期X，可输入多个" class="form-control" name="time"
									id="time" />
							</div>

							<div class="form-group">
								<label for="student">学生情况</label>
								<textarea class="form-control" placeholder="请对学生的详细情况进行补充"
									maxlength="100" name="student" id="student" rows="4" cols="90"></textarea>
							</div>

							<div class="form-group">
								<label for="yaoqiu">应聘要求</label>
								<textarea class="form-control" placeholder="请对教师要求进行描述"
									maxlength="100" name="yaoqiu" id="yaoqiu" rows="4" cols="90"></textarea>
							</div>

							<div class="form-group">
								<label for="money">薪资*元/小时</label><input type="text"
									maxlength="30" class="form-control" name="money" id="money" />
							</div>

							<div class="form-group">
								<label for="tele">联系方式</label><input type="text" maxlength="30"
									class="form-control" name="tele" id="tele" />
							</div>
							<input type="hidden" name="user" value=<%=a%> /> <input
								type="hidden" name="id" value=<%=b%> />
							<button type="submit" class="btn btn-default"
								onClick="validate()">发布</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
