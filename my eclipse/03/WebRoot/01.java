package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBTest {
 /**
  * @param args
  */
 
 private static String url="jdbc:mysql://localhost:3306/wdx";
 private static String name="root";
 private static String password="huang15217839291";
 
 public static void main(String[] args) throws Exception {
  // TODO Auto-generated method stub
 
 
  try {
   //加载驱动程序；
   Class.forName("com.mysql.jdbc.Driver");
   //获得数据库连接；
   Connection conn=DriverManager.getConnection(url,name,password);
   //通过数据库的连接操作数据库，实现增删改查。
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery("select username,age from dhtable;");
   while(rs.next())
   {
    System.out.println(rs.getString("username")+","+rs.getString("age"));
   
   }
  } catch (ClassNotFoundException e) {
   e.printStackTrace();
  } catch (SQLException e) {
   e.printStackTrace();
  }
 
 }
}
