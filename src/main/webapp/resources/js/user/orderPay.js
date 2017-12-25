$(document).ready(function(){
	/*个人中的url*/
	var urls = $(".head-con ul li a");
	var url = urls[0].href;
	
	/*校验-支付方式*/
	function validatePayment(){
		var flag = false;
		var payment = $("#order-payment");
		var msgPayment = $(".msg-payment");
		var msgPaymentTips = $(".msg-payment-tips");
		var paymentImg = $(".order-payment-img");
		
		switch(payment.get(0).selectedIndex){
			case 0 : msgPaymentTips.text("请选择一种支付方式");
					 msgPayment.show();
					 paymentImg.hide();
					 payment.focus();
					 flag = false;
					 break;
			case 1 : msgPaymentTips.text("您已选择现金支付，请在收银台或者收到商品时付款！");
					 msgPayment.show();
					 paymentImg.hide();
					 flag = true;	
					 break;
			case 2 : msgPaymentTips.text("请使用『微信』扫描图中二维码完成支付！");
					 msgPayment.show();
					 paymentImg.show().find("img")[0].src = "image/payment-2.jpg";
					 flag = true;	
					 break;
			case 3 : msgPaymentTips.text("请使用『支付宝』扫描图中二维码完成支付！");
					 msgPayment.show();
					 paymentImg.show().find("img")[0].src = "image/payment-3.jpg";
					 flag = true;	
					 break;
			default : msgPaymentTips.text("请重新选择支付方式");
					  msgPayment.show();
					  paymentImg.hide();
					  flag = false;	
					  break;
		}
		return flag;		
	}
	/*更改支付方式*/
	$("#order-payment").change(function(){
		validatePayment();
	});
	
	$("form").submit(function(){
		if(validatePayment()){
			var form = {
				"order.id" : $("#orderid").val(),
				"order.pid" : $("#order-payment").get(0).selectedIndex
			};
			orderPay(form);
		}
		return false;
	});
	
	/*订单-支付*/
	function orderPay(form){
		$.ajax({
			type: "post",
			url: "user/orderPay",
			data:form,
			dataType: "json",
			async: true,
			cache: false,
			success: function(data){
				connectOrderPay(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	
	/*订单支付与后台交互成功*/
	function connectOrderPay(data){
		var obj = eval("("+data+")");
		if(obj.ORDERPAY_FLAG == "success"){
			var flag = confirm("订单提交成功，是否返回个人中心？");
			if(flag){
				window.location.href = url;
			}
		}else{
			var flag = confirm("订单提交失败，是否返回主页？");
			if(flag){
				forwardToWebsite("homepage.jsp");
			}
		}
	}
	
	/*订单-取消*/
	$("#order-cancel").click(function(){
		var flag = confirm("订单支付已取消，是否返回个人中心？");
			if(flag){
				window.location.href = url;
			}
	});
	
	/*页面跳转*/
	function forwardToWebsite(targetUrl){
		var location = (window.location+'').split('/');
		var basePath = location[0]+'//'+location[2]+'/'+location[3];
		var url = basePath + '/' + targetUrl;
		window.location.href = url;
	}
	
	
	
	
	
});