<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>教师主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/studentHomePage.css" />
	<link rel="stylesheet" type="text/css" href="css/teacherHomePage.css" />
	<link rel="stylesheet" type="text/css" href="css/studentHomepage3.css" />
    
  </head>
  
  <body style="background:url(image/studentBackground1.jpg) no-repeat; background-color:#eaf1fd;">
    <!-- 引入头部 -->
    <jsp:include page="/stu_jsp/stuHomeHead.jsp"/>
    <!-- 主体部分 -->
    <div class="body">
	    	<div class="body-head">
	        	<div class="body-head-left" ></div>
	            <div class="body-head-right" >
	            	<table>
	                	<tr>
	                    	<td align="right" style="width:80px;">欢迎你：</td>
	                    	
	                        <td>${tea.tea_Name }</td>
	                    </tr>
	                    <tr>
	                    	<td align="right" style="width:80px;">所在学院：</td>
	                        <td>${tea.tea_Insititute}</td>
	                    </tr>
	                    <tr>
	                    	<td align="left" style="width:112px;">最近登录时间：</td>
	                        <td>${nowDate }</td>
	                        <td align="right" style="width:200px; color:#FFF;"><a href="NoLoginServlet" style="color:#FFF;">退出登录</a><td>
	                    </tr>
	                </table>
	            </div>
	        </div>
	    	<div class="body-left">
	        	<ul>
	            	<li><a class="Home" href="tea_jsp/teaHomepage.jsp"><img src="image/iconfont-shouyeshouye.png" width="15px" height="15px">&nbsp;&nbsp;个人首页</a></li>
	                <li><a href="FindTeaInfoAction"><img src="image/iconfont-gerenxinxi.png" width="15px" height="15px">&nbsp;&nbsp;个人信息</a></li>
	                <li><a href="UpdateStuInfoServlet"><img src="image/iconfont-gerenxinxi.png" width="15px" height="15px">&nbsp;&nbsp;修改信息</a></li>
	                <li><a href="#"><img src="image/iconfont-fatie.png" width="15px" height="15px">&nbsp;&nbsp;我的博客</a></li>
	                <li><a href="TeaFindResAction"><img src="image/iconfont-weiduhuitie.png" width="15px" height="15px">&nbsp;&nbsp;相关资源</a></li>
	                <li><a href="#"><img src="image/iconfont-fatie.png" width="15px" height="15px">&nbsp;&nbsp;我的帖子</a></li>
	                <li><a href="#"><img src="image/iconfont-weiduhuitie.png" width="15px" height="15px">&nbsp;&nbsp;我的回帖</a></li>
	                <li><a href="teaHomework.jsp"><img src="image/iconfont-zuoyeicon.png" width="15px" height="15px">&nbsp;&nbsp;作业区</a></li>
	                <li><a href="#"><img src="image/iconfont-wenda.png" width="15px" height="15px">&nbsp;&nbsp;学生问答</a></li>
	                <li><a href="#"><img src="image/iconfont-kebiao.png" width="15px" height="15px">&nbsp;&nbsp;我的课表</a></li>
	                <li><a href="#"></a></li>
	                <li><a href="#" class="Home2"></a></li>               
	            </ul>
	        </div>
	        <div class="body-right" >
	        
  			</div>
    </div>
    <!--  引入尾部 -->
    <jsp:include page="/stu_jsp/stuHomeFooter.jsp"/>
  </body>
</html>
