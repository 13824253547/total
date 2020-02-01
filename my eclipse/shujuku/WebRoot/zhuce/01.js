    function validate(){
    var name=document.from1.username.value;
    var pwd=document.from1.password.value;
    var pwd1=document.from1.password2.value;
    var email=document.from1.Email1.value;
    var accept=document.from1.accept.checked;
    var tele=document.from1.tele.value;
      if(name.length<=0)alert("用户名不能为空!");
      else if(tele.length<=0)alert("手机号不能为空");
       else if(email.length<=0)alert("邮箱不能为空")
      else if(pwd.length<6)alert("密码长度必须大于等于6! ");
      else if(pwd!=pwd1)alert("两次密码不一致!");
      else if(!reg2.test(email))alert("邮件格格式式不正确!");
      else if(accept==false)alert("您需要仔细阅读并同意接受用户使用协议! ");
      else document.form1.submit(); 
       }