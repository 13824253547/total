<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<html>
  <head>
    <title>远算结果</title>
  </head>
  <body>

  <jsp:setProperty property="*" name="c"/>
  <p>调用函数的运算结果</p>
  <jsp:getProperty property="shuju1" name="c"/>
  <jsp:getProperty property="shuju2" name="c"/>
  <jsp:getProperty property="sum" name="c"/>
      </body>
</html>
