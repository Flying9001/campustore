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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/jquery.alertable.css">
<link rel="stylesheet" type="text/css" href="resources/css/footer.css">
</head>
<body>
	

	<h2>用户信息测试返回界面</h2>
	<h2>当前路径: <%=basePath %></h2>

	<ul>
		<li>id为${userInfo.id}的用户信息</li>
		<li>- - -</li>
		<li>昵称: ${userInfo.nickname}</li>
		<li>帐号: ${userInfo.account}</li>
		<li>手机号: ${userInfo.phone}</li>
		<li>姓名: ${userInfo.uname}</li>
		<li>注册时间: ${userInfo.registertime}</li>
		<li>帐号状态: ${userInfo.ustatus}</li>
		<li>积分: ${userInfo.score}</li>
		<li>地址: ${userInfo.address}</li>
		<li>性别: ${userInfo.gender}</li>
		<li>年龄: ${userInfo.age}</li>
		<li>学校: ${userInfo.university}</li>
		<li>学院: ${userInfo.college}</li>
		<li>班级: ${userInfo.classes}</li>
		<li>学号: ${userInfo.stuid}</li>
		<li>QQ: ${userInfo.qqnum}</li>
		<li>微信: ${userInfo.wechat}</li>
		<li>邮箱: ${userInfo.email}</li>
		<li>个性签名: ${userInfo.tips}</li>
	</ul>

		

	<%--网页底部 --%>	
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
					<li><a href="resources/view/common/campusstorejoinin.jsp">>加入CampusStore</a></li>
					<li><a href="resources/view/common/campusstorefriends.jsp">>成为CampusStore的合作伙伴</a></li>
					<li><a href="resources/view/common/campusstoresponsor.jsp">>赞助CampusStore</a></li>
					<li><a href="resources/view/common/campusstorebusiness.jsp">>在CampusStore上投放广告</a></li>
				</ul>
			</div>
			<div class="footer-about">
				<ul>
					<li><a href="resources/view/common/campusstoreinfo.jsp">>CampusStore信息</a></li>
					<li><a href="resources/view/common/campusstorenews.jsp">>CampusStore新闻</a></li>
					<li><a href="resources/view/common/campusstoreintroduction.jsp">>CampusStore新手入门</a></li>
					<li><a href="resources/view/common/campusstorerecruit.jsp">>CampusStore工作机会</a></li>
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
	
	
	<script type="text/javascript" src="resources/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="resources/js/jquery.alertable.js"></script>
	
</body>
</html>