$(document).ready(function(){
	
	var signinFlag = $("#body-useraccount").text();
	var page;
	var pageCount;
	
	$(function(){
		showImages();
		resolveIfpay();
		orderOperation();
		$("#btn-user-order").addClass("mark-server-nav");
	});
	/*设置*/
	$("#user-setting").click(function(){
		$(".body-con").hide();
		$(".user-setting").show();
		$(".setting-warn").show();
	});
	
	/*查询我的订单操作*/
	$("#btn-user-order").click(function(){
		forwardToWebsite("user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.account=" + signinFlag);
	});
	
	/*查询购物车操作*/
	$("#btn-user-shoppingCar").click(function(){
		/*页面显示*/
		userSerOperation($(this));
		clearTable($(".body-userser-shoppingCar>table tr"));
		/*查询个人购物车*/
		shoppingCarSubmit(0);
	});
	
	/*查询个人信息*/
	$("#btn-user-info").click(function(){
		userSerOperation($(this));
		
		infoSubmit();
		
	});
	/*查询历史记录*/
	$("#btn-user-history").click(function(){
		userSerOperation($(this));
		clearTable($(".body-userser-history>table tr"));
		historySubmit(0);
	});
	
	
	/*购物车查询提交*/
	function shoppingCarSubmit(pageNum){
		$.ajax({
			type: "post",
			url: "user/queryCarByUser?page.limitnum=8&page.pagenum="+pageNum,
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			success: function(data){
				connectShoppingCar(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	/*购物车操作与后台交互成功*/
	function connectShoppingCar(data){
		var dataAll = eval("("+data+")");
		var dataFlag = dataAll.QUERYCARBYUSER_FLAG;
		var shoppingCarList = dataAll.shoppingCarList;
		var commodityList = dataAll.commodityList;
			page = dataAll.page;
		var tr = new String();
		var cUrl = "commodity/queryOne?page.pagenum=0&page.limitnum=6&page.order=40&commodity.id=";
		var pUrl = "user/orderConfirm?shoppingCar.id=";
		var dUrl = "user/delOneCar?shoppingCar.id=";

		if(shoppingCarList != null && shoppingCarList != undefined && shoppingCarList != "" ){
			for (var i = 0; i < shoppingCarList.length; i++) {
				tr += "<tr><td><a href="+ cUrl + commodityList[i].id +">" + commodityList[i].cname + "</a></td>" 
						+ "<td>" + commodityList[i].priceout + "</td>"
						+ "<td>" + shoppingCarList[i].ccount+ "</td>"
						+ "<td>" + commodityList[i].priceout * shoppingCarList[i].ccount + "</td>"
						+ "<td><a href=" + pUrl + shoppingCarList[i].id + ">支付</a>&nbsp;&nbsp;|&nbsp;&nbsp;"
						+ "<a href=" + dUrl + shoppingCarList[i].id + ">删除</a>"
						+ "</td></tr>";
			}
			$(".shoppingcar-null").hide();
			$(".body-userser-shoppingCar>table tr:eq(0)").after(tr);
			paginationShow('shoppingCar',page);
		}else{
			$(".body-userser-shoppingCar>table").hide();
			$(".shoppingcar-null").show();
		}
		$(".body-userser-shoppingCar").show();
	}
	
	/*分页-显示*/
	function paginationShow(operation,page){
		/*总页数*/
		pageCount = page.count % page.limitnum;
		if(pageCount == 0){
			pageCount = Math.floor(page.count / page.limitnum);
		}else{
			pageCount = Math.floor(page.count / page.limitnum) + 1;
		}
		/*上一页-显示*/
		if(page.pagenum > 0){
			$("#"+operation+"-pre").show();
		}else{
			$("#"+operation+"-pre").hide();
		}
		/*下一页-显示*/
		if(page.pagenum < (pageCount - 1)){
			$("#"+operation+"-next").show();
		}else{
			$("#"+operation+"-next").hide();
		}
		$("#"+operation+"-pagenum").text(page.pagenum+1);
		$("#"+operation+"-pageCount").text(pageCount);
		$("#"+operation+"-count").text(page.count);
	}
	
	/*购物车-分页-操作*/
	$("#shoppingCar-first").click(function(){
		/*页面显示*/
		userSerOperation($("#btn-user-shoppingCar"));
		clearTable($(".body-userser-shoppingCar>table tr"));
		/*查询个人购物车*/
		shoppingCarSubmit(0);
	});
	$("#shoppingCar-pre").click(function(){
		userSerOperation($("#btn-user-shoppingCar"));
		clearTable($(".body-userser-shoppingCar>table tr"));
		shoppingCarSubmit(page.pagenum-1);
	});
	$("#shoppingCar-next").click(function(){
		userSerOperation($("#btn-user-shoppingCar"));
		clearTable($(".body-userser-shoppingCar>table tr"));
		shoppingCarSubmit(page.pagenum+1);
	});
	$("#shoppingCar-end").click(function(){
		userSerOperation($("#btn-user-shoppingCar"));
		clearTable($(".body-userser-shoppingCar>table tr"));
		shoppingCarSubmit(pageCount-1);
	});
	
	
	/*个人信息-按钮-update*/
	$("#user-info-update").click(function(){
		userInfoUpdateShow();
		
	});
	/*个人信息-按钮-save*/
	$("#user-info-save").click(function(){
		if(validateInfo()){
			var user = {
				"userInfo.id" : $("#user-id").val(),
				"userInfo.nickname" : $("#user-nickname").val(),
				"userInfo.uname" : $("#user-uname").val(),
				"userInfo.phone" : $("#user-phone").val(),
				"userInfo.address" : $("#user-address").val(),
				"userInfo.email" : $("#user-email").val(),
				"userInfo.weichat" : $("#user-weichat").val(),
				"userInfo.qqnum" : $("#user-qqnum").val(),
				"userInfo.gender" : $("#user-gender").val(),
				"userInfo.age" : $("#user-age").val(),
				"userInfo.university" : $("#user-university").val(),
				"userInfo.college" : $("#user-college").val(),
				"userInfo.classes" : $("#user-classes").val(),
				"userInfo.tips" : $("#user-tips").val()
			};
			infoUpdateSubmit(user);
		}
		
	});
	/*个人信息-按钮-cencal*/
	$("#user-info-cencel").click(function(){
		infoSubmit();
	});
	
	/*个人信息-修改-显示*/
	function userInfoUpdateShow(){
		$("#user-nickname,#user-uname,#user-phone,#user-address," +
			"#user-email,#user-weichat,#user-qqnum,#user-gender," +
			"#user-age,#user-university,#user-college,#user-classes," +
			"#user-tips").removeAttr("disabled").css({"background":"#fff","color":"#4CB881"});
		$("#user-info-update").hide();
		$("#user-info-updated").show();
	}
	/*个人信息-修改-隐藏*/
	function userInfoUpdateHide(){
		$("#user-nickname,#user-uname,#user-phone,#user-address," +
			"#user-email,#user-weichat,#user-qqnum,#user-gender," +
			"#user-age,#user-university,#user-college,#user-classes," +
			"#user-tips").attr("disabled","disabled").css({"background":"#F5F5F5","color":"#4169e1"});
		$("#user-info-updated").hide();
		$("#user-info-update").show();
	}
	/*校验-个人信息*/
	function validateInfo(){
		var nickname = $("#user-nickname");
		if(nickname.val() != null && nickname.val() != undefined && nickname.val() != "" ){
			$("#msg-user-nickname").hide();
			var uname = $("#user-uname");
			if(uname.val() != null && uname.val() != undefined && uname.val() != "" ){
				$("#msg-user-uname").hide();
				var phone = $("#user-phone");
				if(phone.val() != null && phone.val() != undefined && phone.val() != "" ){
					$("#msg-user-phone").hide();
					if(validatePhone(phone.val())){
						$("#msg-user-phone").hide();
						var address = $("#user-address");
						if(address.val() != null && address.val() != undefined && address.val() != "" ){
							$("#msg-user-address").hide();
							
							return true;
						}else{
							$("#msg-user-address").text("*请输入详细地址").show();
							address.focus();
							return false;
						}
					}else{
						$("#msg-user-phone").text("*请输入正确手机号").show();
						phone.focus().select();
						return false;
					}
				}else{
					$("#msg-user-phone").text("*请输入手机号").show();
					phone.focus();
					return false;
				}
			}else{
				$("#msg-user-uname").text("*请输入姓名").show();
				uname.focus();
				return false;
			}
		}else{
			$("#msg-user-nickname").text("*请输入昵称").show();
			nickname.focus();
			return false;
		}
	}
	
	/*个人信息-查询-提交*/
	function infoSubmit(){
		$.ajax({
			type: "post",
			url: "user/queryOneInfo",
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			success: function(data){
				connectInfo(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	
	/*个人信息-查询-与后台交互成功*/
	function connectInfo(data){
		var dataAll = eval("("+data+")");
		if(dataAll.QUERYONEINFO_FLAG == "success"){
			var userInfo = dataAll.userInfo;
			$("#user-nickname").val(userInfo.nickname);
			$("#user-uname").val(userInfo.uname);
			$("#user-phone").val(userInfo.phone);
			$("#user-address").val(userInfo.address);
			$("#user-email").val(userInfo.email);
			$("#user-weichat").val(userInfo.weichat);
			$("#user-qqnum").val(userInfo.qqnum);
			$("#user-gender").val(userInfo.gender);
			$("#user-age").val(userInfo.age);
			$("#user-university").val(userInfo.university);
			$("#user-college").val(userInfo.college);
			$("#user-classes").val(userInfo.classes);
			$("#user-tips").val(userInfo.tips);
			
			$("#sessionNickname").text(userInfo.nickname);
			$("#sessionPhone").text(userInfo.phone);
			$("#sessionAddress").text(userInfo.address);
						
			$(".body-userser-info").show();
			userInfoUpdateHide();			
		}else{
			var flag = confirm("没有查询到个人信息，重新登录？");
			if(flag){
				forwardToWebsite("view/user/usersignin.jsp");
			}
		}
	}
	/*个人信息-修改-提交*/
	function infoUpdateSubmit(user){
		$.ajax({
			type: "post",
			url: "user/updateInfo",
			data: user,
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			success: function(data){
				connectInfoUpdate(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	/*个人信息-修改-与后台交互成功*/
	function connectInfoUpdate(data){
		var obj = eval("("+data+")");
		if(obj.UPDATEINFO_FLAG == "success"){
			alert("信息修改成功!");
			
			var userInfo = obj.userInfo;
			$("#sessionNickname").text(userInfo.nickname);
			$("#sessionPhone").text(userInfo.phone);
			$("#sessionAddress").text(userInfo.address);
			
			userInfoUpdateHide();
		}else{
			alert("信息修改失败，请重新保存!");
		}
	}
	
	/*历史记录-提交*/
	function historySubmit(pageNum){
		$.ajax({
			type: "post",
			url: "user/queryLogByUser?page.limitnum=8&page.pagenum="+ pageNum,
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			success: function(data){
				connectHistory(data);
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	
	/*历史记录-后台交互*/
	function connectHistory(data){
		var dataAll = eval("("+data+")");
		var dataFlag = dataAll.QUERYLOGBYUSER_FLAG;
		var userLogList = dataAll.userLogList;
		var commodityList = dataAll.commodityList;
			page = dataAll.page;
		var tr = new String();
		var cUrl = "commodity/queryOne?page.pagenum=0&page.limitnum=6&page.order=40&commodity.id=";
		var dUrl = "user/delOneLog?userLog.id=";
		
		if(userLogList != null && userLogList != undefined && userLogList != "" ){
			for (var i = 0; i < userLogList.length; i++) {
				tr += "<tr><td><a href="+ cUrl + commodityList[i].id +">" + commodityList[i].cname + "</a></td>" 
						+ "<td>" + commodityList[i].priceout + "</td>"
						+ "<td>" + userLogList[i].operation+ "</td>"
						+ "<td>" + userLogList[i].updatetime + "</td>"
						+ "<td><a href=" + dUrl + userLogList[i].id + ">删除</a>"
						+ "</td></tr>";
			}
			$(".body-userser-history>table tr:eq(0)").after(tr);
			paginationShow('history',page);
			$(".history-null").hide()
		}else{
			$(".body-userser-history>table").hide();
			$(".history-null").show()
		}
		$(".body-userser-history").show();
	}
	
	/*历史记录-分页-操作*/
	$("#history-first").click(function(){
		/*页面显示*/
		userSerOperation($("#btn-user-history"));
		clearTable($(".body-userser-history>table tr"));
		/*历史记录-查询*/
		historySubmit(0);
	});
	$("#history-pre").click(function(){
		userSerOperation($("#btn-user-history"));
		clearTable($(".body-userser-history>table tr"));
		historySubmit(page.pagenum-1);
	});
	$("#history-next").click(function(){
		userSerOperation($("#btn-user-history"));
		clearTable($(".body-userser-history>table tr"));
		historySubmit(page.pagenum+1);
	});
	$("#history-end").click(function(){
		userSerOperation($("#btn-user-history"));
		clearTable($(".body-userser-history>table tr"));
		historySubmit(pageCount-1);
	});

	/*个人业务操作显示*/
	function userSerOperation(service){
		$(".body-userser-order,.body-userser-shoppingCar,.body-userser-info,.body-userser-history").hide();
		$("#btn-user-order,#btn-user-shoppingCar,#btn-user-info,#btn-user-history").removeClass("mark-server-nav");
		service.addClass("mark-server-nav");
	}
	
	/*清空表格内容*/
	function clearTable(table){
		var count = table.length-2;
		/*保留表格的首尾行*/
		for (var i = 1; i < count; i++) {
			table.eq(i).remove();
		}
	}
	/*用户头像显示*/
	function showImages(){
		var userImg = $("#body-userhead img");
		if(userImg[0].id != null && userImg[0].id != '' && userImg[0].id != "暂无图片"){
			userImg[0].src = "resource/user/" + userImg[0].id;
		}else{
			userImg[0].src = "resource/user/headmodel1.jpg";
		}
	}
	/*解析支付状态*/
	function resolveIfpay(){
		$(".body-userser-order>table tr td:nth-child(5)").each(function(){
			if($(this).text() == 0 || $(this).text() == "0"){
				$(this).text("未支付");
			}else{
				if($(this).text() != "交易状态"){
					$(this).text("已付款");
				}
			}
		});
	}
	/*订单表操作显示
	 * 对于已经支付的订单，则操作只有「删除」
	 * 对于未支付的订单，则操作有「删除」和「支付」
	 */
	function orderOperation(){
		var orders = $(".body-userser-order>table tr")	
		/*后两行没有第 6 列，因此要除去后两行*/
		for (var i = 1; i < orders.length-2; i++) {
			var num = orders.eq(i).children('td').eq(5).get(0).id.substring(10);
			if(orders.eq(i).children('td').eq(4).text() == "未支付"){
				$("#pay-operation-" + num).show();
			}else{
				$("#pay-operation-" + num).hide();
			}
		}
	}
	/*页面跳转*/
	function forwardToWebsite(targetUrl){
		var location = (window.location+'').split('/');
		var basePath = location[0]+'//'+location[2]+'/'+location[3];
		var url = basePath + '/' + targetUrl;
		window.location.href = url;
	}
	/*手机号校验*/
	function validatePhone(phone){
		if(/^1[3|4|5|7|8][0-9]{9}$/.test(phone)){
			return true;
		}else{
			return false;
		}
	}
			
	
	
});