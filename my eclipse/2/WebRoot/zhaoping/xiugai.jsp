<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>My JSP 'dogeren2.jsp' starting page</title>
  </head>
  <%
		String a = (String) session.getAttribute("name");
	    String b=request.getParameter("id");
	%>
  <body>
   <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="alert alert-dismissable alert-warning">
				 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4>
					注意!
				</h4> <strong>请在需要修改的字段输入对应的文本框!</strong>如不修改则不需要输入
			</div>
		</div>
	</div>
</div>

						<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<form action="dogerenxiugai.jsp" method="POST" class="jumbotron">
							<input type="hidden" name="user" value=<%=a%> /> 
							<input type="hidden" name="id" value=<%=b%> /> 
													<div class="form-group">
								<label for="fabujigou">发布机构/家教地点</label><input type="text"
									maxlength="30" placeholder="请输入您所代表的机构名称或家教地点"
									class="form-control" name="fabujigou" id="fabujigou" />
							</div>

							<div class="form-group">
								<label for="nianji">年级</label><input type="text" maxlength="30"
									placeholder="请输入学生的所在年级" class="form-control" name="nianji"
									id="nianji" />
							</div>

							<div class="form-group">
								<label for="kemu">科目</label><input type="text" maxlength="30"
									placeholder="请输入学生的所需教导的科目" class="form-control" name="kemu"
									id="kemu" />
							</div>

							<div class="form-group">
								<label for="time">辅导时间</label><input type="text" maxlength="40"
									placeholder="请输入星期X，可输入多个" class="form-control" name="time"
									id="time" />
							</div>

							<div class="form-group">
								<label for="student">学生情况</label>
								<textarea class="form-control" placeholder="请对学生的详细情况进行补充"
									maxlength="100" name="student" id="student" rows="4" cols="90"></textarea>
							</div>

							<div class="form-group">
								<label for="yaoqiu">应聘要求</label>
								<textarea class="form-control" placeholder="请对教师要求进行描述"
									maxlength="100" name="yaoqiu" id="yaoqiu" rows="4" cols="90"></textarea>
							</div>

							<div class="form-group">
								<label for="money">薪资*元/小时</label><input type="text"
									maxlength="30" class="form-control" name="money" id="money" />
							</div>

							<div class="form-group">
								<label for="tele">联系方式</label><input type="text" maxlength="30"
									class="form-control" name="tele" id="tele" />
							</div>
							<button type="submit" class="btn btn-default" >发布</button>
						</form>
		</div>
	</div>
</div>
						
  </body>
</html>
