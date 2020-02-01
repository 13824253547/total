package jiajiaofabu;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import jiajiaofabu.User;;

public class Userdao {
	 public void Jiaojiaofabu(User user){
		 String afbujigou=user.getJigou();
		 String nianji=user.getNianji();
	     String kemu=user.getKemu();
	     String student=user.getStudent();
	     String yaoqiu=user.getYaoqiu();
	     String money=user.getMoney();
	     String tele=user.getTele();
			try {			
				Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
	            String url1="jdbc:mysql://localhost:3306/students"; //数据库名
	            String url2="?user=root&password=huang15217839291";  //数据库用户名
	            String url3="&useUnicode=true&characterEncoding=UTF-8";  //数据库用户密码
	            String url=url1+url2+url3;
	            java.sql.Connection conn=DriverManager.getConnection(url);  //连接状态
				// 判断 数据库连接是否为空
				if(conn!=null){			
					String sql="insert into zhaopinfang(afbujigou,nianji,kemu,student,yaoqiu,money,tele) values(?,?,?,?,?,?,?)";
					PreparedStatement pstmt=(PreparedStatement) conn.prepareStatement(sql);
					pstmt.setString(1,afbujigou);
		            pstmt.setString(2,nianji);
		            pstmt.setString(3,kemu);
		            pstmt.setString(4, student);
		            pstmt.setString(5, yaoqiu);
		            pstmt.setString(6, money);
		            pstmt.setString(7, tele);
		            @SuppressWarnings("unused")
					int n=pstmt.executeUpdate();
                 if(pstmt!=null){pstmt.close();}
		            if(conn!=null){conn.close();}
					}    
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}	 
 }
}
