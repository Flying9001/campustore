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
<title>CEO-CampusStore</title>
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
				强老板成为CampusStore的CEO
			</div>
		</div>
	</div>
	<div class="body">
		<div class="body-con">
			<p>
				强老板，大名：陆俊强,CampusStore的创始人、CEO。CampusStore项目由他全程设计、开发。
				强老板是湖北文理学院 机械与汽车工程学院 机制1311班的一名学生，大学期间因为热爱编程，所以在计算机编程
				方面研究比较多，CampusStore作为其毕业设计，耗时 6 个月完成。从项目设计到项目开发，均由其一人完成。如今
				强老板担任 CampusStore 的 CEO 一职。希望他能带领 CampusStore 越走越远，越走越高！
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