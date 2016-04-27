<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="cn.edu.jxnu.entity.User" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login-success.jsp' starting page</title>
    
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
    This is my JSP page. <br>
      <%=request.getSession().getAttribute("user") %>
    <hr>
    <% User user = (User)session.getAttribute("user");
       out.print("编号："+user.getUser_id());%><br><% 
       out.print("姓名："+user.getUser_name());%><br><%
       out.print("密码："+user.getUser_password());%><br><%
       out.print("年龄："+user.getUser_age());%><br><%
       out.print("性别："+user.getUser_sex());%><br><%
     %>
    <hr>
  </body>
</html>
