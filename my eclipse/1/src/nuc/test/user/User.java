package nuc.test.user;

public class User {
	 private String username;    //定义用户名
     private String password;    //定义密码
     private String type;        //定义类型
     private String  id;         //定义id名
     //set和get方法
      public String getUsername(){
   	   return username;
      }
      public void setUsername(String username){
   	   this.username=username;
      }
      public String getPassword(){
   	   return password;
      }
      public void setpassword(String password){
   	   this.password=password;
      }
      public String getType(){
   	   return type;
      }
      public void setType(String type){
   	   this.type=type;
      }
      public String getId(){
   	   return id;
      }
      public void setId(String id){
   	   this.id=id;
      }

}
