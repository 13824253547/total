package zhuce;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.jdbc.PreparedStatement;

public class  Userdao {
	        public void userzhuce(User user){
			String username=user.getUsername();
			String password=user.getPassword();
			String email=user.getEmail();
	        String tele=user.gettele();
			try {			
				Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
	            String url1="jdbc:mysql://localhost:3306/students"; //数据库名
	            String url2="?user=root&password=huang15217839291";  //数据库用户名
	            String url3="&useUnicode=true&characterEncoding=UTF-8";  //数据库用户密码
	            String url=url1+url2+url3;
	            java.sql.Connection conn=DriverManager.getConnection(url);  //连接状态
				// 判断 数据库连接是否为空
				if(conn!=null){			
					String sql="insert into user(username,password,email,tele) values(?,?,?,?)";
					PreparedStatement pstmt=(PreparedStatement) conn.prepareStatement(sql);
					pstmt.setString(1,username);
		            pstmt.setString(2,password);
		            pstmt.setString(3,email);
		            pstmt.setString(4, tele);
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
