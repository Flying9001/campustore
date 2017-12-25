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
<title>个人中心-CampusStore</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<link href="css/user/usercenter.css" rel="stylesheet">
<link href="css/footer.css" rel="stylesheet">

</head>
<body>
	<div class="head">
		<div class="head-con">
			<ul>
				<li><a href="user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.id=<s:property value="#session.userInfo.id"/>">个人中心</a></li>
				<li><a href="homepage.jsp">CampusStore主页</a></li>
				<li><span id="user-setting">账号设置</span></li>
			</ul>
		</div>
	</div>	
	<%--页面主体 --%>
	<div class="usercenter-body">
		<%--设置区 --%>
		<div class="user-setting"  style="display: none;">
			<%--CampusStore Logo--%>
			<div class="campusstore-logo">
				<a href="homepage.jsp"><img alt="CampusStore Logo" src="image/cs-logo.jpg"></a>
			</div>
			<%--设置-功能导航 --%>
			<div class="setting-nav">
				<ul>
					<li><span id="setting-passcode-update">修改密码</span></li>
					<li><span id="setting-passcode-find">找回密码</span></li>
					<li><span id="setting-address">地址管理</span></li>
					<li><span id="setting-phone">手机绑定</span></li>
					<li><span id="setting-exit">退出账号</span></li>
				</ul>
			</div>
			<%--设置-功能区--%>
			<%--设置-警告--%>
			<div class="setting-common">
				<div class="setting-warn">
					<img alt="Setting warn" src="image/warn-model.jpg">
					<div class="setting-warn-text">
						<h2>此部分的功能模块即将上线，敬请期待....</h2>
					</div>
				</div>
			</div>
		</div>
		<%--业务区 --%>		
		<div class="body-con">
			<div class="body-userinfo">
				<div class="body-userhead" id="body-userhead">
					<img id="<s:property value="#session.userInfo.headportrait"/>" alt="用户头像" title="用户头像" src=""/>
				</div>
				<div class="body-useraccount" id="body-useraccount" >
					<s:property value="#session.userInfo.account"/>			
				</div>
			</div>
			<div class="body-userser-nav" style="top: 260px;">
				<ul>
					<li><span id="btn-user-order">我的订单</span></li>
					<li><span id="btn-user-shoppingCar">我的购物车</span></li>
					<li><span id="btn-user-info">个人信息</span></li>
					<li><span id="btn-user-history">历史记录</span></li>
				</ul>
			</div>
			<div class="body-userser-con">
				<%--主要信息区 --%>
				<div class="body-userser-maininfo">
					<table>
						<tr class="body-userser-maininfo-up">
							<td colspan="3">&nbsp;&nbsp;Weclome to CampusStore</td>
						</tr>
						<tr class="body-userser-maininfo-down">
							<td width="300px;">
								Account:<span id="sussionNickname"><s:property value="#session.userInfo.nickname"/></span>
								(<s:property value="#session.userInfo.account"/>)
							</td>
							<td width="350px;">
								Address:<span id="sessionAddress"><s:property value="#session.userInfo.address"/></span>
								</td>
							<td>
								Phone:<span id="sessionPhone"><s:property value="#session.userInfo.phone"/></span>
							</td>
						</tr>
					</table>
				</div>
				<%--订单区 --%>
				<div class="body-userser-order" style="display: block;">
					<ul>
						<li><a href="user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.id=<s:property value="#session.userInfo.id"/>">全部订单</a></li>
						<li><a href="javascript:void(0)">待付款</a></li>
						<li><a href="javascript:void(0)">待发货</a></li>
						<li><a href="javascript:void(0)">待接收</a></li>
						<li><a href="javascript:void(0)">待评价</a></li>
						<li><a href="javascript:void(0)">分阶段</a></li>
					</ul>
					<table style="top:50px; ">
						<tr class="body-userser-tbtitle">
							<td width="400px;">宝贝</td>
							<td width="100px;">单价</td>
							<td width="100px;">数量</td>
							<td width="100px;">金额</td>
							<td width="150px;">交易状态</td>
							<td>操作</td>
						</tr>
						<s:iterator value="orderList" id="id" status="status">
							<tr >
								<td><a href="commodity/queryOne?commodity.id=<s:property value="#id.cid"/>&page.pagenum=0&page.limitnum=6&page.order=40">
									<s:property value="%{commodityList[#status.index].cname}"/>
								</a></td>
								<td style="color: #ff00ff;">￥<s:property value="%{commodityList[#status.index].priceout}"/></td>
								<td><s:property value="#id.ccount"/></td>
								<td style="color: #ff00ff;">￥<s:property value="%{#id.ccount * commodityList[#status.index].priceout}"/></td>
								<td ><s:property value="#id.ifpay"/></td>
								<td id="commodity-<s:property value="#id.id"/>">
									<span id="pay-operation-<s:property value="#id.id"/>"><a href="user/orderToPay?order.id=<s:property value="#id.id"/>">付款 &nbsp;&nbsp;|&nbsp;&nbsp; </a></span>
									<span id="del-operate-<s:property value="#id.id"/>"><a href="user/delOneOrder?order.id=<s:property value="#id.id"/>">删除</a></span>
								</td>
							</tr>
						</s:iterator>
						<tr style="height: 60px;">
							<td colspan="6" align="center">
								<a href="user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.id=<s:property value="#session.userInfo.id"/>">
									[首页]</a> &nbsp;&nbsp;|&nbsp;&nbsp;
								<s:if test="page.pagenum > 0">
									<a href="user/usercenter?page.pagenum=<s:property value="page.pagenum-1" />&page.limitnum=<s:property value="page.limitnum"/>&userInfo.id=<s:property value="#session.userInfo.id"/>">
										[上一页]</a> &nbsp;&nbsp;|&nbsp;&nbsp;
								</s:if>
								
								<s:if test="page.count % page.limitnum == 0">
									<s:set var="pagecount" value="page.count/page.limitnum"/>
								</s:if>
								<s:elseif test="page.count % page.limitnum > 0">
									<s:set var="pagecount" value="page.count/page.limitnum + 1"/>
								</s:elseif>
								
								<s:if test="page.pagenum < (#pagecount-1)">
									<a href="user/usercenter?page.pagenum=<s:property value="page.pagenum + 1"/>&page.limitnum=<s:property value="page.limitnum"/>&userInfo.id=<s:property value="#session.userInfo.id"/>">
										[下一页]</a> &nbsp;&nbsp;|&nbsp;&nbsp;
								</s:if>
								<a href="user/usercenter?page.pagenum=<s:property value="#pagecount-1"/>&page.limitnum=<s:property value="page.limitnum"/>&userInfo.id=<s:property value="#session.userInfo.id"/>">
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
				
				<%--购物车区 --%>
				<div class="body-userser-shoppingCar" >
					<%--购物车-为空时显示 --%>
					<div class="shoppingcar-null">
						<img alt="shoppingCar" src="image/shoppingcar-model.png">
						<div class="shoppingcar-null-text">
							<h2>购物车空空如也....</h2>
							<h3>去<a href="homepage.jsp">[CampusStore首页]</a>看看</h3>
							<h3>商品都在<a href="user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.id=<s:property value="#session.userInfo.id"/>">[我的订单]</a>里</h3>
						</div>
					</div>
					<%--购物车-列表 --%>
					<table >
						<tr class="body-userser-tbtitle">
							<td width="400px;">宝贝</td>
							<td width="150px;">单价</td>
							<td width="150px;">数量</td>
							<td width="150px;">金额</td>
							<td>操作</td>
						</tr>
						<tr style="height: 60px;">
							<td colspan="5" align="center">
								<span id="shoppingCar-first"><button type="button" class="table-page" >[首页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="shoppingCar-pre"><button type="button" class="table-page">[上一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="shoppingCar-next"><button type="button" class="table-page">[下一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="shoppingCar-end"><button type="button" class="table-page">[尾页]</button></span>
							</td>
						</tr>
						<tr style="height: 40px;">
							<td colspan="5" align="left">
								当前页码：<span id="shoppingCar-pagenum"></span>&nbsp;&nbsp;|&nbsp;&nbsp;
								总页数：<span id="shoppingCar-pageCount"></span> &nbsp;&nbsp;|&nbsp;&nbsp;
								结果数量：<span id="shoppingCar-count"></span>
							</td>
						</tr>
					</table>
				</div>
				
				<%--个人信息区 --%>
				<div class="body-userser-info">
					<table >
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;"><font style="color: red;">*</font>昵称:</td>
							<td width="450px" align="left" style="border: none;"><input disabled="disabled" type="text" id="user-nickname" value="<s:property value="#session.userInfo.nickname" />"/></td>
							<td width="300px" align="left" style="border: none; color: red;" id="msg-user-nickname" ></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;"><font style="color: red;">*</font>账号:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-account" value="<s:property value="#session.userInfo.account" />"/></td>
						</tr>
						<tr style="display: none"><td><input type="text" id="user-id" value="<s:property value="#session.userInfo.id" />"/></td></tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;"><font style="color: red;">*</font>姓名:</td>
							<td width="450px" align="left" style="border: none;"><input disabled="disabled" type="text" id="user-uname" value="<s:property value="#session.userInfo.uname" />"/></td>
							<td width="300px" align="left" style="border: none; color: red;" id="msg-user-uname" ></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;"><font style="color: red;">*</font>手机号:</td>
							<td width="450px" align="left" style="border: none;"><input disabled="disabled" type="text" id="user-phone" value="<s:property value="#session.userInfo.phone" />"/></td>
							<td width="300px" align="left" style="border: none; color: red;" id="msg-user-phone" ></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;"><font style="color: red;">*</font>地址:</td>
							<td width="450px" align="left" style="border: none;"><input disabled="disabled" type="text" id="user-address" value="<s:property value="#session.userInfo.address" />"/></td>
							<td width="300px" align="left" style="border: none; color: red;" id="msg-user-address" ></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">邮箱:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-email" value="<s:property value="#session.userInfo.email" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">微信:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-weichat" value="<s:property value="#session.userInfo.weichat" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">QQ:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-qqnum" value="<s:property value="#session.userInfo.qqnum" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">性别:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-gender" value="<s:property value="#session.userInfo.gender" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">年龄:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-age" value="<s:property value="#session.userInfo.age" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">学校:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-university" value="<s:property value="#session.userInfo.university" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">学院:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-college" value="<s:property value="#session.userInfo.college" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">班级:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-classes" value="<s:property value="#session.userInfo.classes" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;overflow: hidden; text-overflow: ellipsis; ">个人签名:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-tips" value="<s:property value="#session.userInfo.tips" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle">
							<td width="250px" align="right" style="border: none;">注册时间:</td>
							<td width="750px" align="left" style="border: none;" colspan="2"><input disabled="disabled" type="text" id="user-registertime" value="<s:property value="#session.userInfo.registertime" />"/></td>
						</tr>
						<tr style="height: 5px;"></tr>
						<tr class="body-userser-tbtitle" id="user-info-update">
							<td width="1000px" colspan="3" align="center" style="border: none;">
								<button type="button" >修改信息</button>
							</td>
						</tr>
						<tr class="body-userser-tbtitle" id="user-info-updated">
							<td width="1000px" colspan="3" align="center" style="border: none;">
								<button type="button" id="user-info-save">保存修改</button>&nbsp;&nbsp;|&nbsp;&nbsp;
								<button type="button" id="user-info-cencel">取消</button>
							</td>
						</tr>
					
					</table>
				</div>
				
				<%--历史记录区 --%>
				<div class="body-userser-history" >
					<%--购物车-为空时显示 --%>
					<div class="history-null">
						<img alt="history" src="image/history-model.png">
						<div class="history-null-text">
							<h2>这家伙太懒了，什么也没留下....</h2>
							<h3>Let's go! 去<a href="homepage.jsp">[CampusStore首页]</a>买点东西</h3>
						</div>
					</div>
					<%--历史记录-列表 --%>
					<table >
						<tr class="body-userser-tbtitle">
							<td width="400px;">宝贝</td>
							<td width="150px;">价格</td>
							<td width="150px;">事件</td>
							<td width="150px;">时间</td>
							<td>操作</td>
						</tr>
						<tr style="height: 60px;">
							<td colspan="5" align="center">
								<span id="history-first"><button type="button" class="table-page" >[首页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="history-pre"><button type="button" class="table-page">[上一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="history-next"><button type="button" class="table-page">[下一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="history-end"><button type="button" class="table-page">[尾页]</button></span>
							</td>
						</tr>
						<tr style="height: 40px;">
							<td colspan="5" align="left">
								当前页码：<span id="history-pagenum"></span>&nbsp;&nbsp;|&nbsp;&nbsp;
								总页数：<span id="history-pageCount"></span> &nbsp;&nbsp;|&nbsp;&nbsp;
								结果数量：<span id="history-count"></span>
							</td>
						</tr>
					</table>
				</div>
				
				
			</div>
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
<script type="text/javascript" src="js/user/usercenter.js"></script>
</html>