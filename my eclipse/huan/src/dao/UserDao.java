package dao;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import dbc.JdbcUtil;
import vo.User;

public class UserDao {
public void add(User user)throws Exception{
	Connection conn=null;
    PreparedStatement ps=null;
	try{
			conn=JdbcUtil.getConnection();
			String sql="insert into user values(?,?,?)";
		    ps=(PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getSex());
		    ps.executeUpdate();
	}finally{JdbcUtil.free(null,ps, conn);}}
	
public void update(User user) throws Exception{
		Connection conn=null;
		PreparedStatement ps=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="update user set username=?,sex=?,where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getSex());
		    ps.executeUpdate();
		}finally{JdbcUtil.free(null,ps, conn);}
	}
	
	public void delete(String userId) throws Exception{
		Connection conn=null;
	    PreparedStatement ps=null;
		try {
			conn=JdbcUtil.getConnection();
			String sql="delets from user where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userId);
			ps.executeUpdate();
		} finally {
			JdbcUtil.free(null,ps, conn);
		}
	}
	
	public User findUserById(String userId)throws Exception{
		Connection conn=null;
	    PreparedStatement ps=null;
	    ResultSet rs=null;
	    User user=null;
		try {
			conn=JdbcUtil.getConnection();
			String sql="select*from user where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userId);
			rs=ps.executeQuery();
			if(rs.next()){
				user=new User();
				user.setUserid(rs.getString(1));
				user.setUsername(rs.getString(2));
				user.setSex(rs.getString(3));
			}
		} finally {JdbcUtil.free(null,ps, conn);}
		return user;
		}
		
		public List<User>QueryAll()throws Exception{
			Connection conn=null;
		    PreparedStatement ps=null;
		    ResultSet rs=null;
		    List<User>userList=new ArrayList<User>();
		  try {
			  conn=JdbcUtil.getConnection();
		    	String sql="select*from user";
		    	ps=conn.prepareStatement(sql);
		    	rs=ps.executeQuery();
		    	while(rs.next()){
		    		User user=new User();
		    		user.setUserid(rs.getString(1));
		    		user.setUserid(rs.getString(2));
		    		user.setSex(rs.getString(3));
		    		userList.add(user);
		    	}
		} finally {
			JdbcUtil.free(rs, ps, conn);
		}
		  return userList;
		
 }
}
