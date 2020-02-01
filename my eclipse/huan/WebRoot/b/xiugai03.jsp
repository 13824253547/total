<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    
    <title>修改后重写记录页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <% Class.forName("com.mysql.jdbc.Driver"); 
            String url1 = "jdbc:mysql://localhost:3306/students";
            String url2 = "?user=root&password=huang15217839291";
            String url3 = "&useUnicode=true&characterEncoding=UTF-8";  
            String url=url1+url2+url3;
            Connection conn = DriverManager.getConnection(url); 
             request.setCharacterEncoding("UTF-8");
             String sql="update students set id=?,name=?,sex=?,age=?,weight=?,hight=? where name=? and sex=?";
             PreparedStatement pstmt=conn.prepareStatement(sql);
             int id=Integer.parseInt(request.getParameter("id"));
             String name2=request.getParameter("name2");
             String sex2=request.getParameter("sex2");
             int age=Integer.parseInt(request.getParameter("age"));
             float weight=Float.parseFloat(request.getParameter("weight"));
             float hight=Float.parseFloat(request.getParameter("hight"));
             String name=(String)session.getAttribute("name");
             String sex=(String)session.getAttribute("sex");
             pstmt.setInt(1, id);  pstmt.setString(2, name2); pstmt.setString(3, sex2);
             pstmt.setInt(4,age); pstmt.setFloat(5, weight); pstmt.setFloat(6, hight);
             pstmt.setString(7, name); pstmt.setString(8, sex);
             int n=pstmt.executeUpdate();
             if(n>=1){%>重写数据成功<%}
             else{%>重写数据失败<%}
            if(pstmt!=null){pstmt.close();}
            if(conn!=null){conn.close();}
              %>
  </body>
</html>
