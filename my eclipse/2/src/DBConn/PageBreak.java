package DBConn;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class PageBreak {
	private String ConnStr="";
	private Connection conn=null;
	private ResultSet rs=null;
	private int PageSize=0;//一页几个记录
	private int PageNumber=0;//页号

	public PageBreak() throws java.lang.NullPointerException 
	{
	MySQLConnection DBConnection=new MySQLConnection();
	ConnStr=DBConnection.getConnStr();//得到ConnStr
	}

	public ResultSet executeQuery(String sql) throws java.lang.NullPointerException
	{
	rs=null;
	try{
	conn=DriverManager.getConnection(ConnStr);
	Statement stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	}
	catch(SQLException e){
	System.err.println(e.getMessage());
	}
	return rs;
	}

	public int RecordNumber() throws java.lang.NullPointerException//得到表的记录总数
	{
	rs=null;
	int ColNumber=0;
	try{
	conn=DriverManager.getConnection(ConnStr);
	Statement stmt=conn.createStatement();
	rs=stmt.executeQuery("select count(*) as ColNumber from User" );

	while (rs.next())
	{
	ColNumber=rs.getInt("ColNumber");
	}
	}
	catch(SQLException e){
	System.err.println(e.getMessage());
	}
	return ColNumber;
	}

	public void setPageSize(int pPageSize)//设置页面大小，并且计算出一共有多少页
	{
	this.PageSize=pPageSize;
	int RecordNumber=this.RecordNumber();
	this.PageNumber=(int)Math.floor(RecordNumber/PageSize);
	}

	public int getPageSize()//得到页面大小
	{
	return this.PageSize;
	}

	public int getPageNumber()//得到页面数
	{
	return this.PageNumber;
	}

	public void Close()//显示关闭连接
	{
	try{
	conn.close();
	rs.close();
	}
	catch(SQLException e){
	System.err.println(e.getMessage());
	}
	}
}
