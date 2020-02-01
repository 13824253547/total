package mima;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mima.User;
import nuc.test.coon.UserCoon;
  
public class UserDa {
	public String getpassword(User usera) throws SQLException {
		PreparedStatement pst= null;
	
		String mima = null;
		UserCoon coon = new UserCoon(); // 实例化UserCoon
		Connection coona = coon.getCoon(); // 获取getCoon
		String user=usera.getUsername();
		String id=usera.getId();
		String tele=usera.getTele();
		String sql = "select * from user  where username='"+user+"' and id='"+id+"' and tele='"+tele+"' "; // sql语句
		try {// 抛出异常
			pst = coona.prepareStatement(sql);// 执行sql语句
			ResultSet rs=pst.executeQuery();
			rs.next(); 
			mima=rs.getString("password");
			if (rs!=null) {
				rs.close();
			}
					} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (pst!= null) {
			pst.close();
		}
		if (coona != null) {
			coona.close();
		}
		// finally{JdbcUtil.free(rs, pst, coona);}//执行后Jdbc中的
		return mima;
	}
}
