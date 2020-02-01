
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
</head>
<body>
<%
   Class.forName("com.mysql.jdbc.Driver"); 
            String url1 = "jdbc:mysql://localhost:3306/students";
            String url2 = "?user=root&password=huang15217839291";
            String url3 = "&useUnicode=true&characterEncoding=UTF-8";  
            String url=url1+url2+url3;
            Connection conn = DriverManager.getConnection(url); 
            
            request.setCharacterEncoding("UTF-8");
            
            String sql="update students set weight=50 where name='吴东霞' ";
            
            PreparedStatement pstmt=conn.prepareStatement(sql);
        
           int n=pstmt.executeUpdate(sql);
            if(n==1){%>数据插入成功<br><%}
            else{%>数据插入失败<br><%}
            if(pstmt!=null){pstmt.close();}
            if(conn!=null){conn.close();}%>
 
</body>
</html>