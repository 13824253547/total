package zijian;

import java.sql.Connection;
import java.sql.PreparedStatement;

import nuc.test.coon.UserCoon;

public class UserDao {
	public int Insert(User usera){
	   	 PreparedStatement pst=null;
	   	 int rs=0;
	   	 UserCoon coon=new UserCoon();  //实例化UserCoon
	        Connection coona=coon.getCoon();  //获取getCoon
	        String sql_insert="insert into zijian(teachername,teachersex,qidainianji,qidaikemu,teacher,yaoqiu,money,tele,time,jinyan,user,id) values(?,?,?,?,?,?,?,?,?,?,?,?)"; //sql语句
	       	try {//抛出异常
					pst=coona.prepareStatement(sql_insert);//执行sql语句
					 pst.setString(1,usera.getTeachername());//获取值
					 pst.setString(2,usera.getTeachersex());
					 pst.setString(3,usera.getQidainianji());
					 pst.setString(4,usera.getQidaikemu());
					 pst.setString(5,usera.getTeacher());
					 pst.setString(6,usera.getYaoqiu());
					 pst.setString(7,usera.getMoney());
					 pst.setString(8,usera.getTele());
					 pst.setString(9,usera.getTime());
					 pst.setString(10,usera.getJinyan());
					 pst.setString(11,usera.getUser());
					 pst.setString(12,usera.getId());
		    		 rs=pst.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				} 
	       //finally{JdbcUtil.free(rs, pst, coona);}//执行后Jdbc中的
	            return rs;
	    }
}
