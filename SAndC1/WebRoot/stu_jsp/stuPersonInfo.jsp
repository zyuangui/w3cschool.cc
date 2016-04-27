<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/studentHomePage.css" />
    <link rel="stylesheet" type="text/css" href="css/stuPersonInfo1.css" />
    <link rel="stylesheet" type="text/css" href="css/studentHomepage3.css" />
    <!-- <script type="text/javascript" src="js/stuPersonInfo.js"></script> -->

	<script type="text/javascript">
		function $(id){
		return typeof id==='string'?document.getElementById(id):id;
	}
	
	window.onload=function(){
		//获取鼠标滑过或点击的标签和要切换的内容的元素
		var lis=$('body-left').getElementsByTagName('li'),
			divs=$('body-right').getElementsByTagName('div');
		//遍历head下的所有li
		for (var i = 0; i <2; i++) {
			lis[i].id=i;
			lis[i].onclick=function(){
				for(var j=0;j<2;j++){
					lis[j].className='';
					divs[j].style.display='none';
				}
				this.className='select';
				divs[this.id].style.display='block';
		    };
	    }
	};
	</script>

</head>

<body>
	<jsp:include page="/stu_jsp/stuHomeHead.jsp"></jsp:include>

	<div class="body">
		<div class="body-left" id="body-left" >
			<ul>
				<li class="select"><a id="info">基本资料</a>
				</li>
				<li id="pic"><a>我的头像</a>
				</li>
			</ul>
		</div>

		<div class="body-right" id="body-right">
			<div class="body-right1">
				<form action="" method="post">
					<table>
						<tr>
							<td>学号：</td>
							<td><input type="text" name="stuId" value="${stu.stu_Id }"/>
							</td>
						</tr>
						<tr>
							<td>姓名：</td>
							<td><input type="text" name="stuName" value="${stu.stu_Name }" />
							</td>
						</tr>
						<tr>
							<td>昵称：</td>
							<td><input type="text" name="stuNickname" value="${stu.stu_Nickname }" />
							</td>
						</tr>
						<tr>
							<td>性别：</td>
							<td><input type="text" name="stuSex" value="${stu.stu_Sex }" />
							</td>
						</tr>
						<tr>
							<td>密码：</td>
							<td><input type="text" name="stuPassword" value="${stu.stu_Password }" />
							</td>
						</tr>
						<tr>
							<td>学院：</td>
							<td><input type="text" name="stuInstitute" value="${stu.stu_Institute }" />
							</td>
						</tr>
						<tr>
							<td>班级：</td>
							<td><input type="text" name="stuClass" value="${stu.stu_Class }" />
							</td>
						</tr>
						
						<tr>
							<td>邮箱设置：</td>
							<td><input type="text" name="stuEmail" value="${stu.stu_Email }" />
							</td>
						</tr>
						<tr>
							<td>个性签名：</td>
							<td style="width:300px;height:100px;">
							<textarea name="aboutme" value="" style="width:300px; height:100px;">${stu.stu_Signature }</textarea>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="body-right1">
				<div class="portrait"></div>
				<div class="upload">
					<a href="#">上传头像</a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/stu_jsp/stuHomeFooter.jsp"></jsp:include>
  </body>
</html>
