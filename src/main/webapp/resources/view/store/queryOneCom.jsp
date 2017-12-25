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
<title>商品详情-商家-CampusStore</title>
<link rel="stylesheet" type="text/css" href="css/jquery.alertable.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/storeheader.css">
<link rel="stylesheet" type="text/css" href="css/store/queryOneCom.css">

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
			<%--商品-tips--%>
			<div class="com-tips">商品详细信息</div>
			<%--商品信息 --%>
			<div class="com-pic">
				<ul>
					<li><img alt="Picture1" id="<s:property value="commodity.picture1" />" src=""></li>
					<li><img alt="Picture2" id="<s:property value="commodity.picture2" />" src=""></li>
					<li><img alt="Picture3" id="<s:property value="commodity.picture3" />" src=""></li>
					<li><div id="com-pic-add">点击上传</div></li>
				</ul>
			</div>
			<div class="com-info">
				<table>
					<tr>
						<td style="width: 100px;">商品名:</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-cname" disabled="disabled" value="<s:property value="commodity.cname" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-cname" style="display: none;"></span></td>
						<td style="width: 100px;">上架状态:</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-cstatus" disabled="disabled" value="<s:property value="commodity.cstatus" />"/>
							<select id="select-com-cstatus" style="display: none;">
								<option>上架</option>
								<option>下架</option>
							</select>
						</td>
						<td style="width: 180px;"><span id="msg-com-cstatus" style="display: none;"></span></td>
					</tr>
					<tr>
						<td style="width: 100px;">商品大类:</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-category" disabled="disabled" value="<s:property value="commodity.cid" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-category" style="display: none;"></span></td>
						<td style="width: 100px;">商品小类:</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-scategory" disabled="disabled" value="<s:property value="commodity.scid" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-scategory" style="display: none;"></span></td>
					</tr>
					<tr>
						<td style="width: 100px;">进价(￥):</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-pricein" disabled="disabled" value="<s:property value="commodity.pricein" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-pricein" style="display: none;"></span></td>
						<td style="width: 100px;">售价(￥):</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-priceout" disabled="disabled" value="<s:property value="commodity.priceout" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-priceout" style="display: none;"></span></td>
					</tr>
					<tr>
						<td style="width: 100px;">库存:</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-stockcount" disabled="disabled" value="<s:property value="commodity.stockcount" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-stockcount" style="display: none;"></span></td>
						<td style="width: 100px;">月销量:</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-sales" disabled="disabled" value="<s:property value="commodity.sales" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-sales" style="display: none;"></span></td>
					</tr>
					<tr>
						<td style="width: 100px;">品牌:</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-brand" disabled="disabled" value="<s:property value="commodity.brand" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-brand" style="display: none;"></span></td>
						<td style="width: 100px;">产地:</td>
						<td style="width: 320px;">
							<input type="text" id="store-com-proplace" disabled="disabled" value="<s:property value="commodity.proplace" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-proplace" style="display: none;"></span></td>
					</tr>
					<tr>
						<td style="width: 100px;">描述:</td>
						<td style="width: 920px;" colspan="4">
							<input style="width: 910px;" type="text" id="store-com-details" disabled="disabled" value="<s:property value="commodity.details" />"/>
						</td>
						<td style="width: 180px;"><span id="msg-com-details" style="display: none;"></span></td>
					</tr>
					<tr id="store-com-default">
						<td colspan="6" style="border: none; text-align: center;">
							<button type="button" id="store-com-update">修改信息</button>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" id="store-com-back">返回</button>
						</td>
					</tr>
					<tr id="store-com-updated">
						<td colspan="6" style="border: none; text-align: center;">
							<button type="button" id="store-com-save">保存</button>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" id="store-com-cencel">取消</button>
						</td>
					</tr>
				</table>
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
	<script type="text/javascript" src="js/jquery.alertable.js"></script>
	<script type="text/javascript" src="js/storeheader.js"></script>
	<script type="text/javascript" src="js/store/queryOneCom.js"></script>
		
</body>
</html>