<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <h3> 这里是教学资源共享与师生交流平台的首页，欢迎您~~~ </h3>
   <form action="UserLoginAction" method="post">
   <input type="text" name="userId" placeholder=" 请输入用户名" style="width:265px; height:40px; border:1px solid rgba(187,221,243,1.00); border-radius:2px;" /><br><br>
   <input type="password" name="userPwd" placeholder=" 请输入密码" style="width:265px; height:40px; border:1px solid rgba(187,221,243,1.00); border-radius:2px;" /><br><br><br>
   <p style="float:left;"><input type="checkbox" name="still" />下次自动登录</p><a href="#" style="float:right">忘记密码</a><br><br>
 <input type="submit" value="登录" style="width:80px; height:40px; border:1px solid #3CA1E9; border-radius:3px; background:#3CA1E9" />
 <input type="reset" value="重置" style="width:80px; height:40px; border:1px solid #3CA1E9; border-radius:3px; background:#3CA1E9" />
 </form>
  </body>
</html>
