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
<title>新手rumen-CampusStore</title>
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
				CampusStore新手入门
			</div>
		</div>
	</div>
	<div class="body">
		<div class="body-con">
			<p>
				欢迎来到CampusStore!
			</p>			
			<p>
				点击这里进入CampusStore[主页]:
				<a style="color: #ff00ff; font-size: 28px; font-weight: 600;"
				 href="homepage.jsp" target="_blank">[点击进入]</a>
			</p>			
			<p>
				点击这里进入CampusStore[登录页面]:
				<a style="color: #ff00ff; font-size: 28px; font-weight: 600;" 
				href="view/user/usersignin.jsp" target="_blank">[点击进入]</a>
			</p>
			<p>
				点击这里进入CampusStore[注册页面]:
				<a style="color: #ff00ff; font-size: 28px; font-weight: 600;" 
				href="view/user/usersignup.jsp" target="_blank">[点击进入]</a>
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