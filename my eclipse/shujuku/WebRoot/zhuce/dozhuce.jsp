<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="zhuce.User" %>
<jsp:useBean id="User" class="zhuce.User" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="User"/>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>信息检验中</title>
  </head>
  <body>
  <h1>出现邮箱插入失败问题，还有javabean封装后调用失败，遇到服务器问题</h1>
  <%
  	String username=User.getUsername();
			String password=User.getPassword();
			String email=User.getEmail();
	        String tele=User.gettele();
			try {			
				Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
	            String url1="jdbc:mysql://localhost:3306/students"; //数据库名
	            String url2="?user=root&password=huang15217839291";  //数据库用户名
	            String url3="&useUnicode=true&characterEncoding=UTF-8";  //数据库用户密码
	            String url=url1+url2+url3;
	            java.sql.Connection conn=DriverManager.getConnection(url);  //连接状态
				// 判断 数据库连接是否为空
				if(conn!=null){			
					String sql="insert into user(username,password,email,tele) values(?,?,?,?)";
					PreparedStatement pstmt=(PreparedStatement) conn.prepareStatement(sql);
					pstmt.setString(1,username);
		            pstmt.setString(2,password);
		            pstmt.setString(3,email);
		            pstmt.setString(4,tele);
		            int n=pstmt.executeUpdate();
		            if(n==1){%>注册成功<%}
		            else{%>注册失败<%}
		            if(pstmt!=null){pstmt.close();}
		            if(conn!=null){conn.close();}
					}    
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}	
   %>
  </body>
</html>



