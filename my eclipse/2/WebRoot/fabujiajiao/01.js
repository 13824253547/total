    function validate(){
    var fabujigou=document.from1.fabujigou.value;
    var money=document.from1.money.value;
    var tele=document.from1.tele.value;
      if(fabujigou.length<=0)alert("请输入机构名或地点!");
      else if(money.length<=0)alert("请输入您所期待的薪资!");
      else if(tele.length<=0)alert("请输入您的联系方式!");
      else document.form1.submit(); 
       }