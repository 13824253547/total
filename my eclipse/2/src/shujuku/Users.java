package shujuku;

public class Users {
	 private String username;///用户名
	    private String password;//密码

	    public Users(){}

	    public String getUsername() {
	    	int a=123;
	    	username=username+a;
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
}
