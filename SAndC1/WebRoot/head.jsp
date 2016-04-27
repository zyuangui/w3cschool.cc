<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="wrap">
        <div class="time">
                    <span id=localtime></span>
                    <script type="text/javascript">
                        function showLocale(objD)
                        {
                            var str,colorhead,colorfoot;
                            var yy = objD.getYear();
                            if(yy<1900) yy = yy+1900;
                            var MM = objD.getMonth()+1;
                            if(MM<10) MM = '0' + MM;
                            var dd = objD.getDate();
                            if(dd<10) dd = '0' + dd;
                            var hh = objD.getHours();
                            var ww = objD.getDay();
                            if  ( ww==0 )  colorhead="<font color=\"#373737\">";
                            if  ( ww > 0 && ww < 6 )  colorhead="<font color=\"#373737\">";
                            if  ( ww==6 )  colorhead="<font color=\"#008000\">";
                            if  (ww==0)  ww="星期日";
                            if  (ww==1)  ww="星期一";
                            if  (ww==2)  ww="星期二";
                            if  (ww==3)  ww="星期三";
                            if  (ww==4)  ww="星期四";
                            if  (ww==5)  ww="星期五";
                            if  (ww==6)  ww="星期六";
                            if(hh<10) hh = '0' + hh;
                            var mm = objD.getMinutes();
                            if(mm<10) mm = '0' + mm;
                            var ss = objD.getSeconds();
                            if(ss<10) ss = '0' + ss;
    
                            colorfoot="</font>"
                            str = colorhead + yy + "-" + MM + "-" + dd + " "+ ww + hh + ":" + mm + ":" + ss + "  "  +                        colorfoot;
                            return(str);
                        }
                        function tick()
                        {
                            var today;
                            today = new Date();
                            document.getElementById("localtime").innerHTML = showLocale(today);
                            window.setTimeout("tick()", 1000);
                        }
                        tick();
                    </script>
            </div>      
        <div class="search"><input type="text" style="width:350px;height:36px; border:1px solid #138FDD;"      placeholder="找资源、找博客、找老师……"/> <input type="submit" value="搜索" style="width:50px;height:40px; background:#138FDD; color:#fff; border:1px solid #138FDD;"  /></div>
        <div class="head">
            <div class="logo"><img src="image/Logo-last.png" /></div>
            <div class="head1">
                <ul id="head1">
                        <li id="one" align="center"><a class="home" href="#">首&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                        <li id="two" align="center"><a href="#">论坛分享</a></li>
                        <li id="three" align="center"><a href="#">教师博客</a></li>
                        <li id="four" align="center"><a href="#">学习资源</a></li>
                        <li id="five" align="center"><a href="#">问答天地</a></li>
                        <li id="six" align="center"><a href="#">作业提交</a></li>  
                        <li id="seven" align="center" style="float:right;"><a class="loginBtn" href="userLogin.jsp">登录</a></li>
                </ul>
            </div> 
                   
        </div>