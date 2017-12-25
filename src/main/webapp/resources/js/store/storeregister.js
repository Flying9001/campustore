$(document).ready(function(){
	var checkcode = $("#checkcode");	//验证码框
	var code;	//验证码
	
	/*登录显示效果*/
	$("#signup-1").addClass("head-mark");
	
	/*step1-输入校验*/
	$("#signup-next1").click(function(){
		var sname = $("#input-sname");
		var account = $("#input-account");
		if(validateInput(sname.val())){
			$("#msg-sname").text("");
			if(validateInput(account.val())){
				$("#msg-account").text("");
				var formdata = { "store.sname" : sname.val() };
				validateSname(formdata);		
			}else{
				$("#msg-account").text("*请输入账号ID！");
				account.focus();
			}			
		}else{
			$("#msg-sname").text("*请输入店铺名！");
			sname.focus();
		}
	});
	/*step1-sname-提交-校验*/
	function validateSname(formdata){
		$.ajax({
			type: "post",
			url: "store/registerValidate",
			data: formdata,
			dateType: "json",
			contentType: "application/x-www-form-urlencoded",
			cache: false,
			success: function(data){
				connectValidateSname(data)
			},
			error: function(){
				alert("Network error...");
			}
		});
	}
	/*step1-sname-校验-与后台交互*/
	function connectValidateSname(data){
		/*判断是否从后台获取到所需要的反馈数据,后台(主要是数据库)出故障仍然走succsee*/
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");	
			if(obj.REGISTERVALIDATE_FLAG == 'success'){
				$('#msg-sname').text("");
				var formdata = { "store.account" : $("#input-account").val() };
				validateAccount(formdata);
			}else{
				$('#msg-sname').text("*该店铺名已经被注册!请重新输入!");
				$('#input-sname').focus().select();
			}
		}else{
			alert("亲，出了点小问题,请稍后再注册！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*step1-account-提交-校验*/
	function validateAccount(formdata){
		$.ajax({
			type: "post",
			url: "store/registerValidate",
			data: formdata,
			dateType: "json",
			contentType: "application/x-www-form-urlencoded",
			cache: false,
			success: function(data){
				connectValidateAccount(data)
			},
			error: function(){
				alert("Network error...");
			}
		});
	}
	/*step1-account-校验-与后台交互*/
	function connectValidateAccount(data){
		/*判断是否从后台获取到所需要的反馈数据,后台(主要是数据库)出故障仍然走succsee*/
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");	
			if(obj.REGISTERVALIDATE_FLAG == 'success'){
				$('#msg-account').text("");
				$("#signup-2").addClass("head-mark");
				$("#step1").hide();
				$("#step2").show();
				/*生成验证码*/
				createCode(checkcode);
			}else{
				$('#msg-account').text("*该账号ID已经被注册!请重新输入!");
				$('#input-account').focus().select();
			}
		}else{
			alert("亲，出了点小问题,请稍后再注册！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*step2-输入校验*/
	$("#signup-next2").click(function(){
		var sowner = $("#input-sowner");
		var ownertel = $("#input-ownertel");
		var ownerid = $("#input-ownerid");
		var inputcheckcode = $("#input-checkcode");
		if(validateInput(sowner.val())){
			$("#msg-sowner").text("");
			if(validateInput(ownertel.val())){
				$("#msg-ownertel").text("");
				if(validatePhone(ownertel.val())){
					$("#msg-ownertel").text("");
					if(validateInput(ownerid.val())){
						$("#msg-ownerid").text("");
						if(validateID(ownerid.val())){
							$("#msg-ownerid").text("");
							if(validateInput(inputcheckcode.val())){
								$("#msg-checkcode").text("");
								if(validateCode(inputcheckcode.val())){
									$("#msg-checkcode").text("");
									var formdata = {"store.ownertel":ownertel.val() };
									validateOwnertel(formdata);
								}else{
									createCode(checkcode);
									$("#msg-checkcode").text("*验证码错误,请重新输入！");
									inputcheckcode.focus().select();
								}
							}else{
								$("#msg-checkcode").text("*请输入验证码！");
								inputcheckcode.focus();
							}
						}else{
							$("#msg-ownerid").text("*请输入正确身份证！");
							ownerid.focus().select();
						}
					}else{
						$("#msg-ownerid").text("*请输入身份证！");
						ownerid.focus();
					}				
				}else{
					$("#msg-ownertel").text("*请输入正确手机号！");
					ownertel.focus().select();
				}
			}else{
				$("#msg-ownertel").text("*请输入手机号！");
				ownertel.focus();
			}			
		}else{
			$("#msg-sowner").text("*请输入姓名！");
			sowner.focus();
		}
	});
	/*手动刷新验证码*/
	$('#fresh-checkcode').click(function(){
		createCode(checkcode);
	});
	/*step2-ownertel-提交-校验*/
	function validateOwnertel(formdata){
		$.ajax({
			type: "post",
			url: "store/registerValidate",
			data: formdata,
			dateType: "json",
			contentType: "application/x-www-form-urlencoded",
			cache: false,
			success: function(data){
				connectValidateOwnertel(data)
			},
			error: function(){
				alert("Network error...");
			}
		});
	}
	/*step2-ownertel-校验-与后台交互*/
	function connectValidateOwnertel(data){
		/*判断是否从后台获取到所需要的反馈数据,后台(主要是数据库)出故障仍然走succsee*/
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");	
			if(obj.REGISTERVALIDATE_FLAG == 'success'){
				$('#msg-ownertel').text("");
				var formdata = { "store.ownerid" : $("#input-ownerid").val() };
				validateOwnerid(formdata);
			}else{
				$('#msg-ownertel').text("*该手机号已经被注册!请重新输入!");
				$('#input-ownertel').focus().select();
			}
		}else{
			alert("亲，出了点小问题,请稍后再注册！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*step2-ownerid-提交-校验*/
	function validateOwnerid(formdata){
		$.ajax({
			type: "post",
			url: "store/registerValidate",
			data: formdata,
			dateType: "json",
			contentType: "application/x-www-form-urlencoded",
			cache: false,
			success: function(data){
				connectValidateOwnerid(data)
			},
			error: function(){
				alert("Network error...");
			}
		});
	}
	/*step2-ownerid-校验-与后台交互*/
	function connectValidateOwnerid(data){
		/*判断是否从后台获取到所需要的反馈数据,后台(主要是数据库)出故障仍然走succsee*/
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");	
			if(obj.REGISTERVALIDATE_FLAG == 'success'){
				$('#msg-ownertid').text("");
				$("#signup-3").addClass("head-mark");
				$("#step2").hide();
				$("#step3").show();
			}else{
				$('#msg-ownertid').text("*该身份证已经被注册!请重新输入!");
				$('#input-ownertid').focus().select();
			}
		}else{
			alert("亲，出了点小问题,请稍后再注册！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*step3-密码强度校验*/
	$("#input-passcode").keyup(function(){
		var passcode = $(this);
			inputmsg = $("#msg-passcode");
		var assesspwd = $("div.signup-step3 ul li");
		switch(validatePasscode(passcode.val())){
			case 10: inputmsg.text("请输入6-20位数字,字母或符号作为密码");
					assesspwd.css("background-color","#fff");
					break;
			case 20: inputmsg.text("密码强度等级:弱");
					assesspwd.css("background-color","#fff");
					assesspwd.eq(0).css("background-color","#33D133");
					break;
			case 30: inputmsg.text("密码强度等级:中");
					assesspwd.css("background-color","#fff");
					assesspwd.eq(0).css("background-color","#33D133");
					assesspwd.eq(1).css("background-color","#33D133");
					break;
			case 40: inputmsg.text("密码强度等级:强");
					assesspwd.css("background-color","#33D133");
					break;
			default : inputmsg.text("输入有误");
					break;
		}
	});
	/*step3 输入校验*/
	$("#signup-next3").click(function(){
		var passcode = $("#input-passcode");
		var checkpasscode = $("#check-passcode");
		if(validateInput(passcode.val())){
			$('#msg-passcode').text("");
			if(10 != validatePasscode(passcode.val())){
				$('#msg-passcode').text("");
				if(validateInput(checkpasscode.val())){
					$('#msg-check-passcode').text("");
					if(passcode.val() == checkpasscode.val()){
						$('#msg-check-passcode').text("");
						$("#signup-4").addClass("head-mark");
						$("#step3").hide();
						$("#step4").show();
					}else{
						$('#msg-check-passcode').text("*两次密码输入不一致,请重新输入!");
						checkpasscode.focus().select();
					}
				}else{
					$('#msg-check-passcode').text("*请确认密码!");
					checkpasscode.focus();
				}
			}else{
				$('#msg-passcode').text("*密码长度不够,请输入6-20位数字,字母或符号作为密码!");
				passcode.focus();
			}
		}else{
			$('#msg-passcode').text("*请输入密码!");
			passcode.focus();
		}	
	});
	/*step4-from提交*/
	$("form").submit(function(){
		var form = $(this);
		validateFormInput(form);
		return false;
	});
	/*step4-输入校验-参数为对象*/
	function validateFormInput(form){
		var address = $("#input-address");
		var storetel = $("#input-storetel");
		if(validateInput(address.val())){
			$("#msg-address").text("");
			if(validateInput(storetel.val())){
				$("#msg-storetel").text("");
				if(validatePhone(storetel.val())){
					$("#msg-storetel").text("");
					ajaxSubmit(form);
					
				}else{
					$("#msg-storetel").text("*请输入正确的电话号码(手机号)!");
					storetel.focus().select();
				}
			}else{
				$("#msg-storetel").text("*请输入店铺电话!");
				storetel.focus();
			}
		}else{
			$("#msg-address").text("*请输入店铺地址!");
			address.focus();
		}
	}
	
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
				connectSubmit(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	/*step4-ajaxSubmit-后台交互*/
	function connectSubmit(data){
		console.log("Data: " + data);
		/*判断是否从后台获取到所需要的反馈数据,后台(主要是数据库)出故障仍然走succsee*/
			if(data.match("^\{(.+:.+,*){1,}\}$")){
				var obj = eval("(" + data + ")");
				if(obj.REGISTER_FLAG == "success"){
					var r = confirm("注册成功!" + '\n' + "是否现在登录");
					if(r == true){
						forwardToWebsite("view/store/storesignin.jsp");
					}else{
						forwardToWebsite("homepage.jsp");
					}
				}else{
					alert("亲，出了点小问题,请重新注册！");
					forwardToWebsite("view/store/storeregister.jsp");
				}
		}else{
			alert("亲，出了点小问题,请稍后再注册！");
			forwardToWebsite("homepage.jsp");
		}
	}
	
	/*输入校验函数*/
	function validateInput(inputs){
		if(inputs != "" && inputs != undefined && inputs != null){
			return true;
		}else{
			return false;
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
	/*身份证校验*/
	function validateID(idnum){
		if(/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test(idnum)){
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
	/*密码强度校验*/
	function validatePasscode(passcode){
		var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g"); 
		var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g"); 
		var enoughRegex = new RegExp("(?=.{6,}).*", "g"); 
		var len = passcode.length;
		if(false == enoughRegex.test(passcode)){
			return 10;
		}else{
			if(mediumRegex.test(passcode)){
				if(strongRegex.test(passcode)){
					return 40;	
				}else{
					return 30;
				}				
			}else{
				return 20;
			}			
		}
	}
	
});