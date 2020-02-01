$(document).ready(function(){
  $("form").submit(function(){
	  var name=document.from1.FirstName.value;
   if(name.length<=0)alert("请输入机构名或地点!");
  });
});