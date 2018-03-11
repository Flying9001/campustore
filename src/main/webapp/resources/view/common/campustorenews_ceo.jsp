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
<title>CEO-CampuStore</title>
<link rel="stylesheet" type="text/css" href="resources/css/commonmodel.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/footer.css"/>
</head>
<body>
	<div class="head">
		<div class="head-con">
			<div class="head-logo">
					<a href="resources/view/homepage.jsp"><img alt="CampuStore Logo" src="resources/img/cs-logo.jpg"></a>
			</div>
			<div class="head-text">
				强老板成为CampuStore的CEO
			</div>
		</div>
	</div>
	<div class="body">
		<div class="body-con">
			<p>
				强老板，大名：陆俊强,CampuStore的创始人、CEO。CampuStore项目由他全程设计、开发。
				强老板是湖北文理学院 机械与汽车工程学院 机制1311班的一名学生，大学期间因为热爱编程，所以在计算机编程
				方面研究比较多，CampuStore作为其毕业设计，耗时 6 个月完成。从项目设计到项目开发，均由其一人完成。如今
				强老板担任 CampuStore 的 CEO 一职。希望他能带领 CampuStore 越走越远，越走越高！
			</p>
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