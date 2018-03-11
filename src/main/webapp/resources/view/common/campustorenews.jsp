<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 
		request.getServerPort() + path + "/";	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻-CampuStore</title>
<link rel="stylesheet" type="text/css" href="resources/css/commonmodel.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/footer.css"/>
<style type="text/css">
	.author{
		position: absolute;
		width: 300px;
		height: 450px;
		top: 10px;
		right: 20px;
		background:#ff00ff;
		z-index: 9;
	}
	.author img{
		width: 100%;
		height: 100%;
	}
</style>

</head>
<body>
	<div class="head">
		<div class="head-con">
			<div class="head-logo">
					<a href="resources/view/homepage.jsp"><img alt="CampuStore Logo" src="resources/view//cs-logo.jpg"></a>
			</div>
			<div class="head-text">
				CampuStore新闻
			</div>
		</div>
	</div>
	<div class="body">
		<div class="body-con">
			<p>
				CampuStore发展历程：
			</p>
			<p>
				项目确定时间：2016 年 12 月
			</p>
			<p style="text-indent: 4em">|</p>
			<p style="text-indent: 4em">|</p>
			<p>
				项目框架设计时间：2016 年 12 月，设计者：陆俊强
			</p>
			<p style="text-indent: 4em">|</p>
			<p style="text-indent: 4em">|</p>
			<p>
				项目开发：2017 年 1 月 --- 2017 年 5 月
			</p>
			<p style="text-indent: 4em">|</p>
			<p style="text-indent: 4em">|</p>
			<p>
				项目指导老师：高成慧 老师
			</p>
			
			<div class="author">
				<img alt="CampuStore Author" src="resources/img/campusstoreauthor.jpg">
			</div>			
		</div>
	</div>

	<%--网页底部 --%>
	<div class="footer">
		<div class="footer-con">
			<div class="footer-nav">
				<ul>
					<li>联系我们</li>
					<li>商业合作</li>
					<li>关于CampuStore</li>
				</ul>
			</div>
			<div class="footer-contact">
				<ul>
					<li>邮箱：flying9001@gmail.com</li>
				</ul>
			</div>
			<div class="footer-business">
				<ul>
					<li><a href="resources/view/common/campustorejoinin.jsp">>加入CampuStore</a></li>
					<li><a href="resources/view/common/campustorefriends.jsp">>成为CampuStore的合作伙伴</a></li>
					<li><a href="resources/view/common/campustoresponsor.jsp">>赞助CampuStore</a></li>
					<li><a href="resources/view/common/campustorebusiness.jsp">>在CampuStore上投放广告</a></li>
				</ul>
			</div>
			<div class="footer-about">
				<ul>
					<li><a href="resources/view/common/campustoreinfo.jsp">>CampuStore信息</a></li>
					<li><a href="resources/view/common/campustorenews.jsp">>CampuStore新闻</a></li>
					<li><a href="resources/view/common/campustoreintroduction.jsp">>CampuStore新手入门</a></li>
					<li><a href="resources/view/common/campustorerecruit.jsp">>CampuStore工作机会</a></li>
				</ul>
			</div>
			<div class="footer-info">
				<ul>
					<li>Copyright © 2017 CampuStore 版权所有</li>
					<li>强强科技  版权所有 粤ICP备170XXXXX号</li>
				</ul>
			</div>
		</div>
	</div>
		
		
</body>

</html>