package zijian;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import nuc.test.coon.UserCoon;

public class XiuGai {
	public String getsql_update(User usera) {
		String teachersex = usera.getTeachersex();// 教师性别
		String qidainianji=usera.getQidainianji();// 教导学生的年级
		String qidaikemu=usera.getQidaikemu();// 科目
		String teacher=usera.getTeacher();// 教师情况
		String yaoqiu=usera.getYaoqiu();// 家教活动区域
		String money=usera.getMoney();// 薪资区间/小时
		String tele=usera.getTele();// 联系方式
		String teachername=usera.getTeachername();// 教师姓名
		String time=usera.getTime();
		String jinyan=usera.getJinyan();
		String id=usera.getId();
		
		String sql_update="update  zijian set teachersex=?,qidainianji=?,qidaikemu=?,teacher=?,yaoqiu=?,money=?,tele=?,teachername=?,time=?,jinyan=? where id=?";
		String sql="select * from zijian where id='"+id+"'"; 
		
		UserCoon coon = new UserCoon(); //实例化UserCoon
		java.sql.Connection coona = coon.getCoon(); //获取getCoon
		
		try {
			PreparedStatement pst = coona.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			rs.next();
			String teachersex2 = rs.getString("teachersex");
			String qidainianji2=rs.getString("qidainianji");
			String qidaikemu2=rs.getString("qidaikemu");
			String teacher2=rs.getString("teacher");
			String yaoqiu2=rs.getString("yaoqiu");
			String money2=rs.getString("money");
			String tele2=rs.getString("tele");
			String teachername2=rs.getString("teachername");
			String time2=rs.getString("time");
			String jinyan2=rs.getString("jinyan");
	
			String teachersex3;
			String qidainianji3;
			String qidaikemu3;
			String teacher3;
			String yaoqiu3;
			String money3;
			String tele3;
			String teachername3;
			String time3;
			String jinyan3;
			
			if (rs!=null) {
				rs.close();
			}
			if (pst!=null) {
				pst.close();
			}
			
			if (teachersex != null) {
				teachersex3=teachersex;
				
			}else{
				teachersex3=teachersex2;
			}
			
			if(qidainianji!= null) {
				qidainianji3=qidainianji;
			}else {qidainianji3=qidainianji2;}
			
			if (qidaikemu != null) {
				qidaikemu3=qidaikemu;
			}else{qidaikemu3=qidaikemu2;}
			
			if (teacher != null) {
				teacher3=teacher;
			}else{teacher3=teacher2;}
			
			if (yaoqiu != null) {
				yaoqiu3=yaoqiu;
			}else{yaoqiu3=yaoqiu2;}
			
			if (money != null) {
				money3=money;
			}else{money3=money2;}
			
			if (tele != null) {
				tele3=tele;
			}else{ tele3=tele2;}
			
			if (teachername != null) {
			teachername3=teachername;
			}else{teachername3=teachername2;}
			
			if (time!= null) {
				time3=time;
			}else{time3=time2;}
			
			if (jinyan != null) {
				jinyan3=jinyan;
			}else{jinyan3=jinyan2;}
			PreparedStatement pstm = coona.prepareStatement(sql_update);
			pstm.setString(1,teachersex3);
			pstm.setString(2,qidainianji3);
			pstm.setString(3,qidaikemu3);
			pstm.setString(4,teacher3);
			pstm.setString(5,yaoqiu3);
			pstm.setString(6,money3);
			pstm.setString(7,tele3);
			pstm.setString(8,teachername3);
			pstm.setString(9,time3);
			pstm.setString(10,jinyan3);
			pstm.setString(11,id);
			if (pstm!=null) {
				pstm.close();
			}
			if (coona!=null) {
				coona.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return sql_update;
	}

}
