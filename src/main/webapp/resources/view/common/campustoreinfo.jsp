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
<title>关于CampuStore</title>
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
				CampuStore
			</div>
		</div>
	</div>
	<div class="body">
		<div class="body-con">
			<p>
CampuStore(校园零食铺)是一个基于校园的网购平台，为在校大学生解决购买生活用品以及零食的问题。
目前在校大学生购买商品（尤其是零食类）的主要渠道是通过网上，而从下单到零食送达学生们的手中至少
需要2-5天的快递时间。而且学生都购买的零食不能够亲自来辨别质量优劣，仅能够通过网站提供的图片来辨
识，零食的质量不能够得到保证，即使发现网购的零食质量不达标也不能及时的退换。现在CampuStore能够
很好的解决以上问题。CampuStore采用O2O(线上线下)的模式，首先CampuStore拥有自己的实体店，用户
(主要面向在校大学生)可以直接到实体店去选购商品，亲自验证商品的质量，这一点解决了网购商品的质量监
控难的问题；其次，当学生需要购买的商品的时候可以使用直接使用现金支付购买，也可以从网上CampuStore
平台上下单，网上下单除了支持网络支付以外同样支持现金支付；当没有时间到实体店购买的学生可以直接在
CampuStore平台上下单，下单成功默认立即派送，在校园范围内可以保证30分钟以内送达，这也就解决了传
统网购时间间隔长的问题。
				
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
					<li>关于CampuStore</li>
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