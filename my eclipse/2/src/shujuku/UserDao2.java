package shujuku;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import shujuku.User2;
public class UserDao2 {
	private boolean a;
	public boolean userLogin(User2 user){
		String username=user.getUsername();
		String password=user.getPwd();
		try {			
			Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url1 = "jdbc:mysql://localhost:3306/students"; //数据库名
            String url2 = "?user=root&password=huang15217839291";  //数据库用户名
            String url3 = "&useUnicode=true&characterEncoding=UTF-8";  //数据库用户密码
            String url=url1+url2+url3;
            Connection conn = (Connection) DriverManager.getConnection(url);  //连接状态
			// 判断 数据库连接是否为空
			if(conn != null){			
				String sql="select * from user2 where user='"+username+"' and pwd='"+ password + "'";
				java.sql.PreparedStatement stmt =conn.prepareStatement(sql);
				ResultSet rs=stmt.executeQuery(sql);	
				if(rs.next()){
					rs.close();
					stmt.close();
					conn.close();
					 return a=true;	
				}else{
					rs.close();
					stmt.close();
					conn.close();
					return a=false;
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;
    }
}
