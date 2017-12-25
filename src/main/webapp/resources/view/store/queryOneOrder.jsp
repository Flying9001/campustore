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
<title>订单详情-商家-CampusStore</title>
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/storeheader.css">
<link rel="stylesheet" type="text/css" href="css/store/queryOneOrder.css">

</head>
<body>
	<%--头部导航 --%>
	<div class="head">
		<div class="head-con">
			<div class="head-homepage">
				<a href="homepage.jsp">CampusStore</a>
			</div>
			<div class="head-ownerinfo">
				<ul>
					<li id="head-ownerinfo">Hi!<s:property value="#session.store.account"/></li>
					<li id="head-ownerexit">退出</li>
				</ul>
			</div>
		</div>
	</div>
	<%--主体 --%>
	<div class="body">
		<div class="body-con">
			<%--订单-tips --%>
			<div class="order-tips">订单详情</div>
			<%--订单信息-商品 --%>
			<div class="order-com-details">
				<img alt="Commodity" id="<s:property value="#request.storeCommodity.picture1"/>" src="">
				<table>
					<tr>
						<td>
							商品名: <a href="commodity/queryOne?commodity.id=<s:property value="#request.storeCommodity.id"/>&page.pagenum=0&page.limitnum=6&page.order=40">
							<s:property value="#request.storeCommodity.cname"/></a>
						</td>
					</tr>
					<tr>
						<td>
							价格: <font style="color: #ff00ff;">￥<s:property value="#request.storeCommodity.priceout"/></font>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
							数量: <font style="color: #ff00ff;"><s:property value="#request.storeOrder.ccount"/></font>(份)
						</td>
					</tr>
					<tr>
						<td>
							品牌: <s:property value="#request.storeCommodity.brand"/>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
							产地: <s:property value="#request.storeCommodity.proplace"/>
						</td>
					</tr>
					<tr>
						<td>
							详情: <s:property value="#request.storeCommodity.details"/>
						</td>
					</tr>
				</table>
			</div>
			<%--订单信息-用户 --%>
			<div class="order-user-details">
				<img alt="User" id="<s:property value="#request.storeUser.headportrait" />" src="">
				<table>
					<tr>
						<td>
							昵称: <font style="color: #ff00ff;"><s:property value="#request.storeUser.nickname"/></font>
						</td>
					</tr>
					<tr>
						<td>
							手机: <font style="color: #ff00ff;"><s:property value="#request.storeUser.phone"/></font>
							『<font style="color: #ff00ff;"><s:property value="#request.storePay.pay"/></font>』
							支付状态:『<font style="color: #ff00ff;" id="order-ifpay"><s:property value="#request.storeOrder.ifpay"/></font>』
						</td>
					</tr>
					<tr>
						<td>
							地址: <s:property value="#request.storeUser.address"/>
						</td>
					</tr>
					<tr>
						<td>
							评价/留言: <s:property value="#request.storeOrder.remarks"/>
						</td>
					</tr>
				</table>
			</div>
			<%--返回 --%>
			<div class="back" id="back-to-center">
				返回店铺中心
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
	<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="js/storeheader.js"></script>
	<script type="text/javascript" src="js/store/queryOneOrder.js"></script>
</body>
</html>