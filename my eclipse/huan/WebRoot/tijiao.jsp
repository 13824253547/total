<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交</title>
</head>
<body>

<div class="container">

	<div class="row clearfix">
	
		<div class="col-md-12 column">
		
			<form role="form" method="post" action="charu.jsp">
				<div class="form-group">
					 <label for="xuehao">学号</label><input type="number" name="id" class="form-control" id="xuehao" />
				</div>
				
				<div class="form-group">
					 <label for="name">姓名</label><input type="text" name="name" class="form-control" id="name" />
				</div>
				
				
				
				<div class="form-group">
					 <label for="age">年龄</label><input type="text" name="age" class="form-control" id="age" />
				</div>
				
				<div class="form-group">
					 <label for="weight">体重</label><input type="text" name="weight"  class="form-control" id="weight" />
				</div>
				
				<div class="form-group">
					 <label for="hight">身高</label><input type="text" name="hight" class="form-control" id="hight" />
				</div>
				
				<div><tr>
				<td>请选择你的性别：</td>
				<td><input type="radio" name="sex" value="男" checked>男</td>
				<td><input type="radio" name="sex" value="女" >女</td></tr>
				</div>
				<br>	<br>	<br>	<br>	<br>
				<tr><td>
				<button type="reset"  class="btn btn-default">重置</button>
				<button type="submit"  class="btn btn-default">提交</button>
				</td></tr>
			</form>
			
		</div>
	</div>
</div>

</body>
</html>