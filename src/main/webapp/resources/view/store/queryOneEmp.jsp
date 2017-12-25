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
<title>员工详情-商家-CampusStore</title>
<link rel="stylesheet" type="text/css" href="css/jquery.alertable.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/storeheader.css">
<link rel="stylesheet" type="text/css" href="css/store/queryOneEmp.css">

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
			<%--员工-tips--%>
			<div class="emp-tips">员工详细信息</div>
			<%--商品信息 --%>
			<div class="emp-info">
				<table>
					<tr>
						<td style="width: 280px; text-align: right;">姓名:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-ename" name="employee.ename" value="<s:property value="employee.ename" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-ename" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">电话:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-phone" name="employee.phone" value="<s:property value="employee.phone" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-phone" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">身份证:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-idcard" name="employee.idcard" value="<s:property value="employee.idcard" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-idcard" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">等级:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-grade" name="employee.grade" value="<s:property value="employee.grade" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-grade" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">性别:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-sex" name="employee.sex" value="<s:property value="employee.sex" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-sex" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">年龄:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-age" name="employee.age" value="<s:property value="employee.age" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-age" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">邮箱:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-email" name="employee.email" value="<s:property value="employee.email" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-email" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">注册时间:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-registertime" name="employee.registertime" value="<s:property value="employee.registertime" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-registertime" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">最近登录:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-lasttime" name="employee.lasttime" value="<s:property value="employee.lasttime" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-lasttime" ></span></td>
					</tr>
					<tr>
						<td style="width: 280px; text-align: right;">地址:</td>
						<td style=" width: 500px;">
							<input type="text" disabled="disabled" id="emp-address" name="employee.address" value="<s:property value="employee.address" />"/>
						</td>
						<td width="200px"><span style="color: red;" id="msg-emp-address" ></span></td>
					</tr>
					<tr id="store-emp-default">
						<td colspan="6" style="border: none; text-align: center;">
							<button type="button" id="store-emp-update">修改信息</button>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" id="store-emp-back">返回</button>
						</td>
					</tr>
					<tr id="store-emp-updated">
						<td colspan="6" style="border: none; text-align: center;">
							<button type="button" id="store-emp-save">保存</button>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" id="store-emp-cencel">取消</button>
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
	<script type="text/javascript" src="js/store/queryOneEmp.js"></script>
		
</body>
</html>