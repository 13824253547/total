package DBConn;

public class MySQLConnection {
	private String DBDriver="com.mysql.jdbc.Driver";
	private String ConnStr="jdbc:mysql://localhost:3306/students?user=root&password=huang15217839291";

	public MySQLConnection() throws java.lang.NullPointerException
	{
	try{
	Class.forName(DBDriver);
	}
	catch(ClassNotFoundException e){
	System.err.println(e.getMessage());
	}
	}

	public String getConnStr()
	{
	return ConnStr;
	}
}
