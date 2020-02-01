<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>修改编辑页面</title>
  </head>
  <body>
   <%Class.forName("com.mysql.jdbc.Driver"); 
            String url1 = "jdbc:mysql://localhost:3306/students";
            String url2 = "?user=root&password=huang15217839291";
            String url3 = "&useUnicode=true&characterEncoding=UTF-8";  
            String url=url1+url2+url3;
            Connection conn = DriverManager.getConnection(url); 
             request.setCharacterEncoding("UTF-8");
             
             String name=request.getParameter("name");
             String sex=request.getParameter("sex");
             String ww1=request.getParameter("w1");
             String ww2=request.getParameter("w2");
             String s="1=1";
          
             float w1,w2;
             if(!name.equals(""))s=s+"and name='"+name+"'";
             if(sex!=null)s=s+"and sex='"+sex+"'";
             if(!ww1.equals("")){w1=Float.parseFloat(ww1);s=s+"and weight>="+w1;}
             if(!ww2.equals("")){w2=Float.parseFloat(ww2);s=s+"and weight<="+w2;}
             String sql="delete from students where "+s;
             PreparedStatement pstmt=conn.prepareStatement(sql);
             int n=pstmt.executeUpdate();
             if(n==1){%>数据删除成功<%}
             else{%>数据删除失败<%}
             if(pstmt!=null){pstmt.close();}
             if(conn!=null){conn.close();}
             %>
             </body>
             </html>