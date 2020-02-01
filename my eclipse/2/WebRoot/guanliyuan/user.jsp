<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="nuc.test.coon.UserCoon"%>
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

	<%
		String user = (String) session.getAttribute("user");
		UserCoon coon = new UserCoon(); //实例化UserCoon
		Connection coona = coon.getCoon(); //获取getCoon
		String sql = "select * from user";
		PreparedStatement pst = coona.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		rs.last();
	%>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
			<br><br>
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<td colspan="6" align="center">用户信息</td>
						</tr>
						<tr>
							<th>记录条数</th>
							<th>账户</th>
							<th>密码</th>
							<th>身份证号码</th>
							<th>联系方式</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<%
							if (user == null) {
								out.println("<h3 align=\"center\" ><a href=\"guanliyuan.jsp\">去登录</a></h3>");
							}
							rs.beforeFirst();
							while (rs.next()) {
								if (user != null) {
						%>
						<tr align="center">
							<td><%=rs.getRow()%></td>
							<td><%=rs.getString("username")%></td>
							<td><%=rs.getString("password")%></td>
							<td><%=rs.getString("id")%></td>
							<td><%=rs.getString("tele")%></td>
							<td><a href="delect.jsp?id=<%=rs.getString("username")%>">删除用户</a></td>
						</tr>
						<%
							}
							}
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
