public class DBUtil {
	private static final String URL="jdbc:mysql://localhost:3306/test";
	private static final String USER="root";
	private static final String PASSWORD="huang15217839291";
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		//1.加载驱动程序
		Class.forName("com.mysql.jdbc.Driver");
		//2.获得数据库连接
		Connection conn=DriverManager.getConnection(URL, USER, PASSWORD);
		//3.通过数据库的连接操作数据库，实现增删改查
		Statement stmt = conn.createStatement();
		ResultSet rs=stmt.executeQuery("select user_name,age from 02 where id=1");
		while(rs.next()){
			System.out.print(rs.getString("user_name")+","+rs.getInt("age"));
		}
 
	}
 
}
