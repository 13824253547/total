package zhuce;

import java.sql.Connection;
import java.sql.PreparedStatement;

import nuc.test.coon.UserCoon;
import zhuce.User;

public class UserDao {
	//Insert方法 参数是user  返回值为int rs
    public int Insert(User usera){
   	 PreparedStatement pst=null;
   	 int rs=0;
   	    UserCoon coon=new UserCoon();  //实例化UserCoon
        Connection coona=coon.getCoon();  //获取getCoon
        String sql_insert="insert into user(username,password,id,tele) values(?,?,?,?)"; //sql语句
       	try {//抛出异常
				pst=coona.prepareStatement(sql_insert);//执行sql语句
				 pst.setString(1,usera.getUsername());//获取值
				 pst.setString(2,usera.getPassword());
				 pst.setString(3,usera.getId());
				 pst.setString(4,usera.gettele());
	    		 rs=pst.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
       //finally{JdbcUtil.free(rs, pst, coona);}//执行后Jdbc中的
            return rs;
    }
}
