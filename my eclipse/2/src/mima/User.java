package mima;

public class User {
	private String username;
	private String id;
	private String tele;

	public String getUsername() {
		int a=123;
		username=username+a;
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTele() {
		return tele;
	}

	public void setTele(String tele) {
		this.tele = tele;
	}

}
