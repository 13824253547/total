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
	<script type="text/javascript" charset="UTF-8" src="01.js"></script>
<title>家教自荐</title>
</head>
<body>
	<%
		String a = (String) session.getAttribute("name");
	    String b=UUID.randomUUID().toString().replace("-", "");
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
							<li><a href="../fabujiajiao/fabujiajiao.jsp"> <span
									class="glyphicon glyphicon-send"></span> 发布家教信息
							</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-send"></span>家教自荐</a>
							</li>
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
						<form action="dozijian.jsp" method="POST" class="jumbotron">

							<input type="hidden" name="user" value=<%=a%> /> 
							<input type="hidden" name="id" value=<%=b%> /> 
						    

							<div class="form-group">
								<label for="teachername">教师姓名</label><input type="text"
									maxlength="30" placeholder="请输入您的姓名" class="form-control"
									name="teachername" id="teachername" />
							</div>
							<div class="form-group">
								<label for="teachersex">教师性别</label><input type="text"
									maxlength="30" placeholder="请选择您的性别" class="form-control"
									name="teachersex" id="teachersex" />
							</div>

							<div class="form-group">
								<label for="qidainianji">辅导年级</label><input type="text"
									maxlength="30" placeholder="请输入您希望教导学生的年级" class="form-control"
									name="qidainianji" id="qidainianji" />
							</div>
							<div class="form-group">
								<label for="jinyan">教育经验</label><input type="text"
									maxlength="30" placeholder="请输入带有X年的字样" class="form-control"
									name="jinyan" id="jinyan" />
							</div>

							<div class="form-group">
								<label for="qidaikemu">辅导科目</label><input type="text"
									maxlength="30" placeholder="您所希望教导的科目" class="form-control"
									name="qidaikemu" id="qidaikemu" />
							</div>

							<div class="form-group">
								<label for="time">可辅导时间</label><input type="text" maxlength="30"
									placeholder="请输入星期X，可输入多个" class="form-control" name="time"
									id="time" />
							</div>

							<div class="form-group">
								<label for="teacher">教师自我介绍</label>
								<textarea class="form-control"
									placeholder="就学学校名称，年级/任职情况，从教经验等" maxlength="100"
									name="teacher" id="teacher" rows="4" cols="90"></textarea>
							</div>

							<div class="form-group">
								<label for="yaoqiu">家教活动区域</label>
								<textarea class="form-control" placeholder="您所能接受的几个家教地点"
									maxlength="100" name="yaoqiu" id="yaoqiu" rows="3" cols="70"></textarea>
							</div>

							<div class="form-group">
								<label for="money">薪资*元/小时</label><input type="text"
									maxlength="30" placeholder="您所期待的薪资" class="form-control"
									name="money" id="money" />
							</div>
							<div class="form-group">
								<label for="tele">联系方式</label><input type="text" maxlength="30"
									placeholder="请留下您的联系方式方便联系" class="form-control" name="tele"
									id="tele" />
							</div>

							<button type="submit" class="btn btn-default" onClick="validate()">发布</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
