<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="cn.edu.jxnu.entity.Resource"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>相关资源</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/studentHomePage.css" />
    <link rel="stylesheet" type="text/css" href="css/teaResource.css" />
    <link rel="stylesheet" type="text/css" href="css/studentHomepage3.css" />

  </head>
  
  <body>
    <jsp:include page="/stu_jsp/stuHomeHead.jsp"></jsp:include>
	<div class="body">

		<div class="body-left">
			<ul>
				<li><a href="tea_jsp/teaHomepage.jsp"><img
						src="image/iconfont-shouyeshouye.png" width="15px" height="15px">&nbsp;&nbsp;个人首页</a>
				</li>
				<li><a href="FindTeaInfoAction"><img
						src="image/iconfont-gerenxinxi.png" width="15px" height="15px">&nbsp;&nbsp;个人信息</a>
				</li>
				<li><a href="UpdateStuInfoServlet"><img
						src="image/iconfont-gerenxinxi.png" width="15px" height="15px">&nbsp;&nbsp;修改信息</a>
				</li>
				<li><a href="#"><img src="image/iconfont-fatie.png"
						width="15px" height="15px">&nbsp;&nbsp;我的博客</a>
				</li>
				<li><a class="Home" href="TeaFindResAction"><img
						src="image/iconfont-weiduhuitie.png" width="15px" height="15px">&nbsp;&nbsp;相关资源</a>
				</li>
				<li><a href="#"><img src="image/iconfont-fatie.png"
						width="15px" height="15px">&nbsp;&nbsp;我的帖子</a>
				</li>
				<li><a href="#"><img src="image/iconfont-weiduhuitie.png"
						width="15px" height="15px">&nbsp;&nbsp;我的回帖</a>
				</li>
				<li><a href="teaHomework.jsp"><img
						src="image/iconfont-zuoyeicon.png" width="15px" height="15px">&nbsp;&nbsp;作业区</a>
				</li>
				<li><a href="#"><img src="image/iconfont-wenda.png"
						width="15px" height="15px">&nbsp;&nbsp;学生问答</a>
				</li>
				<li><a href="#"><img src="image/iconfont-kebiao.png"
						width="15px" height="15px">&nbsp;&nbsp;我的课表</a>
				</li>
				<li><a href="#"></a>
				</li>
				<li><a href="#" class="Home2"></a>
				</li>
			</ul>
		</div>
		<div class="body-right">
			<div class="body-right1">
				<h2>资源列表</h2>
				<div class="upload">
				
				<s:form action="ResUploadAction" namespace="/" method="post" enctype="multipart/form-data">
                 <s:file name="resource" label="请选择文件"/>
                 <s:submit value="上传"/>
   				 </s:form>
   				
					<!-- <form action="UploadResourceServlet" method="post"
						enctype="multipart/form-data">
						<p>
							<strong>我要上传</strong>&nbsp;&nbsp;请选择资源：<input type="file"
								name="file"> <input type="submit" value="提交" id="submit">
						</p>
					</form> -->
				</div>
				<%-- <a href="StuPostServlet3?stuName=${stuName }">我要发帖</a> --%>
			</div>
        <hr>
			<div class="body-right2">
				<div class="body-right2-1">

					<table style="width:100%; ">
						<tr>
							<td
								style="width:300px; text-align:center; border:1px solid #D5d5d5;">资源名称</td>
							<td style="float:right;width:200px; border:1px solid #D5d5d5;">操作</td>
							<td style="float:right; width:200px; border:1px solid #D5d5d5;">上传时间</td>
							<td style="float:right;width:100px; border:1px solid #D5d5d5;">文件类型</td>
						</tr>

						<%
							ArrayList<Resource> resList = (ArrayList) request.getAttribute("resList");
						%>
						<%
							for (int i = 0; i < resList.size(); i++) {
												Resource res = resList.get(i);
						%>
						<tr>
							<td
								style="width:300px; text-align:left; border:1px solid #D5d5d5; "><%=res.getRes_Name()%></td>
							<td style="float:right; width:200px; border:1px solid #D5d5d5;"><a
								href="<%=path%>/ResDownloadAction?res_Id=<%=res.getRes_Id()%>">下载</a>
							</td>
							<td style="float:right; width:200px; border:1px solid #D5d5d5;"><%=res.getRes_UploadTime()%></td>
							<td style="float:right; width:100px; border:1px solid #D5d5d5;"><%=res.getRes_Type()%></td>
						</tr>
						<%
							}
						%>
					</table>
					

					<%-- <ul>
				   <li id="name">资源名称</li>
				   <li id="time">上传时间</li>
				   <li><s:property value="resourceFileName"/></li>
				   <li id="time1">${nowDate }</li> --%>
				   <%-- <li><img src="<s:property value='resourcePath'/>" width="200" height="200"/></li>
				   <li>${nowDate }</li> --%>
				</ul>
				
				
				<%-- 	<table style="width:100%; ">
						<tr>
							<td style="width:300px; height:20px; text-align:center; border:1px solid #D5d5d5;">资源名称</td>
							<td style="float:right;width:200px; border:1px solid #D5d5d5;">操作</td>
							<td style="float:right; width:200px; border:1px solid #D5d5d5;">发布时间</td>
							<td style="float:right;width:100px; border:1px solid #D5d5d5;">下载次数</td>
						</tr>
						<tr>
						  <td style="width:300px; text-align:left; border:1px solid #D5d5d5; "><s:property value="resourcePath"/></td>
						  <td style="float:right; width:200px; border:1px solid #D5d5d5;"></td>
						  <td style="float:right; width:200px; border:1px solid #D5d5d5;"></td>
						  <td style="float:right; width:200px; border:1px solid #D5d5d5;"></td>
						</tr>

						<%
						       
							ArrayList<Resource> resList = (ArrayList) request.getAttribute("resList"); 
						%>
						<%
							for (int i = 0; i < resList.size(); i++) {
								Resource res = resList.get(i);
						%>
						<tr>
							<td style="width:300px; text-align:left; border:1px solid #D5d5d5; "><%=res.getRes_Name()%></td>
							<td style="float:right; width:200px; border:1px solid #D5d5d5;"><a href="<%=path%>/DownloadResourceServlet?resId=<%=res.getRes_Id() %>">下载</a></td>
							<td style="float:right; width:200px; border:1px solid #D5d5d5;"><%=res.getRes_UploadTime()%></td>
							<td style="float:right; width:100px; border:1px solid #D5d5d5;"><%=res.getRes_DownloadNum()%></td>
						</tr>
						<%
							}
						%> 
					</table> --%>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../stu_jsp/stuHomeFooter.jsp"></jsp:include>
  </body>
</html>
