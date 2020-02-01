    function validate(){
    var password1=document.from1.password1.value;
    var password2=document.from1.password2.value;
    var password3=document.from1.password3.value;
      if(password1.length<=0)alert("请输入原密码!");
      else if(password2.length<=0)alert("请输入您的新密码!");
      else if(password2!=password3)alert("新密码不一致");
      else document.form1.submit(); 
       }