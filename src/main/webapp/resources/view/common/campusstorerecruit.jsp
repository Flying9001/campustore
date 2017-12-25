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
<title>工作机会-CampusStore</title>
<link rel="stylesheet" type="text/css" href="css/commonmodel.css"/>
<link rel="stylesheet" type="text/css" href="css/footer.css"/>
</head>
<body>
	<div class="head">
		<div class="head-con">
			<div class="head-logo">
					<a href="homepage.jsp"><img alt="CampusStore Logo" src="image/cs-logo.jpg"></a>
			</div>
			<div class="head-text">
				CampusStore招聘信息
			</div>
		</div>
	</div>
	<div class="body">
		<div class="body-con">
			<p style="text-indent: 0;">
				CampusStore招聘以下工作岗位：<br>
				1. java后台  2名<br>
				java后台要求：<br>
				(1)专科以上学历<br>
				(2)有至少半年的实际项目开发经验<br>
				(3)熟悉Struts2/Spring/Spring-MVC/Mybatis等后台框架<br>
				(4)熟练使用MySQL/Oracle数据库<br>
				(5)熟悉html/jsp/js/jquery/css等语言<br>

				2. web前端  1名<br>
				web前端要求：<br>
				(1)专科以上学历<br>
				(2)有至少半年的实际项目开发经验<br>
				(3)熟悉jquery/Bootstrp/ExtJS/Node.JS等web前端框架<br>
				(4)熟悉html/jsp/js/jquery/css/html5等语言<br>
				(5)熟悉 Ajax 操作<br>
				<a style="color: #ff00ff; font-size: 28px; font-weight: 600;" 
					href="view/common/campusstorejoinin.jsp">[申请加入]</a>		
			</p>
			
			
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