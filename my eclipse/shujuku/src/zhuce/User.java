package zhuce;

public class User {
	 private String username;///用户名
	    private String password;//密码
        private String Email;//邮箱
        private String tele;//电话
	    public User(){}

	    public String getUsername() {
	        return username;
	    }

	    public void setUsername(String username) {
	        this.username = username;
	    }

	    public String getPassword() {
	        return password;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }
	    public String getEmail() {
	        return Email;
	    }

	    public void setEmail(String Email) {
	        this.Email = Email;
	    }
	    
	    public String gettele() {
	        return tele;
	    }

	    public void settele(String tele) {
	        this.tele = tele;
	    }
	    
}
