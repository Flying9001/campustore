$(document).ready(function(){
	var message = $("#message");
	var checkcode = $("#checkcode");	//验证码框
	var code;	//验证码
	/*生成验证码*/
	createCode(checkcode);
	
	/*登录框显示效果*/
	$("#signin-account").addClass("body-signin-type-on");
	$(".body-signin-type li").click(function(){
		var index = $(".body-signin-type li").index(this);
		$(".body-signin-type li").removeClass("body-signin-type-on")
			.eq(index).addClass("body-signin-type-on");
		$(".body-input-" + (1-index)).hide();
		$(".body-input-" + index).show();
	});	
	/*form提交*/
	$("form").submit(function(){
		var form = $(this);
		validateFormData(form);
		return false;		
	});
	/*form数据校验-参数为对象*/
	function validateFormData(form){
		var account = $("input[id='input-account']");
		var passcode = $("input[id='input-passcode']");
		var inputcheckcode = $("input[id='input-checkcode']");
		if(validateInput(account.val())){
			message.text("").hide();
			if(validateInput(passcode.val())){
				message.text("").hide();
				if(validateInput(inputcheckcode.val())){
					message.text("").hide();
					if(validateCode(inputcheckcode.val())){
						message.text("").hide();
						ajaxSubmit(form);
					}else{
						createCode(checkcode);
						inputcheckcode.focus().select();
						message.text("*验证码错误,请重新输入!").show();
					}
				}else{
					inputcheckcode.focus();
					message.text("*请输入验证码!").show();
				}
			}else{
				passcode.focus();
				message.text("*请输入密码!").show();
			}
		}else{
			account.focus();
			message.text("*请输入账号!").show();
		}
	}
	/*手动刷新验证码*/
	$('#fresh-checkcode').click(function(){
		createCode(checkcode);
	});
	/*使用ajax异步提交-参数为对象*/
	function ajaxSubmit(form){
		$.ajax({
			type: form.attr('method'),
			url: form.attr('action'),
			data:form.serialize(),
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			async: true,
			cache: false,
			success: function(data){
				connectSuccess(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	/*ajax成功与后台交互*/
	function connectSuccess(data){
		var obj = eval("("+data+")");
		$.each(obj,function(key,value){
			if("SIGNIN_FLAG" == key && null != value && "" != value ){
				forwardToWebsite("homepage.jsp");
			}else{
				message.text("*登录失败，用户名或密码错误!").show();
				createCode(checkcode);
			}
		});			
	}
	/*页面跳转*/
	function forwardToWebsite(targetUrl){
		var location = (window.location+'').split('/');
		var basePath = location[0]+'//'+location[2]+'/'+location[3];
		var url = basePath + '/' + targetUrl;
		window.location.href = url;
	}
	
	/*输入校验*/
	function validateInput(inputs){
		if(inputs != "" && inputs != undefined && inputs != null){
			return true;
		}else{
			return false;
		}
	}
	/*验证码生成方法-参数为对象*/
	function createCode(checkCode){
		code = "";
		var codeLength = 5;
		var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K',
								'L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
		for (var i = 0; i < codeLength; i++) {
			var index = Math.floor(Math.random()*36);
			code += random[index];
		}
		checkCode.attr("value",code);
	}
	/*验证码校验*/
	function validateCode(inputCheckCode){
		var tmpCode = inputCheckCode.toUpperCase();
		if(tmpCode == code){
			return true;
		}else{
			return false;
		}
	}
	
	
});