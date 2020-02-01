<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="nuc.test.coon.UserCoon"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="01.css">
<title>历史记录</title>

</head>
<body>
	<div class="talk_con">
		<div class="talk_show" id="words">
			<%
				String b = UUID.randomUUID().toString().replace("-", "");
				String user = (String) session.getAttribute("name");
				String send = request.getParameter("send");
				if (user == null) {
					out.println("<h3 align=\"center\" ><a href=\"../denglu/index.jsp\">去登录</a></h3>");
				}
				UserCoon coon = new UserCoon();
				Connection coona = coon.getCoon();
				String sql = "select * from liuyan where (accept='" + user + "' and send='" + send + "')or (accept='" + send
						+ "' and send='" + user + "') order by time ASC ";
				PreparedStatement pst = coona.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				rs.beforeFirst();
				while (rs.next()) {
					if (rs.getString("send").equals(send)) {
						String s = rs.getString("send");
						s = s.substring(0, s.length() - 3);
			%>
			<div class="atalk">
				<span id="asay"><%=rs.getString("time")%><br><%=s%>说： <%=rs.getString("neirong")%></span>
			</div>

			<%
				}
					if (rs.getString("send").equals(user)) {
						String s = rs.getString("send");
						s = s.substring(0, s.length() - 3);
			%>

			<div class="btalk">
				<span id="bsay"><%=rs.getString("time")%><br><%=s%>说： <%=rs.getString("neirong")%></span>
			</div>

			<%
				}
				}
			%>

		</div>
		<form name="from1" action="dolishi.jsp" method="POST">
			<input type="hidden" name="send" value=<%=user%>> <input
				type="hidden" name="accept" value=<%=send%>> <input
				type="hidden" name="id" value=<%=b%>> <input type="text"
				class="talk_word" name="neirong"> <input type="submit"
				value="发送" class="talk_sub">
		</form>
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
