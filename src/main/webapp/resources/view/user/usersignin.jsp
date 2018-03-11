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
<script type="text/javascript" src="resources/js/jquery-1.11.3.js"></script>
<link href="resources/css/footer.css" type="text/css" charset="UTF-8" rel="stylesheet">
<link href="resources/css/user/usersignin.css" type="text/css" charset="UTF-8" rel="stylesheet">
<title>登录-CampusStore</title>
</head>
<body>
	<div class="head">
		<div class="head-con">
			<div class="head-nav">
				<div class="head-logo">
					<a href="resources/view/homepage.jsp"><img alt="CampusStore Logo" src="resources/img/cs-logo.jpg"></a>
				</div>
				<div class="head-text">欢迎登录 </div>
			</div>
		</div>
	</div>
	<form action="user/signin" method="post" >
	<div class="signin-body">
			<div class="body-background">
				<img alt="background" src="resources/img/bg-usersignin.jpg">
			</div>
		<div class="body-surface">
			<div class="body-con">
				<div class="body-signin-type">
					<ul>
						<li id="signin-mobile">扫码登录</li>
						<li id="signin-account">账号登录</li>
					</ul>
				</div>
				<div class="body-input-0">
					<a href="resources/view/common/campusstoremobile.jsp"><img alt="手机登录二维码" title="点击下载手机版CampuStore" src="resources/img/usersignin-mobile.jpg"></a>
				</div>
				<div class="body-input-1">
					<ul>
						<li>
							<input type="text" id="input-account" name="userInfo.account"/>
							<div class="body-input-label" style="top:13px;">ID</div>
						</li>
						<li>
							<input type="password" id="input-passcode" name="userInfo.passcode"/>
							<div class="body-input-label" style="top:83px;">Key</div>
						</li>
						<li style="padding-left: 65px;">验证码:
							<input type="text" id="input-checkcode" style=
							 "width: 100px;height: 30px; padding-left: 5px; margin: 0; line-height: 30px;"/>
							<input type="text" id="checkcode" style=
							 "width: 80px;height: 30px; padding-left: 5px; margin: 0; line-height: 30px;" disabled="disabled"/>
							<button type="button" id="fresh-checkcode">刷新</button>
						</li>
						<li><input type="submit" id="signin-submit" value="安全登录"/></li>
					</ul>
					<div class="message" id="message"></div>
				</div>
				<div class="body-signup">
					没有账号？<a href="resources/view/user/usersignup.jsp">立即注册</a>
				</div>				
			</div>
		</div>
	</div>
	</form>
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
					<li><a href="">>加入CampusStore</a></li>
					<li><a href="">>成为CampusStore的合作伙伴</a></li>
					<li><a href="">>赞助CampusStore</a></li>
					<li><a href="">>在CampusStore上投放广告</a></li>
				</ul>
			</div>
			<div class="footer-about">
				<ul>
					<li><a href="">>CampusStore信息</a></li>
					<li><a href="">>CampusStore新闻</a></li>
					<li><a href="">>CampusStore新手入门</a></li>
					<li><a href="">>CampusStore工作机会</a></li>
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
<script charset="utf-8" type="text/javascript" src="resources/js/user/usersignin.js"></script>
</html>