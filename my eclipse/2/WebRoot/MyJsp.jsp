<%@ page language="java" import="java.sql.*" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="nuc.test.coon.UserCoon"%>
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
<body>
<jsp:useBean id="DBConnection" scope="page" class="DBConn.PageBreak" />
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
							<li class="active"><a href="MyJsp.jsp"><span
									class="glyphicon glyphicon-home"></span> 首页</a></li>
							<li><a href="fabujiajiao/fabujiajiao.jsp"> <span
									class="glyphicon glyphicon-send" id="1"></span> 发布家教信息
							</a></li>
							<li><a href="zijian/zijian.jsp"><span
									class="glyphicon glyphicon-send"></span>家教自荐</a></li>
							<li><a href="jiajiaozixun/jiajiaozixun.jsp"> <span
									class="glyphicon glyphicon-earphone"></span>家教信息咨询
							</a></li>
							<li><a href="jiaoshizixun/jiaoshizixun.jsp"> <span
									class="glyphicon glyphicon-earphone"></span>优质教师咨询
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><span
									class="glyphicon glyphicon-user"></span> 个人中心<strong
									class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="zhaoping/zpjl.jsp">招聘记录</a></li>
									<li><a href="geren/geren.jsp">个人简历</a></li>
									<li><a href="liuyan/send.jsp">发送信息</a></li>
									<li><a href="liuyan/accept.jsp">查看留言</a></li>
									<li><a href="xiugaimima/xiugaimima.jsp">修改密码</a></li>
									<li><a href="geren/exit.jsp">退出登录</a></li>
								</ul></li>
						</ul>
					</div>
				</nav>

				<div class="carousel slide" id="carousel-462893">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-462893"></li>
						<li data-slide-to="1" data-target="#carousel-462893"></li>
						<li data-slide-to="2" data-target="#carousel-462893"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt="" src="image/04.jpg" />
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img alt="" src="image/02.jpg" />
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img alt="" src="image/03.jpg" />
							<div class="carousel-caption"></div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-462893"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-462893"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<%  int i=0;
		UserCoon coon = new UserCoon();
		Connection coona = coon.getCoon();
		String sql = "select*from zijian order by time desc";
		PreparedStatement pstmt = coona.prepareStatement(sql); 
		ResultSet rs = pstmt.executeQuery();
		rs.last();
	%>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<td colspan="12" align="center">家教信息</td>
						</tr>
						<tr>
							<th>记录条数</th>
							<th>教师姓名</th>
							<th>教师性别</th>
							<th>所辅导年级</th>
							<th>所辅导科目</th>
							<th>辅导经验</th>
							<th>可辅导时间</th>
							<th>教师情况</th>
							<th>活动区域</th>
							<th>薪资*元/小时</th>
							<th>用户名</th>
							<th>发布时间</th>
						</tr>
					</thead>
					<tbody>
						<%
						String user = (String) session.getAttribute("name");
						if(user==null){
        out.println("<h3 align=\"center\" ><a href=\"denglu/index.jsp\">去登录</a></h3>");
		}
							rs.beforeFirst();
							while (rs.next()) {
								if(!rs.getString("user").equals("null")){
								String s=rs.getString("user");
						        s = s.substring(0,s.length()-3);
								i=i+1;
						%>
						<tr align="center">
							<td><%=i%></td>
							<td><%=rs.getString("teachername")%></td>
							<td><%=rs.getString("teachersex")%></td>
							<td><%=rs.getString("qidainianji")%></td>
							<td><%=rs.getString("qidaikemu")%></td>
							<td><%=rs.getString("jinyan")%></td>
							<td><%=rs.getString("time")%></td>
							<td><%=rs.getString("teacher")%></td>
							<td><%=rs.getString("yaoqiu")%></td>
							<td><%=rs.getString("money")%></td>
							<td><%=s%></td>
							<td><%=rs.getString("current_time")%></td>
						</tr>
						<%
						}}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%
		if (rs != null) {
			rs.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (coona != null) {
			coona.close();
		}
	%>
</body>
</html>