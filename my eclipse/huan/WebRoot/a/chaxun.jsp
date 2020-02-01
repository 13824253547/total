<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<center>
<%  Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url1 = "jdbc:mysql://localhost:3306/students"; //数据库名
            String url2 = "?user=root&password=huang15217839291";  //数据库用户名
            String url3 = "&useUnicode=true&characterEncoding=UTF-8";  //数据库用户密码
            String url=url1+url2+url3;
            Connection conn = DriverManager.getConnection(url);  //连接状态
            String sql="select*from students";
            PreparedStatement pstmt=conn.prepareStatement(sql);
            ResultSet rs=pstmt.executeQuery();
            rs.last();
%>你要查询的学生共有<font size="5" color="red"><%=rs.getRow()%></font>人

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-bordered">
				<thead>
					<tr align="center">
						<th align="center">记录条数</th><th align="center">学号</th><th align="center">姓名</th>
						<th align="center">性别</th><th align="center">年龄</th><th align="center">体重</th>
						<th align="center">身高</th>
					</tr>
				</thead>
				<tbody>
<%
rs.beforeFirst();
while (rs.next()){ %>
<tr align="center">
<td><%=rs.getRow() %></td>
<td><%=rs.getString("id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("sex") %></td>
<td><%=rs.getString("age") %></td>
<td><%=rs.getString("weight") %></td>
<td><%=rs.getString("hight") %></td>
</tr>
<% 
}%>
</tbody>
</table>
</div>
</div>
</div>
 </center>
 <% if(rs!=null){rs.close();} 
 if(pstmt!=null){pstmt.close();}
            if(conn!=null){conn.close();}%>
</body>
</html>