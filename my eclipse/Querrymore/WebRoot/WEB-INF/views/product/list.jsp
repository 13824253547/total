<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		input{
			border-radius: 7px;
			padding-left: 5px;
		}
		table{
			margin-top: 10px;
		}
	
	</style>

  </head>
  
  <body>
    <h2>商品信息管理</h2>
    <form action="/Querrymore/product" method="post" style="border: 1px solid black; padding: 20px; border-radius: 9px; width: 70%; background-color: #00FFFF;">
    	<label>名称：</label><input type="text" name="pname" value="${op.prodeuctName}">&nbsp;&nbsp;
    	<label>零售价：</label><input type="text" name="pricemin" value="${op.minPrice}">--<input type="text" name="pricemax" value="${op.maxPrice}">&nbsp;&nbsp;
    	<label>商品分类：</label>
    	<select name="select">
    		<c:forEach items="${dirlist}" var="dir">
    		<option value="${dir.id}" ${op.dir_id==dir.id? "selected='selected'":""}>${dir.dirName}</option>
    		</c:forEach>
    	</select>
    	<input type="submit" value="查询" style="height: 28px; width: 70px;">
    
    </form>
    
    <table  border="1" width="70%" cellspacing="0" cellpadding="0">
    	<tr style="background-color: orange">
    		<th>商品编号</th>
	         <th>商品名称</th>
	         <th>商品品牌</th>
	         <th>商品分类</th>
	         <th>供应商</th>
	         <th>零售价</th>
	         <th>成本价</th>
	         <th>折扣</th>
    	</tr>
    	
    	<c:forEach items="${list}" var="po" varStatus="vs">
    	<tr style="background-color: ${vs.count%2==0?'pink':''}">
    		<td>${po.id}</td>
	         <td>${po.productName}</td>
	         <td>${po.brand}</td>
	         <td>
	         	<c:choose>
		         <c:when test="${po.dir_id==2}">无线鼠标</c:when>
		         <c:when test="${po.dir_id==3}">有线鼠标</c:when>
		         <c:when test="${po.dir_id==4}">游戏鼠标</c:when>
	         	</c:choose>
	         </td>
	         <td>${po.supplier}</td>
	         <td>${po.salePrice}</td>
	         <td>${po.costPrice}</td>
	         <td>${po.cutoff}</td>
    	</tr>
    	</c:forEach>
    
    </table>
  </body>
</html>
