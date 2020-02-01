<%@ page language="java" import="java.sql.*" import="java.util.*" pageEncoding="UTF-8"%>
<html>

  <head>
  	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
    
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  </head>
<div class="container">
	<div class="row clearfix">
	
		<div class="col-md-12 column">
		
			<nav class="navbar navbar-default navbar-inverse navbar-static-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span>
					 <span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">导航栏</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="MyJsp.jsp"><span class="glyphicon glyphicon-home"></span> 首页</a>
						</li>
						<li>
							 <a href="fabujiajiao/fabujiajiao.jsp">  <span class="glyphicon glyphicon-send"></span>  发布家教信息</a>
						</li>
						<li>
							 <a href="#"><span class="glyphicon glyphicon-send"></span>家教自荐</a>
						</li>
						<li>
							 <a href="#"> <span class="glyphicon glyphicon-earphone"></span>家教信息咨询</a>
						</li>
						<li>
							 <a href="#"> <span class="glyphicon glyphicon-earphone"></span>优质教师咨询</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> 个人中心<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">招聘记录</a>
								</li>
								<li>
									 <a href="#">应聘记录</a>
								</li>
								<li>
									 <a href="#">退出登录</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
			
			<div class="carousel slide" id="carousel-462893">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-462893">
					</li>
					<li data-slide-to="1" data-target="#carousel-462893">
					</li>
					<li data-slide-to="2" data-target="#carousel-462893">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="image/01.jpg" />
						<div class="carousel-caption">
						</div>
					</div>
					<div class="item">
						<img alt="" src="image/02.jpg" />
						<div class="carousel-caption">
						</div>
					</div>
					<div class="item">
						<img alt="" src="image/03.jpg" />
						<div class="carousel-caption">
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-462893" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-462893" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
</div>

<br><br>
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
%>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-bordered">
				<thead>
					<tr >
						<th >记录条数</th><th >学号</th><th >姓名</th>
						<th >性别</th><th >年龄</th><th >体重</th>
						<th>身高</th>
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
 <% if(rs!=null){rs.close();} 
 if(pstmt!=null){pstmt.close();}
            if(conn!=null){conn.close();}%>
</body>
</html>
