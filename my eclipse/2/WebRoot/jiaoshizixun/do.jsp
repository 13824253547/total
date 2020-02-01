<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="nuc.test.coon.UserCoon"%>
<%@ page import="jiaoshizixun.User"%>
<%@ page import="jiaoshizixun.UserDao"%>
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
<title>搜索</title>
</head>
<body>
	<jsp:useBean id="userxt" class="jiaoshizixun.User">
		<jsp:setProperty name="userxt" property="*" />
	</jsp:useBean>
	<%	String usera = (String) session.getAttribute("name");
		UserCoon coon = new UserCoon(); //实例化UserCoon
		Connection coona = coon.getCoon(); //获取getCoon
		UserDao user = new UserDao();
		String sql = user.getsql_select(userxt);
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
							<td colspan="13" align="center">家教信息</td>
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
							<th>联系方式</th>
							<th>用户账号</th>
							<th>发布日期</th>
						</tr>
					</thead>
					<tbody>
					
						<%
							rs.beforeFirst();
							while (rs.next()) {
							if(!rs.getString("user").equals("null")){
							String s=rs.getString("user");
						    s = s.substring(0,s.length()-3);
						%>
						<tr align="center">
							<td><%=rs.getRow()%></td>
							<td><%=rs.getString("teachername")%></td>
							<td><%=rs.getString("teachersex")%></td>
							<td><%=rs.getString("qidainianji")%></td>
							<td><%=rs.getString("qidaikemu")%></td>
							<td><%=rs.getString("jinyan")%></td>
							<td><%=rs.getString("time")%></td>
							<td><%=rs.getString("teacher")%></td>
							<td><%=rs.getString("yaoqiu")%></td>
							<td><%=rs.getString("money")%></td>
							<td><%=rs.getString("tele")%></td>
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
		if (pst != null) {
			pst.close();
		}
		if (coona != null) {
			coona.close();
		}
	%>


</body>
</html>
