<%@ page language="java" import="java.sql.*"    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生体质检查</title>
</head>
<body>
<%          Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url1 = "jdbc:mysql://localhost:3306/students"; //数据库名
            String url2 = "?user=root&password=huang15217839291";  //数据库用户名
            String url3 = "&useUnicode=true&characterEncoding=UTF-8";  //数据库用户密码
            String url=url1+url2+url3;
            Connection conn = DriverManager.getConnection(url);  //连接状态
            String sql="Insert into students(id,name,sex,age,weight,hight)values(?,?,?,?,?,?)";
            PreparedStatement pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,16);
            pstmt.setString(2, "男");
            pstmt.setString(3, "张三");
            pstmt.setInt(4, 20); 
            pstmt.setFloat(5, 70); 
            pstmt.setFloat(6, 175);
            int n=pstmt.executeUpdate();
            if(n==1){%>数据插入成功<br><%}
            else{%>数据插入失败<br><%}
            if(pstmt!=null){pstmt.close();}
            if(conn!=null){conn.close();}%>
</body>
</html>