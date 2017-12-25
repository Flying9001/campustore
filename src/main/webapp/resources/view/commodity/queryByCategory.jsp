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
<title>分类查询-CampusStore</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/header.js"></script>
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/commodity/queryByCategory.css">
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
	<%-- 滚动导航栏 --%>
	<div class="scrolltop">
			<a href="homepage.jsp"><img alt="Campusstore" src="image/cs-scrolltop.jpg"></a>
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
					<li><a href="">休闲零食</a></li>
					<li><a href="">糖果</a></li>
					<li><a href="">糕点</a></li>
					<li><a href="">饼干</a></li>
					<li><a href="">保健食品</a></li>
					<li><a href="">方便面</a></li>
					<li><a href="">速食品</a></li>
					<li><a href="">饮料</a></li>
					<li><a href="">冲饮</a></li>
					<li><a href="">酒类</a></li>
					<li><a href="">奶制品</a></li>
					<li><a href="">洗化卫浴</a></li>
					<li><a href="">厨房调料</a></li>
					<li><a href="">干货</a></li>
					<li><a href="">腊味</a></li>
					<li><a href="">米面粮油</a></li>
				</ul>
			</div>
	</div>
	<%-- 搜索栏 --%>
	<div class="body-search">
		<div class="body-search-con">
			<div class="body-home-pic">
				<a id="body-home-logo" href="homepage.jsp"></a>
			</div>
			<form id="homepage-form" action="" method="get" >
				<div class="body-search-input">
					<input type="text" id="body-search-input">
				</div>
				<div class="body-search-btn">
					<button id="body-search-btn" type="submit">搜&nbsp;&nbsp;&nbsp;索</button>
				</div>
			</form>
			<div class="body-search-qrcode">
				<a href="view/common/campusstoremobile.jsp">手机版<img alt="手机版CampusStore" src="image/qrcode-w.jpg"></a>
			</div>
			<div class="body-qrcode-close">×</div>
		</div>
	</div>
		
	<%-- 主体 --%>
	<div class="body-con">
		<div class="body-commodity" id="body-commodity">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr style="height: 40px;">
					<td width="150">商品图片</td>
					<td width="200">名称</td>
					<td width="350">描述</td>
					<td width="140">价格(￥)</td>
					<td width="180">月销量(份)</td>
					<td width="180">库存(份)</td>
				</tr>
				<s:iterator value="commodityList" id="id">
					<tr>
						<td><a href="commodity/queryOne?commodity.id=<s:property value="#id.id"/>&page.pagenum=0&page.limitnum=6&page.order=40">
							<img alt="pic" id="<s:property value="#id.picture1"/>" src="">
						</a></td>
						<td>
							<a href="commodity/queryOne?commodity.id=<s:property value="#id.id"/>&page.pagenum=0&page.limitnum=6&page.order=40">
								<s:property value="#id.cname" />
							</a>
						</td>
						<td>
							<font style="font-size: 20px;color: #4b0082;">
								<s:property value="#id.details" />
							</font><br><br>
							<s:property value="#id.brand"/>&nbsp;&nbsp;|&nbsp;&nbsp;
							<s:property value="#id.proplace"/>
						</td>
						<td style="font-size: 24px; color: #ff00ff; ">
							￥<s:property value="#id.priceout" />
						</td>
						<td style="color: #F10180; ">
							「销」<s:property value="#id.sales" />&nbsp;&nbsp;(份/月)
						</td>
						<td >
							「存」<s:property value="#id.stockcount" />&nbsp;&nbsp;(份)
						</td>
					</tr>
				</s:iterator>
				<tr style="height: 60px;">
					<td colspan="6" align="center">
						<a href="commodity/queryByCategory?page.pagenum=0&page.limitnum=<s:property value="page.limitnum"/>&page.order=<s:property value="page.order"/>&commodity.cid=<s:property value="commodityList[0].cid"/>">
							[首页]</a> &nbsp;&nbsp;|&nbsp;&nbsp;
						<s:if test="page.pagenum > 0">
							<a href="commodity/queryByCategory?page.pagenum=<s:property value="page.pagenum - 1"/>&page.limitnum=<s:property value="page.limitnum"/>&page.order=<s:property value="page.order"/>&commodity.cid=<s:property value="commodityList[0].cid"/>">
								[上一页]</a> &nbsp;&nbsp;|&nbsp;&nbsp;
						</s:if>
						
						<s:if test="page.count % page.limitnum == 0">
							<s:set var="pagecount" value="page.count/page.limitnum"/>
						</s:if>
						<s:elseif test="page.count % page.limitnum > 0">
							<s:set var="pagecount" value="page.count/page.limitnum + 1"/>
						</s:elseif>
						
						<s:if test="page.pagenum < (#pagecount-1)">
							<a href="commodity/queryByCategory?page.pagenum=<s:property value="page.pagenum + 1"/>&page.limitnum=<s:property value="page.limitnum"/>&page.order=<s:property value="page.order"/>&commodity.cid=<s:property value="commodityList[0].cid"/>">
								[下一页]</a> &nbsp;&nbsp;|&nbsp;&nbsp;
						</s:if>
						<a href="commodity/queryByCategory?page.pagenum=<s:property value="#pagecount-1"/>&page.limitnum=<s:property value="page.limitnum"/>&page.order=<s:property value="page.order"/>&commodity.cid=<s:property value="commodityList[0].cid"/>">
							[末页]</a>
						
					</td>
				</tr>
				<tr style="height: 40px;">
					<td colspan="6" align="left">
						当前页码：<s:property value="page.pagenum + 1"/> &nbsp;&nbsp;|&nbsp;&nbsp;
						总页数：<s:property value="#pagecount"/> &nbsp;&nbsp;|&nbsp;&nbsp;
						结果数量：<s:property value="page.count"/>
					</td>
				</tr>
				
			</table>		
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
<script type="text/javascript">
$(document).ready(function() {
	/*解决图片显示问题*/
	var commodityBaseUrl = "resource/commodity/";
	var urls = $("#body-commodity img");
	for (var i = 0; i < urls.size(); i++) {
		if(urls[i].id != null && urls[i].id != '' && urls[i].id != "暂无图片"){
			urls[i].src = commodityBaseUrl + urls[i].id;
		}
	}
	
});

</script>
</html>