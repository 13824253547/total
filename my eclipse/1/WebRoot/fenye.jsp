<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta content="charset=UTF-8">
<title>My JSP 'fenye.jsp' starting page</title>
</head>
<body>
	<jsp:useBean id="DBConnection" scope="page" class="DBConn.PageBreak" />
	<%  DBConnection.setPageSize(4);//设置页面大小
		int RecordPerPage = DBConnection.getPageSize();//得到页面大小
		int PageNumber = DBConnection.getPageNumber();//得到页面数
		int offSet = 0;//Select 中的第几页，0开始
		int Next = 2;//连接“下一页”的初始化
		int Pre = 1;//连接“上一页”的初始化
		int AbsolutePage = 1;//绝对页面，1开始。作为连接“下一页”、“上一页”的过渡变量

		if (request.getParameter("PageNo") == null)//没有参数传入，则为物理的1页，即0
			offSet = 0;
		else if (request.getParameter("PageNo") != null) {
			offSet = Integer.parseInt(request.getParameter("PageNo")) - 1;//有参数传入，参数为逻辑页面号，减1得物理页面号
			if ((offSet + 1) > PageNumber)//达到最后一页
			{
				offSet = PageNumber;
				AbsolutePage = PageNumber + 1;
				Next = AbsolutePage;
				Pre = Next - 1;
			} else if (offSet < 1)//达到第一页
			{
				offSet = 0;
				AbsolutePage = offSet + 1;
				Next = AbsolutePage + 1;
				Pre = Next - 1;
			} else {
				AbsolutePage = offSet + 1;
				Next = AbsolutePage + 1;
				Pre = AbsolutePage - 1;
			}
		}
	%>
	<% String QuerySQL = "select * from user limit " + offSet * RecordPerPage + "," + RecordPerPage;//关键代码
		ResultSet RS = DBConnection.executeQuery(QuerySQL);
		while (RS.next()) {
			String userName = RS.getString("UserName");
			out.print(userName + "<br>");
		}
	    out.print("<a href='fenye.jsp?PageNo=" + (Pre) + "'>上一页</a>");//上一页
		out.print("<a href='fenye.jsp?PageNo=" + (Next) + "'>下一页</a><br>");//下一页
		RS.close();
		DBConnection.Close();%>
</body>
</html>
