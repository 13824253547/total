

<%@page contentType="text/html"%>  
<%@page pageEncoding="UTF-8"%>  
<%@page import="java.sql.*" %> 
<%  
        try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/mysql"; //数据库名
            String username = "root";  //数据库用户名
            String password = "huang15217839291";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

            if(conn != null){  
                out.print("数据库连接成功！");  
                out.print("<br />");        
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT number,name,age FROM student;";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                out.print("查询结果：");  
                out.print("<br />");  
                out.println("number"+"  "+"name "+"  "+"age");  
                out.print("<br />");  
                while (rs.next()) {  
                out.println(rs.getInt("number")+" "+rs.getString("name")+"  "+rs.getInt("age")); //将查询结果输出 
                out.print("<br />");  
            }  
            }else{  
                out.print("连接失败！");  
            }  
        }catch (Exception e) {        
            //e.printStackTrace();  
            out.print("数据库连接异常！");  
        }  
%> 





