$(document).ready(function(){
	/*个人中的url*/
	var urls = $(".head-con ul li a");
	var url = urls[0].href;
	
	$("form").submit(function(){
		var form = $(this);
		validateFromData(form);
		return false;
	});
	
	/*校验-表单数据-参数为对象*/
	function validateFromData(form){
		var ccount = $("#order-ccount").text();
		if(ccount != null && ccount != 0){
			orderSubmit(form);
		}else{
			var flag = confirm("订单信息不全,无法提交,是否返回个人中心？");
			if(flag){
				window.location.href = url;
			}
		}
	}
	
	/*订单-ajax提交-参数为对象*/
	function orderSubmit(form){
		$.ajax({
			type: form.attr('method'),
			url: form.attr('action'),
			data:form.serialize(),
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			async: true,
			cache: false,
			success: function(data){
				connectOrderSubmit(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	
	/*订单提交与后台交互成功*/
	function connectOrderSubmit(data){
		var obj = eval("("+data+")");
		if(obj.ORDERSUBMIT_FLAG == "success"){
			forwardToWebsite("view/user/orderPay.jsp");
		}else{
			var flag = confirm("订单提交失败，是否返回个人中心？");
			if(flag){
				window.location.href = url;
			}
		}	
	}
	
	/*订单-取消*/
	$("#order-cancel").click(function(){
		var flag = confirm("订单提交已取消，是否返回个人中心？");
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





