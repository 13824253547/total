package xiugaimima;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import nuc.test.coon.UserCoon;
import xiugaimima.User;

public class UserDao {
	int a;
	public int xiugai(User usera) throws SQLException {
		String username=usera.getUser();
		String password1=usera.getPassword1();
		String password2=usera.getPassword3();
		PreparedStatement pst = null;
		int rs = 0;
		UserCoon coon = new UserCoon(); // 实例化UserCoon
		Connection coona = coon.getCoon(); // 获取getCoon
		String sql = "update user set password='"+password2+"' where username='"+username+"' and  password='"+password1+"'";
		try {
			pst =coona.prepareStatement(sql);
			rs = pst.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pst!=null) {
				pst.close();
			}
			if (coona!=null) {
				coona.close();
			}
		}
		 a=rs;
		return a;
		
	}
	public int getRs(){
		
		return a;
	}
}
