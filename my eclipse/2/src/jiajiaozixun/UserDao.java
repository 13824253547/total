package jiajiaozixun;

//import zhuce.JdbcUtil;

public class UserDao {
	 public String getsql_select(User usera){
	        String fabujigou=usera.getFabujigou();
	        String Time=usera.getTime();
	        String Nianji=usera.getNianji();
	        String Kemu=usera.getKemu();
	        String minMoney=usera.getMinmoney();
	        String maxMoney=usera.getMaxmoney();
	        String sql_select="select * from zhaopinfang where 1=1 "; //sql语句
	        if (fabujigou!=null) {
				sql_select+="and  fabujigou like  '%"+fabujigou+"%'";
			}
	        if (Nianji!=null) {
				sql_select+="and nianji like '%"+Nianji+"%'";
			}
	        if (Kemu!=null) {
				sql_select+="and kemu like '%"+Kemu+"%'";
			}
	        
	        if (Time!=null) {
				sql_select+="and time like '%"+Time+"%'";
			}
	        
	        if (minMoney!=null) {
				sql_select+="and money>='"+minMoney+"'";
			}if (maxMoney!=null) {
				sql_select+="and money<='"+maxMoney+"'";
			}
			if (sql_select!=null) {
				sql_select+="order by time desc";
			}
			return sql_select;
	    }
	 
}

