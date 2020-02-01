package zhuce;

public class User {
	 private String username;///用户名
	 private String password;//密码
     private String id;//邮箱
     private String tele;//电话
	    public User(){}

	    public String getUsername() {
	        return username;
	    }

	    public void setUsername(String username) {
	    	int a=123;
	    	username=username+a;
	        this.username = username;
	    }

	    public String getPassword() {
	        return password;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }
	   
	    public String gettele() {
	        return tele;
	    }

	    public void settele(String tele) {
	        this.tele = tele;
	    }

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}
	    
}


