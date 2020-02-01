<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="nuc.test.coon.UserCoon"%>
<%
	request.setCharacterEncoding("utf-8");
%>
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
								<li><a href="send.jsp">发送信息</a></li>
								<li><a href="#">查看留言</a></li>
								<li><a href="../xiugaimima/xiugaimima.jsp">修改密码</a></li>
								<li><a href="../geren/exit.jsp">退出登录</a></li>
								</ul></li>
						</ul>
					</div>
				</nav>
				</div>
				</div>
				</div>
				<jsp:useBean id="userxt" class="jiaoshizixun.User">
		<jsp:setProperty name="userxt" property="*" />
	</jsp:useBean>
	<%  int i=0;
		String user = (String) session.getAttribute("name");
		UserCoon coon = new UserCoon(); //实例化UserCoon
		Connection coona = coon.getCoon(); //获取getCoon
		String sql = "select * from liuyan where accept='"+user+"' order by time desc";
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
							<td colspan="8" align="center">留言中心</td>
						</tr>
						<tr>
							<th>记录条数</th>
							<th>发送方</th>
							<th colspan="3">内容</th>
							<th>发布时间</th>
							<th colspan="2">功能</th>
						</tr>
					</thead>
					<tbody>
						<%
						if(user==null){
        out.println("<h3 align=\"center\" ><a href=\"../denglu/index.jsp\">去登录</a></h3>");
		}
							rs.beforeFirst();
							while (rs.next()) {
							
							if(!rs.getString("send").equals("null")){
							String s=rs.getString("send");
						    s = s.substring(0,s.length()-3);
							i=i+1;
							%>
						<tr align="center">
							<td><%=i%></td>
							<td><%=s%></td>
							<td colspan="3"><%=rs.getString("neirong")%></td>
								<td><%=rs.getString("time")%></td>
							<td><a href="doaccept.jsp?id=<%=rs.getString("id")%>">删除留言</a></td>
							<td><a href="lishi.jsp?send=<%=rs.getString("send")%>">历史记录</a></td>
						<%}}%>
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
