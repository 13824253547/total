package jiaoshizixun;

import jiaoshizixun.User;

public class UserDao {
	 public String getsql_select(User usera){
	        String fabujigou=usera.getFabujigou();
	        String Time=usera.getTime();
	        String Nianji=usera.getNianji();
	        String Kemu=usera.getKemu();
	        String minMoney=usera.getMinmoney();
	        String maxMoney=usera.getMaxmoney();
	        String jinyan=usera.getJinyan();
	        String teachersex=usera.getTeachersex();
	        String sql_select="select * from zijian where 1=1 "; //sql语句
	        if (fabujigou!=null) {
				sql_select+="and  fabujigou like  '%"+fabujigou+"%'";
			}
	        if (teachersex!=null) {
				sql_select+="and teachersex like '%"+teachersex+"%'";
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
			 if (jinyan!=null) {
					sql_select+="and time like '%"+jinyan+"%'";
				}
			 if (sql_select!=null) {
					sql_select+="order by time desc";
				}
			return sql_select;
	    }
	 
}

