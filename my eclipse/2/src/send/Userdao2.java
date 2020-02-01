package send;

import java.sql.Connection;
import java.sql.PreparedStatement;

import nuc.test.coon.UserCoon;

public class Userdao2 {
	private int a;
	public int Insert(User2 usera){
	   	 PreparedStatement pst=null;
	   	 int rs=0;
	   	
	  
	   	    UserCoon coon=new UserCoon();  //实例化UserCoon
	        Connection coona=coon.getCoon();  //获取getCoon
	        String sql_insert="insert into liuyan(send,accept,neirong,id) values(?,?,?,?)"; //sql语句
	       	try {//抛出异常
					pst=coona.prepareStatement(sql_insert);//执行sql语句
					 pst.setString(1,usera.getSend());//获取值
					 pst.setString(2,usera.getAccept());
					 pst.setString(3,usera.getNeirong());
					 pst.setString(4,usera.getId());
		    		 rs=pst.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
	       //finally{JdbcUtil.free(rs, pst, coona);}//执行后Jdbc中的
	            a=rs;
	            return a;
	    }
	public int getRs(){
   		return a;
   	}
}
