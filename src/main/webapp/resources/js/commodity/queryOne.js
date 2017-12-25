$(document).ready(function(){
	var operationMsg = $('.operation-msg');
	
	/*商店logo以及商品图片显示*/
	$(function(){
		var commodityBaseUrl = "resource/commodity/";
		var storeImg = $("#body-storeimg img");
		if(storeImg[0].id != null && storeImg[0].id != '' && storeImg[0].id != "暂无图片"){
			storeImg[0].src = "resource/store/" + storeImg[0].id;
		}
		var urls = $("#body-commodityimg-down ul li img");
		var bigImg = $("#body-commodityimg-up img");
		if(urls[0].id != null && urls[0].id != '' &&  urls[0].id != "暂无图片"){
			bigImg[0].src = commodityBaseUrl + urls[0].id;
		}
		for (var i = 0; i < urls.size(); i++) {
			if(urls[i].id != null && urls[i].id != '' && urls[i].id != "暂无图片"){
				urls[i].src = commodityBaseUrl + urls[i].id;
			}
		}
		var recommendUrls = $("#body-store-recommend-details img");
			for (var i = 0; i < recommendUrls.size(); i++) {
				if(recommendUrls[i].id != null && recommendUrls[i].id != '' && recommendUrls[i].id != "暂无图片"){
					recommendUrls[i].src = commodityBaseUrl + recommendUrls[i].id;
				}	
			}
	});	
	/*修改购买商品数量*/
	$("#commodity-sub").click(function(){
		var buyCount = $('#buy-count');
		buyCount.val(parseInt(buyCount.val())-1);
		validateBuyCount(buyCount);
	});
	$("#commodity-add").click(function(){
		var buyCount = $('#buy-count');
		buyCount.val(parseInt(buyCount.val())+1);
		validateBuyCount(buyCount);
	});
	$("#buy-count").keyup(function(){
		validateBuyCount($(this));
	});
	/*校验-支付方式*/
	function validatePayment(){
		var payment = $("#payment");
		if(payment.get(0).selectedIndex == 0){
			operationMsg.text("请选择一种支付方式!").show();
			payment.focus();			
			return false;
		}else{
			operationMsg.hide();
			return true;
		}
	}
	/*更改支付方式*/
	$("#payment").change(function(){
		validatePayment();
	});
	/*下单购买*/
	$("#purchase").click(function(){
		orderOperation("user/createOrder");
	});
	/*加入购物车*/
	$("#conllect").click(function(){
		shopCarOperation("user/addOneToCar");
	});
	/*校验登录信息*/
	function validateSignin(){
		var signinFlag = $("#SIGNINFLAG").attr("value");
		if(signinFlag != "" && signinFlag != undefined && signinFlag != null && signinFlag != 1){
			return true;			
		}else{
			return false;
		}
	}
	/*下单操作*/
	function orderOperation(url){
		if(validateSignin()){
			if(validatePayment()){
				var commodity = $("#commodityId").text();
				var store = $("#storeId").text();
				var user = $("#SIGNINFLAG").attr("value");
				var count = $("#buy-count");
				var payment = $("#payment").get(0).selectedIndex;
				if(validateBuyCount(count)){
					var formdata = {
							"url" : url,
							"order.cid" : commodity,
							"order.stoid" : store,
							"order.ccount" : count.val(),
							"order.pid" : payment,
							"userInfo.account" : user
					};
					orderSubmit(formdata);
				}
			}
		}else{
			var flag = confirm("您还没有登录，立即登录？");
			if(flag){
				forwardToWebsite("view/user/usersignin.jsp");
			}
		}
	}
	/*添加购物车操作*/
	function shopCarOperation(url){
		if(validateSignin()){
			var commodity = $("#commodityId").text();
			var user = $("#SIGNINFLAG").attr("value");
			var count = $("#buy-count");
			if(validateBuyCount(count)){
				var formdata = {
						"url" : url,
						"shoppingCar.cid" : commodity,
						"shoppingCar.ccount" : count.val(),
						"userInfo.account" : user
				};
				shopCarSubmit(formdata);
			}
		}else{
			var flag = confirm("您还没有登录，立即登录？");
			if(flag){
				forwardToWebsite("view/user/usersignin.jsp");
			}
		}
	}
	/*使用ajax异步提交订单-参数为json*/
	function orderSubmit(formdata){
		$.ajax({
			type: "post",
			url: formdata.url,
			data:formdata,
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			async: true,
			cache: false,
			success: function(data){
				connectSuccessCreateOrder(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	/*使用ajax异步提交购物车-参数为json*/
	function shopCarSubmit(formdata){
		$.ajax({
			type: "post",
			url: formdata.url,
			data:formdata,
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			async: true,
			cache: false,
			success: function(data){
				connectSuccessShopCar(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	/*ajax创建订单与后台交互*/
	function connectSuccessCreateOrder(data){
		var obj = eval("("+data+")");
		if(obj.CREATEORDER_FLAG == "success" ){
			var flag = confirm("下单成功,立即付款?");
			if(flag){
				postUsercenter(obj.userInfoId);
			}
		}else{
			var flag = confirm("下单失败,返回主界面?");
			if(flag){
				forwardToWebsite("homepage.jsp");
			}
		}
	}
	/*ajax添加购物车与后台交互*/
	function connectSuccessShopCar(data){
		var obj = eval("("+data+")");
		if(obj.ADDONETOCAR_FLAG == "success" ){
			var flag = confirm("已经加入购物车,是否去结算?");
			if(flag){
				postUsercenter(obj.userInfoId);
			}
		}else{
			var flag = confirm("加入购物车失败,返回主界面?");
			if(flag){
				forwardToWebsite("homepage.jsp");
			}
		}
	}
	/*post进入个人中心--参数为json*/
	function postUsercenter(user){
		forwardToWebsite("user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.id=" + user);	
	}
	/*校验购买数量与库存关系--参数为对象*/
	function validateBuyCount(buyCount){
		var stockCount = $('#commodity-stockcount');
		var conllect = $("#conllect");
		var purchase = $("#purchase");
		if(buyCount.val() > parseInt(stockCount.text())){
			operationMsg.text("购买数量超过库存！").show();
			purchase.attr("href","javascript:void(0)")
					.css("background","gray");
			conllect.attr("href","javascript:void(0)")
					.css("background","gray");
			return false;
		}else{
			if(buyCount.val() < 1 || buyCount.val() == null){
				operationMsg.text("至少购买一件商品").show();
				purchase.attr("href","javascript:void(0)")
						.css("background","gray");
				conllect.attr("href","javascript:void(0)")
						.css("background","gray");
				return false;
			}else{
				purchase.attr("href","")
						.css("background","#ff00ff");
				conllect.attr("href","")
						.css("background","#ff00ff");
				operationMsg.hide();
				return true;
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
	
	
});


