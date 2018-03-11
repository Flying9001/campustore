<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 
		request.getServerPort() + path + "/";	
%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/jquery-1.11.3.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/header.css">
<link rel="stylesheet" type="text/css" href="resources/css/footer.css">
<link rel="stylesheet" type="text/css" href="resources/css/homepage.css">
<title>CampuStore</title>
</head>
<body>
	<%--导航栏 --%>
	<div class="head">
		<div class="head-nav">
				<ul>
					<li id="SIGNINFLAG" ><a href="">首页</a></li>
					<li class="head-mobile" ><a href="">手机版CampuStore</a></li>
					<li id="nav-li-1"><a href="">个人中心 ></a></li>
					<li id="nav-li-2"><a href="">登录/注册 ></a></li>
					<li id="nav-li-3"><a href="">关于我们 ></a></li>
				</ul>
				<div id="nav-box-1" class="hidden-nav hidden-nav-center">
					<ul>
						<li><a href="">我的订单</a></li>
						<li><a href="">我的购物车</a></li>
						<li><a href="">个人信息</a></li>
					</ul>
				</div>
				<div id="nav-box-2" class="hidden-nav hidden-nav-login">
					<ul>
						<li><a href="">登录</a></li>
						<li><a href="">注册</a></li>
					</ul>
				</div>
				<div id="nav-box-3" class="hidden-nav hidden-nav-about">
					<ul>
						<li><a href="">关于CampuStore</a></li>
						<li><a href="">联系我们</a></li>
					</ul>
				</div>
		</div>	
	</div>
	<%-- 滚动导航栏 --%>
	<div class="scrolltop">
			<a href="resuources/view/homepage.jsp"><img alt="CampuStore" src="resources/img/cs-scrolltop.jpg"></a>
			<form id="scroll-form" action="" method="get" >
				<div class="scrolltop-input">
					<input type="text" id="scrolltop-input"/>
				</div>
				<div class="scrolltop-select">
					<select>
						<option>商品</option>
						<option>店铺</option>
					</select>
				</div>
				<div class="scrolltop-btn">
					<button type="submit">搜索</button>
				</div>
			</form>
			<div class="scrolltop-category">分类</div>
			<div class="scrolltop-more">
				<ul >
					<li><a href="javascript:void(0)">休闲零食</a></li>
					<li><a href="javascript:void(0)">糖果</a></li>
					<li><a href="javascript:void(0)">糕点</a></li>
					<li><a href="javascript:void(0)">饼干</a></li>
					<li><a href="javascript:void(0)">保健食品</a></li>
					<li><a href="javascript:void(0)">方便面</a></li>
					<li><a href="javascript:void(0)">速食品</a></li>
					<li><a href="javascript:void(0)">饮料</a></li>
					<li><a href="javascript:void(0)">冲饮</a></li>
					<li><a href="javascript:void(0)">酒类</a></li>
					<li><a href="javascript:void(0)">奶制品</a></li>
					<li><a href="javascript:void(0)">洗化卫浴</a></li>
					<li><a href="javascript:void(0)">厨房调料</a></li>
					<li><a href="javascript:void(0)">干货</a></li>
					<li><a href="javascript:void(0)">腊味</a></li>
					<li><a href="javascript:void(0)">米面粮油</a></li>
				</ul>
			</div>
	</div>
	<%-- 搜索栏 --%>
	<div class="body-search">
		<div class="body-search-con">
			<div class="body-home-pic">
				<a id="body-home-logo" href="resources/view/homepage.jsp"> </a>
			</div>
			<form id="homepage-form" action="" method="get" >
				<div class="body-search-input">
					<input type="text" id="body-search-input" >
				</div>
				<div class="body-search-btn">
					<button id="body-search-btn" type="submit">搜&nbsp;&nbsp;&nbsp;索</button>
				</div>
			</form>
			<div class="body-search-qrcode">
				<a href="resources/view/common/campustoremobile.jsp">手机版<img alt="手机版CampuStore" src="resources/img/qrcode-w.jpg"></a>
			</div>
			<div class="body-qrcode-close">×</div>
		</div>
	</div>
	<%-- 页面导航栏 --%>
	<div class="body-nav">
		<div class="body-nav-item">
			<ul>
				<li ><a class="body-nav-home" id="body-nav-home" href="resources/view/homepage.jsp">首页</a></li>
				<li><a href="javascript:void(0)">休闲食品</a></li>
				<li><a href="javascript:void(0)">饮料</a></li>
				<li><a href="javascript:void(0)">奶制品</a></li>
				<li><a href="javascript:void(0)">干货</a></li>
				<li><a href="javascript:void(0)">方便面</a></li>
				<li><a href="javascript:void(0)">糕点</a></li>
				<li><a href="javascript:void(0)">速食品</a></li>
				<li><a id="body-nav-more" href="">更多 ></a></li>
			</ul>
			<div class="body-nav-more">
				<ul>
					<li><a href="javascript:void(0)">糖果</a></li>
					<li><a href="javascript:void(0)">饼干</a></li>
					<li><a href="javascript:void(0)">保健食品</a></li>
					<li><a href="javascript:void(0)">腊味</a></li>
					<li><a href="javascript:void(0)">奶制品</a></li>
					<li><a href="javascript:void(0)">冲饮</a></li>
					<li><a href="javascript:void(0)">酒类</a></li>
					<li><a href="javascript:void(0)">米面粮油</a></li>
					<li><a href="javascript:void(0)">厨房调料</a></li>
				</ul>
			</div>
		</div>
	</div>
	<%-- 页面广告区 --%>
	<div class="body-ad">
		<div class="body-ad-con">
			<ul class="body-ad-slider">
				<li><a href="javascript:void(0)"><img title="热卖品" alt="热卖品" src="resources/img/homead1.png"></a></li>
				<li><a href="javascript:void(0)"><img title="热卖品" alt="热卖品" src="resources/img/homead2.png"></a></li>
				<li><a href="javascript:void(0)"><img title="热卖品" alt="热卖品" src="resources/img/homead3.png"></a></li>
				<li><a href="javascript:void(0)"><img title="热卖品" alt="热卖品" src="resources/img/homead4.png"></a></li>
			</ul>
			<a class="ad-slider-pre" id="ad-slider-pre" href="javascript:void(0)"></a>
			<a class="ad-slider-next" id="ad-slider-next" href="javascript:void(0)"></a>
			<ul class="body-ad-slider-num">
				<li>1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
			</ul>
			<div class="body-info">
				<div class="body-info-headbg">
					<div class="body-info-head">
						<a href="javascript:void(0)" style="background-color: #afeeee;"><img alt="用户头像" title="点击进入个人中心" src="resources/img/headmodel1.jpg"></a>
					</div>
					<p class="body-info-name" id="body-info-name">Hi!</p>
				</div>
				<div class="body-login">
					<ul>
						<li><a href="javascript:void(0)">登录</a></li>
						<li><a href="javascript:void(0)">注册</a></li>
						<li><a href="resources/view/store/storeregister.jsp">开店</a></li>
					</ul>
				</div>
				<div class="announcement-a">
					<ul>
						<li><a href="javascript:void(0)">公告</a></li>
						<li><a href="javascript:void(0)">促销</a></li>
					</ul>
				</div>
				<div class="announcement-cont">
					<ul>
						<li><a href="resources/view/common/campustorenews_publish.jsp" title="CampuStore的上线发布会">CampuStore的上线发布会</a></li>
						<li><a href="resources/view/common/campustorenews_ceo.jsp" title="强老板成为CampuStore的CEO">强老板成为CampuStore的CEO</a></li>
						<li><a href="resources/view/common/campustorenews_firstuniversity.jsp" title="湖北文理学院成为第一个CampuStore的试点高校">
							湖北文理学院成为第一个CampuStore的试点高校</a></li>
						<li><a href="resources/view/common/campustoreintroduction.jsp" title="CampuStore新手指南">CampuStore新手指南</a></li>
						<li><a href="resources/view/common/campustoreinfo.jsp" title="关于CampuStore">关于CampuStore</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="body-sales">
		<ul>
			<li>
				<div class="body-sales-up">
					<a href="" ><img alt="休闲零食" src=""></a>
				</div>
				<div class="body-sales-down">
					休闲零食:薯片\瓜子\干果<br>
					&nbsp;&nbsp;&nbsp;&nbsp;膨化食品\熟食\果冻\辣条
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="糖果" src=""></a>
				</div>
				<div class="body-sales-down">
					糖果:糖\巧克力\口香糖\润喉糖<br>
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="糕点" src=""></a>
				</div>
				<div class="body-sales-down">
					糕点:萨琪玛\麻花\面包<br>
					&nbsp;&nbsp;&nbsp;&nbsp;面包\饼子\蛋卷\锅巴\粽子
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="饼干" src=""></a>
				</div>
				<div class="body-sales-down">
					饼干:苏打\曲奇\威化饼干<br>
					&nbsp;&nbsp;&nbsp;&nbsp;夹心\消化\甜味\咸味饼干
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href="" ><img alt="保健食品" src=""></a>
				</div>
				<div class="body-sales-down">
					保健食品:麦片\芝麻糊\豆奶粉<br>
					&nbsp;&nbsp;&nbsp;&nbsp;粥类\蜂蜜\营养品
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="方便面" src=""></a>
				</div>
				<div class="body-sales-down">
					方便面:杯面\桶装面\袋装面\<br>
					&nbsp;&nbsp;&nbsp;&nbsp;炒面\米粉类
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="速食品" src=""></a>
				</div>
				<div class="body-sales-down">
					速食品:粥类罐头\蘑菇罐头\肉类罐头<br>
					&nbsp;&nbsp;&nbsp;&nbsp;水产罐头\水果罐头
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="饮料" src=""></a>
				</div>
				<div class="body-sales-down">
					饮料:饮用水\碳酸\运动\茶饮料<br>
					&nbsp;&nbsp;&nbsp;&nbsp;果汁\醋\咖啡\牛奶\其他饮料
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="冲饮" src=""></a>
				</div>
				<div class="body-sales-down">
					冲饮:茶叶\茶包\奶茶\咖啡\其他冲剂
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="酒类" src=""></a>
				</div>
				<div class="body-sales-down">
					酒类:啤酒\白酒\葡萄酒<br>
					&nbsp;&nbsp;&nbsp;&nbsp;洋酒\鸡尾酒\滋补养生酒
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="奶制品" src=""></a>
				</div>
				<div class="body-sales-down">
					奶制品:液态奶\酸奶\奶粉\炼奶\奶油<br>
				</div>
			</li>
			<li>
				<div class="body-sales-up">
					<a href=""  ><img alt="洗化卫浴" src=""></a>
				</div>
				<div class="body-sales-down">
					洗化卫浴:纸巾类\厨房用具\灭蚊杀虫<br>
					&nbsp;&nbsp;&nbsp;&nbsp;床上用品\针织品\日杂用品
				</div>
			</li>
		</ul>
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



	<div class="float-backtop">
		<a href="javascript:scroll(0,0)">返回顶部</a>	
	</div>
	<div class="float-history">
		<a href="">历史<br>记录</a>
	</div>
	<div class="float-order">
		<a href="">订<br>单</a>
	</div>
	<div class="float-shoppingcar">
		<a href="">购<br>物<br>车</a>
	</div>
	<div class="float-account">
		<a href=""><br><br><br><br>账<br>号</a>
	</div>
	<div class="float-right"></div>
</body>
<script type="text/javascript" src="resources/js/homepage.js"></script>
<script type="text/javascript" src="resources/js/header.js"></script>

</html>