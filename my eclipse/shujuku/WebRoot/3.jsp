<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>菜鸟教程(runoob.com)</title> 
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
<script>
$(document).ready(function(){
  $("form").submit(function(){
	  var name=document.from1.FirstName.value;
   if(name.length<=0)alert("请输入机构名或地点!");
  });
});
</script>
</head>
<body>
<form name="from1" action="">
First name: 
<input type="text" name="FirstName" value="Mickey"><br>
Last name: 
<input type="text" name="LastName" value="Mouse"><br>
<input type="submit" value="提交">
</form> 

</body>
</html>