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
<title>商品详情-CampusStore</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<link rel="stylesheet" type="text/css" href="css/header.css"/>
<link rel="stylesheet" type="text/css" href="css/footer.css"/>
<link rel="stylesheet" type="text/css" href="css/commodity/queryOne.css"/>

</head>
<body>
	<%--导航栏 --%>
	<div class="head">
		<div class="head-nav">
				<ul>
					<li id="SIGNINFLAG" value="<s:property value="#session.SIGNIN_FLAG"/>"><a href="">首页</a></li>
					<li class="head-mobile" ><a href="">手机版CampusStore</a></li>
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
						<li><a href="">关于CampusStore</a></li>
						<li><a href="">联系我们</a></li>
					</ul>
				</div>
		</div>	
	</div>
	
	<%--网页主体-up --%>	
	<div class="body-up">
		<div class="body-up-con">
			<div class="body-logo">
				<a href="homepage.jsp"><img alt="CampusStore Logo" src="image/cs-logo.jpg"></a>
			</div>
			<div class="body-storeinfo">
				<ul>
					<li>店名：<s:property value="store.sname"/></li>
					<li>地址：<s:property value="store.address"/></li>
					<li>电话：<s:property value="store.storetel"/></li>
				</ul>
			</div>
			<div class="body-storeimg" id="body-storeimg">
				<img id="<s:property value="store.storelogo" />" alt="Store Logo" src="">
			</div>
		</div>
	</div>
	<div class="body-down">
		<div class="body-down-con">
			<div class="body-commodityimg-up" id="body-commodityimg-up">
				<img alt="Commodity Pic Big" src="">
			</div>
			<div class="body-commodityimg-down" id="body-commodityimg-down">
				<ul>
					<li >
						<img id="<s:property value="commodity.picture1"/>" alt="Commodity Pic 1" src="">
					</li>
					<li >
						<img id="<s:property value="commodity.picture2"/>" alt="Commodity Pic 2" src="">
					</li>
					<li >
						<img id="<s:property value="commodity.picture3"/>" alt="Commodity Pic 3" src="">
					</li>
				</ul>
			</div>
			<div class="body-commodity-info">
				<div class="body-commodity-name">
					<s:property value="commodity.name" />
					<span id="commodityId" style="display:none;"><s:property value="commodity.id" /></span>
					<span id="storeId" style="display:none;"><s:property value="commodity.stoid" /></span>
				</div>
				
				<div class="body-commodity-details">
					<s:property value="commodity.details" />
				</div>
				
				<div class="body-commodity-price">
					<div class="body-commodity-price-tag">
						售价：
					</div>
					<div class="body-commodity-price-num">
						￥<s:property value="commodity.priceout" />
					</div>
				</div>
				
				<div class="body-commodity-stock">
					月销量：
					<font style="font-size: 24px; color: #ff00ff;">
						<span id="commodity-sales"><s:property value="commodity.sales" /></span>
					</font>
						(份)&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
					库存：
					<font style="font-size: 24px; color: #ff00ff;">
						<span id="commodity-stockcount"><s:property value="commodity.stockcount" /></span>
					</font>
					(份)
				</div>
				
				<div class="body-commodity-count">
					购买数量：
					<button type="button" id="commodity-sub"> &lt; </button>
					<input type="text" id="buy-count" onkeyup="this.value=this.value.replace(/\D/g,'')" 
							onpaste="this.value=this.value.replace(/\D/g,'')" value="1" />
					<button type="button" id="commodity-add"> &gt; </button>
					 个 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
					支付方式：
					<select id="payment">
						<option>请选择支付方式</option>
						<option>现金</option>
						<option>微信</option>
						<option>支付宝</option>
					</select>
				</div>
				<div class="operation-msg"></div>
				<div class="body-commodity-operation">
					<ul>
						<li><button type="button" id="purchase">立即下单</button>
						<li><button type="button" id="conllect">加入购物车</button>
					</ul>
				</div>
			
			</div>
			<div class="body-store-recommend">
				店内推荐
			</div>
			<div class="body-store-recommend-details" id="body-store-recommend-details">
				<ul>
					<s:iterator value="commodityList" id="id">
						<li>
							<div class="commodity-details-up">
								<a href="commodity/queryOne?commodity.id=<s:property value="#id.id"/>&commodity.stoid=<s:property value="#id.stoid"/>&page.pagenum=0&page.limitnum=6&page.order=40">
									<img id="<s:property value="#id.picture1"/>" alt="pic" src="">
								</a>
							</div>
							<div class="commodity-details-down">
								<a href="commodity/queryOne?commodity.id=<s:property value="#id.id"/>&commodity.stoid=<s:property value="#id.stoid"/>&page.pagenum=0&page.limitnum=6&page.order=40">
									<s:property value="#id.cname" />&nbsp;&nbsp;|&nbsp;&nbsp;
									价格:￥<s:property value="#id.priceout" />&nbsp;&nbsp;|&nbsp;&nbsp;
									月销量：<s:property value="#id.sales" /><br>
									<s:property value="#id.details" />
								</a>
							</div>
						</li>
					</s:iterator>
				</ul>
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
<script type="text/javascript" src="js/header.js"></script>
<script type="text/javascript" src="js/commodity/queryOne.js"></script>
</html>