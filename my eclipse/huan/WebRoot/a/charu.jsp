
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

   Class.forName("com.mysql.jdbc.Driver"); 
            String url1 = "jdbc:mysql://localhost:3306/students";
            String url2 = "?user=root&password=huang15217839291";
            String url3 = "&useUnicode=true&characterEncoding=UTF-8";  
            String url=url1+url2+url3;
            Connection conn = DriverManager.getConnection(url); 
            String sql="Insert into students(id,name,sex,age,weight,hight)value(?,?,?,?,?,?)";
            PreparedStatement pstmt=conn.prepareStatement(sql);
            request.setCharacterEncoding("UTF-8");
            int id=Integer.parseInt(request.getParameter("id"));
            String name=request.getParameter("name");
            String sex=request.getParameter("sex");
            int age=Integer.parseInt(request.getParameter("age"));
            float weight=Float.parseFloat(request.getParameter("weight"));
            float hight=Float.parseFloat(request.getParameter("hight"));
            pstmt.setInt(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, sex);
            pstmt.setInt(4, age);
            pstmt.setFloat(5, weight);
            pstmt.setFloat(6, hight);
           int n=pstmt.executeUpdate();
            if(n==1){%>数据插入成功<br><%}
            else{%>数据插入失败<br><%}
            if(pstmt!=null){pstmt.close();}
            if(conn!=null){conn.close();}%>
 
</body>
</html>