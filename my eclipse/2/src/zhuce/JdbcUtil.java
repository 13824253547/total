package zhuce;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JdbcUtil {
	public static void free(Object rs, PreparedStatement pst, java.sql.Connection coona) {
		try{if (rs!=null) {((java.sql.Statement) rs).close();}}
		
		catch(SQLException e){e.printStackTrace();}
		
		finally{
			try{if (pst!=null) {pst.close();}}
			
			catch (Exception e) {
				e.printStackTrace();
			}
			finally{
				if (coona!=null) {
					try {
						coona.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		
	}
	 }}
