<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="nuc.test.coon.UserCoon"%>
<%@ page import="jiajiaozixun.User"%>
<%@ page import="jiajiaozixun.UserDao"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>个人简历</title>
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
							<li><a href="../fabujiajiao/fabujiajiao.jsp"> <span class="glyphicon glyphicon-send"></span>
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
							    <li><a href="#">招聘记录</a></li>
								<li><a href="../geren/geren.jsp">个人简历</a></li>
								<li><a href="../liuyan/send.jsp">发送信息</a></li>
								<li><a href="../liuyan/accept.jsp">查看留言</a></li>
								<li><a href="../xiugaimima/xiugaimima.jsp">修改密码</a></li>
								<li><a href="../geren/exit.jsp">退出登录</a></li>
								</ul></li>
						</ul>
					</div>

				</nav>
				</div>
				</div>
				</div>
		<jsp:useBean id="userxt" class="jiajiaozixun.User">
		<jsp:setProperty name="userxt" property="*" />
	</jsp:useBean>
	<%
		String user = (String) session.getAttribute("name");
		UserCoon coon = new UserCoon(); //实例化UserCoon
		Connection coona = coon.getCoon(); //获取getCoon
		String sql = "select * from zhaopinfang where user='"+user+"' order by current_time desc";
		PreparedStatement pst = coona.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
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
							<th>发布机构</th>
							<th>学生年级</th>
							<th>辅导科目</th>
							<th>学生情况</th>
							<th>应聘要求</th>
							<th>辅导时间</th>
							<th>薪资*元/小时</th>
							<th>联系方式</th>
							<th>发布时间</th>
							<th colspan="2">操作</th>
						</tr>
					</thead>
					<tbody>
						<%
						if(user==null){
        out.println("<h3 align=\"center\" ><a href=\"../denglu/index.jsp\">去登录</a></h3>");
		}
							rs.beforeFirst();
							while (rs.next()) {
							if(!rs.getString("user").equals("null")){
						%>
						<tr align="center">
							<td><%=rs.getRow()%></td>
							<td><%=rs.getString("fabujigou")%></td>
							<td><%=rs.getString("nianji")%></td>
							<td><%=rs.getString("kemu")%></td>
							<td><%=rs.getString("student")%></td>
							<td><%=rs.getString("yaoqiu")%></td>
							<td><%=rs.getString("time")%></td>
							<td><%=rs.getString("money")%></td>
							<td><%=rs.getString("tele")%></td>
							<td><%=rs.getString("current_time")%></td>
							<td><a href="delect.jsp?id=<%=rs.getString("id")%>">删除记录</a></td>
							<td><a href="xiugai.jsp?id=<%=rs.getString("id")%>">修改记录</a></td>
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
		if (pst != null) {
			pst.close();
		}
		if (coona != null) {
			coona.close();
		}
	%>
</body>
</html>
