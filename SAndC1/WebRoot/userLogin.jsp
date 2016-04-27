<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="css/userLogin.css" />
<link rel="stylesheet" type="text/css" href="css/footpage.css" />
<link rel="stylesheet" type="text/css" href="css/loginpage.css" />
<script type="text/javascript" src="js/loginpage.js"></script>

</head>
<body style="background:url(image/bg1.jpg) no-repeat;">
	<div class="whole">
		<div class="head">
			<div class="logo">
				<img src="image/Logo-last.png" />
			</div>
		</div>
	</div>
	<div class="body"   >
		<div class="discript" style="background:url(image/dog.png) no-repeat;">
		</div>
			 
			 <div class="login">
			 	<div class="container">
			    	<div class="head1" id="head">
			        	<ul>
			            	<li class="select"><a href="#">学生登录</a></li>
			                <li><a href="#">教师登录</a></li>
			            </ul>
			        </div>
			        <div class="body1" id="body">
			        	<div class="stuBody">
			                <form action="StuLoginAction" method="post">
			                    <input type="text" name="stuId" placeholder=" 请输入学号" style="width:265px; height:40px; border:1px solid rgba(187,221,243,1.00); border-radius:2px;" /><br><br>
			                    <input type="password" name="stuPwd" placeholder=" 请输入密码" style="width:265px; height:40px; border:1px solid rgba(187,221,243,1.00); border-radius:2px;" /><br><br><br>
			                    <p style="float:left;"><input type="checkbox" name="still" />下次自动登录</p><a href="#" style="float:right">忘记密码</a><br><br>
			                    <input type="submit" value="登录" style="width:180px; height:40px; border:1px solid #3CA1E9; border-radius:3px; background:#3CA1E9" />
			                </form>
			            </div>
			            <div class="teaBody">
			            	 <form action="TeaLoginAction" method="post">
			                    <input type="text" name="teaId" placeholder=" 请输入教工号" style="width:265px; height:40px; border:1px solid rgba(187,221,243,1.00); border-radius:2px;" /><br><br>
			                    <input type="password" name="teaPwd" placeholder=" 请输入密码" style="width:265px; height:40px; border:1px solid rgba(187,221,243,1.00); border-radius:2px;" /><br><br><br>
			                    <div style="float:left;"><input type="checkbox" name="still" />下次自动登录</div><a href="#" style="float:right">忘记密码</a><br><br>
			                    <input type="submit" value="登录" style="width:180px; height:40px; border:1px solid #3CA1E9; border-radius:3px; background:#3CA1E9" />
			                </form>
			            </div>
			        </div>
			    </div>
			 </div>
			 
		</div>
		<div class="footer222">
			<jsp:include page="foot.jsp" />
		</div>
</body>
</html>