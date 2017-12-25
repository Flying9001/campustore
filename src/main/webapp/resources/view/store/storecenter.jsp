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
<title>店铺管理中心-CampusStore</title>
<link rel="stylesheet" type="text/css" href="css/jquery.alertable.css">
<link rel="stylesheet" type="text/css" href="css/storeheader.css">
<link rel="stylesheet" type="text/css" href="css/store/storecenter.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
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
			<%--店铺 logo --%>
			<div class="body-ser-logo" id="body-ser-logo">
				<img id="<s:property value="#session.store.storelogo"/>" alt="Store Logo" src="">
			</div>
			<%--业务导航区 --%>
			<div class="body-ser-nav">
				<ul>
					<li id="ser-nav-storeinfo">我的店铺</li>
					<li id="ser-nav-commodity">商品</li>
					<li id="ser-nav-order">订单</li>
					<li id="ser-nav-employee">员工</li>
					<li id="ser-nav-data">数据</li>
					<li id="ser-nav-capiral">资金</li>
				</ul>			
			</div>
			<div class="body-ser-tips">
				业务&nbsp;&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;&nbsp;<span id="body-ser-tips"></span>
			</div>
			<%--业务主体区 --%>
			<%--业务主体 - 商铺信息 --%>
			<div class="body-ser-storeinfo" style="display:block;">
				<table>
					<tr>
						<td style="width: 180px; text-align: right;">店铺名称:</td>
						<td style=" width: 500px;" >
							<input type="text" disabled="disabled" id="store-sname" name="store.sname" value="<s:property value="#session.store.sname" />"/>
						</td>
						<td width="300px"><span style="color: red;" id="msg-store-sname" ></span></td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">店铺地址:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="store-address" name="store.address" value="<s:property value="#session.store.address" />"/>
						</td>
						<td width="300px"><span style="color: red;" id="msg-store-address" ></span></td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">店铺登录账号:</td>
						<td colspan="2" >
							<input type="text" disabled="disabled" id="store-account" name="store.account" value="<s:property value="#session.store.account" />"/>
						</td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">店铺电话:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="store-storetel" name="store.storetel" value="<s:property value="#session.store.storetel" />"/>
						</td>
						<td width="300px" ><span style="color: red;" id="msg-store-storetel"></span></td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">店铺状态:</td>
						<td colspan="2">
							<input type="text" disabled="disabled" id="store-sstatus" name="store.sstatus" value="<s:property value="#session.store.sstatus" />"/>
						</td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">店铺说明:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="store-tips" name="store.tips" value="<s:property value="#session.store.tips" />"/>
						</td>
						<td width="300px" ><span style="color: red;" id="msg-store-tips"></span></td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">店铺负责人:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="store-sowner" name="store.sowner" value="<s:property value="#session.store.sowner" />"/>
						</td>
						<td width="300px" ><span style="color: red;" id="msg-store-sowner"></span></td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">负责人电话:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="store-ownertel" name="store.ownertel" value="<s:property value="#session.store.ownertel" />"/>
						</td>
						<td width="300px" ><span style="color: red;" id="msg-store-ownertel"></span></td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">负责人身份证:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="store-ownerid" name="store.ownerid" value="<s:property value="#session.store.ownerid" />"/>
						</td>
						<td width="300px" ><span style="color: red;" id="msg-store-ownerid"></span></td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">负责人邮箱:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="store-owneremail" name="store.owneremail" value="<s:property value="#session.store.owneremail" />"/>
						</td>
						<td width="300px" ><span style="color: red;" id="msg-store-owneremail"></span> </td>
					</tr>
					<tr>
						<td style="width: 180px; text-align: right;">店铺注册时间:</td>
						<td colspan="2">
							<input type="text" disabled="disabled" id="store-registertime" name="store.registertime" value="<s:property value="#session.store.registertime" />"/>
						</td>
					</tr>
					<tr id="store-info-update">
							<td colspan="3" style="border: none; text-align: center;">
								<button type="button" >修改信息</button>
							</td>
						</tr>
						<tr id="store-info-updated">
							<td colspan="3" style="border: none; text-align: center;">
								<button type="button" id="store-info-save">保存修改</button>&nbsp;&nbsp;|&nbsp;&nbsp;
								<button type="button" id="store-info-cencel">取消</button>
							</td>
						</tr>				
				</table>			
			</div>
			<%--业务-商品 --%>
			<div class="body-ser-commodity">
				<%--功能区 --%>
				
				<%--店铺商品为空时显示 --%>
				
				<%--店铺商品列表 --%>
				<table>
					<tr class="body-ser-tbtitle">
						<td width="150px;">商品名</td>
						<td width="80px;">库存</td>
						<td width="80px;">月销量</td>
						<td width="80px;">上架</td>
						<td width="60px;">禁售</td>
						<td width="60px;">进价</td>
						<td width="60px;">售价</td>
						<td width="100px;">品牌</td>
						<td width="100px;">产地</td>
						<td>操作</td>
					</tr>
					
					<tr style="height: 60px;">
							<td colspan="10" align="center">
								<span id="storeCommodity-first"><button type="button" class="table-page" >[首页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeCommodity-pre"><button type="button" class="table-page">[上一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeCommodity-next"><button type="button" class="table-page">[下一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeCommodity-end"><button type="button" class="table-page">[尾页]</button></span>
							</td>
						</tr>
						<tr style="height: 40px;">
							<td colspan="10" align="left">
								当前页码：<span id="storeCommodity-pagenum"></span>&nbsp;&nbsp;|&nbsp;&nbsp;
								总页数：<span id="storeCommodity-pageCount"></span> &nbsp;&nbsp;|&nbsp;&nbsp;
								结果数量：<span id="storeCommodity-count"></span>
							</td>
						</tr>
				</table>
			
			</div>
			<%--业务-订单 --%>
			<div class="body-ser-order">
				<%--功能区 --%>
				
				<%--店铺订单为空时显示 --%>
				
				<%--店铺商品列表 --%>
				<table>
					<tr class="body-ser-tbtitle">
						<td width="150px;">商品名</td>
						<td width="120px;">购买者</td>
						<td width="80px;">价格</td>
						<td width="80px;">数量</td>
						<td width="80px;">总金额</td>
						<td width="90px;">支付方式</td>
						<td width="150px;">购买时间</td>
						<td width="80px;">订单状态</td>
						<td>操作</td>
					</tr>
					
					<tr style="height: 60px;">
							<td colspan="10" align="center">
								<span id="storeOrder-first"><button type="button" class="table-page" >[首页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeOrder-pre"><button type="button" class="table-page">[上一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeOrder-next"><button type="button" class="table-page">[下一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeOrder-end"><button type="button" class="table-page">[尾页]</button></span>
							</td>
						</tr>
						<tr style="height: 40px;">
							<td colspan="10" align="left">
								当前页码：<span id="storeOrder-pagenum"></span>&nbsp;&nbsp;|&nbsp;&nbsp;
								总页数：<span id="storeOrder-pageCount"></span> &nbsp;&nbsp;|&nbsp;&nbsp;
								结果数量：<span id="storeOrder-count"></span>
							</td>
						</tr>
				</table>
			
			</div>
			<%--业务-员工 --%>
			<div class="body-ser-employee">
				<%--功能区 --%>
				
				<%--店铺员工为空时显示 --%>
				
				<%--员工列表 --%>
				<table>
					<tr class="body-ser-tbtitle">
						<td width="90px;">姓名</td>
						<td width="50px;">性别</td>
						<td width="50px;">年龄</td>
						<td width="120px;">手机号</td>
						<td width="180px;">身份证</td>
						<td width="70px;">等级</td>
						<td width="200px;">地址</td>
						<td width="120px;">最后登录</td>
						<td>操作</td>
					</tr>
					
					<tr style="height: 60px;">
							<td colspan="10" align="center">
								<span id="storeEmployee-first"><button type="button" class="table-page" >[首页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeEmployee-pre"><button type="button" class="table-page">[上一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeEmployee-next"><button type="button" class="table-page">[下一页]</button>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
								<span id="storeEmployee-end"><button type="button" class="table-page">[尾页]</button></span>
							</td>
						</tr>
						<tr style="height: 40px;">
							<td colspan="10" align="left">
								当前页码：<span id="storeEmployee-pagenum"></span>&nbsp;&nbsp;|&nbsp;&nbsp;
								总页数：<span id="storeEmployee-pageCount"></span> &nbsp;&nbsp;|&nbsp;&nbsp;
								结果数量：<span id="storeEmployee-count"></span>
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
	<%--js --%>
	<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="js/jquery.alertable.js"></script>
	<script type="text/javascript" src="js/storeheader.js"></script>
	<script type="text/javascript" src="js/store/storecenter.js"></script>
</body>
</html>