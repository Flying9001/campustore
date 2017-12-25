<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 
		request.getServerPort() + path + "/";	
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻-CampusStore</title>
<link rel="stylesheet" type="text/css" href="css/commonmodel.css"/>
<link rel="stylesheet" type="text/css" href="css/footer.css"/>
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
					<a href="homepage.jsp"><img alt="CampusStore Logo" src="image/cs-logo.jpg"></a>
			</div>
			<div class="head-text">
				CampusStore新闻
			</div>
		</div>
	</div>
	<div class="body">
		<div class="body-con">
			<p>
				CampusStore发展历程：
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
				<img alt="CampusStore Author" src="image/campusstoreauthor.jpg">
			</div>			
		</div>
	</div>
	<%--网页尾部 --%>
	<div class="footer">
		<div class="footer-con">
			<div class="footer-nav">
				<ul>
					<li>联系我们</li>
					<li>商业合作</li>
					<li>关于CampusStore</li>
				</ul>
			</div>
			<div class="footer-contact">
				<ul>
					<li>邮箱：rede.lu.5945@gmail.com</li>
					<li>电话:18772102285</li>
				</ul>
			</div>
			<div class="footer-business">
				<ul>
					<li><a href="view/common/campusstorejoinin.jsp">>加入CampusStore</a></li>
					<li><a href="view/common/campusstorefriends.jsp">>成为CampusStore的合作伙伴</a></li>
					<li><a href="view/common/campusstoresponsor.jsp">>赞助CampusStore</a></li>
					<li><a href="view/common/campusstorebusiness.jsp">>在CampusStore上投放广告</a></li>
				</ul>
			</div>
			<div class="footer-about">
				<ul>
					<li><a href="view/common/campusstoreinfo.jsp">>CampusStore信息</a></li>
					<li><a href="view/common/campusstorenews.jsp">>CampusStore新闻</a></li>
					<li><a href="view/common/campusstoreintroduction.jsp">>CampusStore新手入门</a></li>
					<li><a href="view/common/campusstorerecruit.jsp">>CampusStore工作机会</a></li>
				</ul>
			</div>
			<div class="footer-info">
				<ul>
					<li>Copyright © 2017 CampusStore 版权所有</li>
					<li>强强科技  版权所有 粤ICP备170XXXXX号</li>
				</ul>
			</div>
		</div>
	</div>
		
		
</body>

</html>