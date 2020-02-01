package geren1;

public class UserDao {
	public String getdelete(User usera) {
		String teachername = usera.getTeachername();
		String teachersex = usera.getTeachersex();
		String qidainianji = usera.getQidainianji();
		String qidaikemu = usera.getQidaikemu();
		String jinyan = usera.getJinyan();
		String time = usera.getTime();
		String teacher = usera.getTeacher();
		String yaoqiu = usera.getYaoqiu();
		String money = usera.getMoney();
		String tele = usera.getTele();
		//UserCoon coon = new UserCoon(); // 实例化UserCoon
		//Connection coona = coon.getCoon(); // 获取getCoon
		String sql_delete = "delete from zijian where 1=1 "; // sql语句
		if (teachername != null) {
			sql_delete += " and teachername='" + teachername + "'";
		}
		if (teachersex != null) {
			sql_delete += " and teachersex='" + teachersex + "'";
		}
		if (qidainianji != null) {
			sql_delete += " and qidainianji='" + qidainianji + "'";
		}

		if (qidaikemu != null) {
			sql_delete += " and qidaikemu='" + qidaikemu + "'";
		}
		if (teacher != null) {
			sql_delete += " and teacher='" + teacher + "'";
		}
		if (yaoqiu != null) {
			sql_delete += " and yaoqiu='" + yaoqiu + "'";
		}
		if (money != null) {
			sql_delete += " and money='" + money + "'";
		}
		if (tele != null) {
			sql_delete += " and tele='" + tele + "'";
		}
		if (time != null) {
			sql_delete += " and time='" + time + "'";
		}
		if (jinyan != null) {
			sql_delete += " and jinyan='" + jinyan + "'";
		}	
	
		
	

		//try {// 抛出异常
			//pst = coona.prepareStatement(sql_delete);// 执行sql语句
			//rs = pst.executeUpdate();
		//} catch (Exception e) {
			//e.printStackTrace();
		//}
		// finally{JdbcUtil.free(rs, pst, coona);}//执行后Jdbc中的
		//return rs;
		return sql_delete;
	}
}
