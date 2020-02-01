package nuc.test.coon;

import java.sql.Connection;
import java.sql.DriverManager;

public class UserCoon {
	public static final String DBDRIVER="com.mysql.jdbc.Driver"; //常量驱动
	  public static final String DBURL="jdbc:mysql://localhost:3306/students";//常量地址
	  public static final String DBUSER="?user=root&password=huang15217839291";//用户名 
	  public static final String DBPASS="&useUnicode=true&characterEncoding=UTF-8";//密码
	  public static final String U=DBURL+DBUSER+DBPASS;
	  Connection conn=null;
	  //getCoon方法     返回值为 Connection conn
	       public Connection getCoon(){
	    	   try {//抛出异常
				Class.forName(DBDRIVER);//驱动数据库
				conn=DriverManager.getConnection(U);//连接数据库
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	   
	    	   return conn;
	    	   
	       }
}
