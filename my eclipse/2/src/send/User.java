package send;

public class User {
private String id;
private String accept;
public String getAccept() {
	int a=123;
	accept=accept+a;
	return accept;
}
public void setAccept(String accept) {
	this.accept = accept;
}
public String getSend() {
	return send;
}
public void setSend(String send) {
	this.send = send;
}
public String getNeirong() {
	return neirong;
}
public void setNeirong(String neirong) {
	this.neirong = neirong;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
private String send;
private String neirong;
}
