<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学习天地</title>
	
	<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->
	<link rel="stylesheet" type="text/css" href="css/homepage.css">
    <link rel="stylesheet" type="text/css" href="css/footpage.css">
    
    <script type="text/javascript" src="js/jquery-2.1.4.js"></script>
    <script type="text/javascript" src="js/jquery.1.10.2.js"></script>
    <script type="text/javascript" src="js/homepage.js"></script>
  </head>
  
  <body
  style="background:url(image/bg2.png) no-repeat;  background-color:#f5fbfe">
  <!--  主体内容部分 -->
    <div id="wrap">
	      <!-- 引入头部信息 -->
	      <jsp:include page="head.jsp"/>
	      
	     <!--  图片展示 -->
	     <div class="containerAll">
				<div id="container">
					<div id="list" style="left: -600px;">
						<img src="image/5.jpg" alt="1" width="400px" height="240px" />
						<img src="image/1.jpg" alt="1" width="400px" height="240px" />
						<img src="image/2.jpg" alt="2" width="400px" height="240px" /> 
						<img src="image/3.jpg" alt="3" width="400px" height="240px" /> 
						<img src="image/4.jpg" alt="4" width="400px" height="240px" />
						<img src="image/5.jpg" alt="5" width="400px" height="240px" />
						<img src="image/1.jpg" alt="5" width="400px" height="240px" />
					</div>
					<div id="buttons">
						<span index="1" class="on"></span> <span index="2"></span> 
						<span index="3"></span> <span index="4"></span> <span index="5"></span>
					</div>
					<a href="javascript:;" id="prev" class="arrow">&lt;</a> 
					<a href="javascript:;" id="next" class="arrow">&gt;</a>
				</div>
			</div>
			
			<!-- 精彩博客 -->
			<div class="blogs">
				<div class="tit">
					<div class="title">
						精彩博客
					</div>
					<div class="more">
						<a href="#">更多&gt;&gt;</a>
					</div>
				</div>
				<table border="0" width="400px">
					<tr>
						<td><a href="#">● &nbsp;&nbsp;以身体验，用心感悟</a>
						</td>
						<td style="text-align:right"><a href="#">黑色小精灵</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;爱生有度 </a>
						</td>
						<td style="text-align:right"><a href="#">黑色小精灵</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;总得有人擦亮星星</a>
						</td>
						<td style="text-align:right"><a href="#">yangxinliuxia</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;教育随笔2 </a>
						</td>
						<td style="text-align:right"><a href="#">maymayliu</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;平安夜的幸福泪水</a>
						</td>
						<td style="text-align:right"><a href="#">shanshan9166</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;让学生在自信中成长</a>
						</td>
						<td style="text-align:right"><a href="#">seven六月</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;领略别致的风景 </a>
						</td>
						<td style="text-align:right"><a href="#">陈智花</a>
						</td>
					</tr>
				</table>
			</div>
			
			<!-- 相关公告 -->
			<div class="notice">
			
				<div class="notice-head">
					<div class="notice-tit">相关公告</div>
					<div class="notice-more">
						<a href="#">更多&gt;&gt;</a>
					</div>
				</div>
				<ul>
					<li>期末临近，请同学们在停课后，认真投入学习之中</li>
					<li>期末临近，请同学们在停课后，认真投入学习之中</li>
					<li>期末临近，请同学们在停课后，认真投入学习之中</li>
					<li>期末临近，请同学们在停课后，认真投入学习之中</li>
					<li>期末临近，请同学们在停课后，认真投入学习之中</li>
					<li>期末临近，请同学们在停课后，认真投入学习之中</li>
				</ul>
				
			</div>
			
			<!-- 热帖榜 -->
			<div class="Forum">
				<div class="tit">
					<div class="title">
						热帖榜
					</div>
					<div class="more">
						<a href="#">更多&gt;&gt;</a>
					</div>
				</div>
				<table border="0" width="740px">
					<tr>
						<td><a href="#">●
								&nbsp;&nbsp;就算有一天真的梧桐解放军顺利上岸了，但是2200人闹事怎么办？</a>
						</td>
						<td style="text-align:right"><a href="#">台湾</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;孤山老妖写在12月26日，大陆一位伟人的生日感悟。 </a>
						</td>
						<td style="text-align:right"><a href="#">台湾</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;发了年终奖，来比较一下</a>
						</td>
						<td style="text-align:right"><a href="#">重庆</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;讨论：你有没有因拆迁发财的朋友？最近的拆迁赚了多少钱？
						</a>
						</td>
						<td style="text-align:right"><a href="#">台湾</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;我可爱的老爸快60了</a>
						</td>
						<td style="text-align:right"><a href="#">重庆</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;婚外情 双方都想结婚 怎么处理</a>
						</td>
						<td style="text-align:right"><a href="#">成都</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;领略别致的风景 </a>
						</td>
						<td style="text-align:right"><a href="#">江西</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;感动 平安夜的幸福泪水</a>
						</td>
						<td style="text-align:right"><a href="#">南昌</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;让学生在自信中成长</a>
						</td>
						<td style="text-align:right"><a href="#">seven六月</a>
						</td>
					</tr>
					<tr>
						<td><a href="#">● &nbsp;&nbsp;领略别致的风景 让我们回到那个年代，重温旧景 </a>
						</td>
						<td style="text-align:right"><a href="#">上饶</a>
						</td>
					</tr>
				</table>
			</div>
			
			<!-- 热门资源 -->
			<div class="resources">
				<div class="tit">
					<div class="title">
						资源链接
					</div>
					<div class="more">
						<a href="#">更多&gt;&gt;</a>
					</div>
				</div>
				<ul>
					<li><a href="">1、Java期末考试历年考题</a></li>
					<li><a href="">2、多媒体网络技术课程</a></li>
					<li><a href="">3、数学应用与科学</a></li>
					<li><a href="">4、有关张爱玲的小说</a></li>
					<li><a href="">5、生命与科学</a></li>
					<li><a href="">6、化学分析与化学应用</a></li>
				</ul>
			</div>
			
			<!-- 教师风采 -->
		    <div class="elegant">
				<div class="tit">
					<div class="title">
						教师风采
					</div>
					<div class="more">
						<a href="#">更多&gt;&gt;</a>
					</div>
				</div>
				<ul>
					<li><a href="">1、Java期末考试历年考题</a></li>
					<li><a href="">2、多媒体网络技术课程</a></li>
					<li><a href="">3、数学应用与科学</a></li>
					<li><a href="">4、有关张爱玲的小说</a></li>
					<li><a href="">5、生命与科学</a></li>
					<li><a href="">6、化学分析与化学应用</a></li>
				</ul>
			</div>
			
			<!-- 图书推荐 -->
			<div class="comment">
				<div class="tit">
					<div class="title">图书推荐</div>
					<div class="more">
						<a href="#">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="01">
					<img src="image/001.jpg" width="200px" height="200px" />
				</div>
				<ul>
					<li><a href="">1、龙族4奥丁之洲</a></li>
					<li><a href="">2、岛上书店</a></li>
					<li><a href="">3、解忧杂货店</a></li>
					<li><a href="">4、自控力</a></li>
					<li><a href="">5、摆渡人</a></li>
					<li><a href="">6、无声告白</a></li>
				</ul>
			</div>
			
		
    </div>
    
    <!-- 尾部 ---版权信息部分 -->
    <div class="footer333">
       <jsp:include page="foot.jsp"/>
    </div>
  </body>
</html>
