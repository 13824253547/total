<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="nuc.test.coon.UserCoon" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
  <head>
    <title>My JSP 'deleteBean.jsp' starting page</title>
  </head>
  <body>
	<%  UserCoon coon = new UserCoon(); //实例化UserCoon
		Connection coona = coon.getCoon(); //获取getCoon
		String a=request.getParameter("id");
		String sql="delete from liuyan where id='"+a+"'";
		PreparedStatement pst = coona.prepareStatement(sql);
	    int n=pst.executeUpdate(sql);
	    if (n>=1) {
			out.print("数据删除成功");
		}
		if (pst != null) {
			pst.close();
		}
		if (coona != null) {
			coona.close();
		}
	%>
   <jsp:forward page="accept.jsp"></jsp:forward>
  </body>
</html>