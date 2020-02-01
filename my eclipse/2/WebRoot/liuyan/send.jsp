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
</head>
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
									class="glyphicon glyphicon-send" id="1"></span> 发布家教信息
							</a></li>
							<li><a href="../zijian/zijian.jsp"><span
									class="glyphicon glyphicon-send"></span>家教自荐</a></li>
							<li><a href="../jiajiaozixun/jiajiaozixun.jsp"> <span
									class="glyphicon glyphicon-earphone"></span>家教信息咨询
							</a></li>
							<li><a href="../jiaoshizixun/jiaoshizixun.jsp"> <span
									class="glyphicon glyphicon-earphone"></span>优质教师咨询
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><span
									class="glyphicon glyphicon-user"></span> 个人中心<strong
									class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="../zhaoping/zpjl.jsp">招聘记录</a></li>
								<li><a href="../geren/geren.jsp">个人简历</a></li>
								<li><a href="#">发送信息</a></li>
								<li><a href="accept.jsp">查看留言</a></li>
								<li><a href="../xiugaimima/xiugaimima.jsp">修改密码</a></li>
								<li><a href="../geren/exit.jsp">退出登录</a></li>
								</ul></li>
						</ul>
					</div>
				</nav>
				<%
				String user = (String) session.getAttribute("name");
						if(user==null){
        out.println("<h3 align=\"center\" ><a href=\"../denglu/index.jsp\">去登录</a></h3>");
		}else{%>
		<form name="from1" action="dosend.jsp" method="POST" class="jumbotron">
				

							<div class="form-group">
								<label for="accept">接收方</label><input type="text"
									maxlength="30" placeholder="请输入接收信息的用户"
									class="form-control" name="accept" id="accept" />
							</div>

							<div class="form-group">
								<label for="neirong">内容</label>
								<textarea maxlength="200"
									placeholder="请输入您要发送的内容" class="form-control" name="neirong"
									rows="4" cols="90"
									id="neirong"></textarea>
							</div>
							   <input type="hidden" name="send" value=<%=a%> /> 
							   <input type="hidden" name="id" value=<%=b%> /> 
							<button type="submit" class="btn btn-default" >发布</button>
							</form>
		<% }               
		
		%>
					
				</div>
				</div>
				</div>
  </body>
</html>
