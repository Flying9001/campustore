$(document).ready(function(){
	var inputmsg;	//提示信息
	var checkcode = $("#checkcode");	//验证码框
	var code;	//验证码
	/*登录显示效果*/
	$("#signup-1").addClass("head-mark");
	/*step1输入校验*/
	$("#signup-next1").click(function(){
		var nickname = $("#input-nickname");
		var account = $("#input-account");
		if(validateInput(nickname.val())){
			inputmsg = $('#input-nickname-msg');
			inputmsg.html("");
			if(validateInput(account.val())){
				inputmsg = $('#input-account-msg');
				inputmsg.html("");
				ajaxValidateAccount(account);
			}else{
				inputmsg = $('#input-account-msg');
				inputmsg.html("*请输入账号!");
				account.focus();
			}		
		}else{
			inputmsg = $('#input-nickname-msg');
			inputmsg.html("*请输入昵称!");
			nickname.focus();
		}		
	});
	/*step1-ajax校验输入账号-参数为对象*/
	function ajaxValidateAccount(account){
		$.ajax({
			type: "post",
			url: "user/signupValidateAccount",
			data:account.serialize(),
			dateType: "json",
			contentType: "application/x-www-form-urlencoded",
			cache: false,
			success: function(data){
				connectSuccess1(data)
			},
			error: function(){
				alert("Network error...");
			}
		});
	}
	/*step1-ajax与后台交互成功*/
	function connectSuccess1(data){
		/*判断是否从后台获取到所需要的反馈数据,后台(主要是数据库)出故障仍然走succsee*/
			if(data.match("^\{(.+:.+,*){1,}\}$")){
				var flag = eval("(" + data + ")");
				$.each(flag,function(key,value){
					if(key == "SIGNUPVALIDATEACCOUNT_FLAG" && value == "success"){
						$("#signup-2").addClass("head-mark");
						$("#step1").hide();
						$("#step2").show();
						/*生成验证码*/
						createCode(checkcode);
					}else{
						$('#input-account-msg').html("*该账号已经被注册!请重新输入!");
						$('#input-account').focus().select();
					}
				});
		}else{
			alert("亲，出了点小问题,请稍后再注册！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*step2输入校验*/
	$("#signup-next2").click(function(){
		var name = $("#input-name");
		var phone = $("#input-phone");
		var inputcheckcode = $("#input-checkcode");
		if(validateInput(name.val())){
			inputmsg = $('#input-name-msg');
			inputmsg.html("");
			if(validateInput(phone.val())){
				inputmsg = $('#input-phone-msg');
				inputmsg.html("");
				if(validatePhone(phone.val())){
					inputmsg = $('#input-phone-msg');
					inputmsg.html("");
					if(validateInput(inputcheckcode.val())){
						if(validateCode(inputcheckcode.val())){
							inputmsg = $('#input-checkcode-msg');
							inputmsg.html("");
							ajaxValidatePhone(phone);
						}else{
							createCode(checkcode);
							inputcheckcode.focus().select();
							inputmsg = $('#input-checkcode-msg');
							inputmsg.html("*验证码错误,请重新输入!");
						}
					}else{
						inputmsg = $('#input-checkcode-msg');
						inputmsg.html("*请输入验证码!");
						inputcheckcode.focus();
					}				
				}else{
					inputmsg = $('#input-phone-msg');
					inputmsg.html("*请输入正确手机号!");
					phone.focus().select();
				}
			}else{
				inputmsg = $('#input-phone-msg');
				inputmsg.html("*请输入手机号!");
				phone.focus();
			}		
		}else{
			inputmsg = $('#input-name-msg');
			inputmsg.html("*请输入姓名!");
			name.focus();
		}		
	});
	/*手动刷新验证码*/
	$('#fresh-checkcode').click(function(){
		createCode(checkcode);
	});
	/*step2-ajax校验手机号-参数为对象*/
	function ajaxValidatePhone(phone){
		$.ajax({
			type: "post",
			url: "user/signupValidatePhone",
			data:phone.serialize(),
			dateType: "json",
			contentType: "application/x-www-form-urlencoded",
			cache: false,
			success: function(data){
				connectSuccess2(data)
			},
			error: function(){
				alert("Network error...");
			}
		});
	}
	/*step2-ajax与后台交互成功*/
	function connectSuccess2(data){
		/*判断是否从后台获取到所需要的反馈数据,后台(主要是数据库)出故障仍然走succsee*/
			if(data.match("^\{(.+:.+,*){1,}\}$")){
				var flag = eval("(" + data + ")");
				$.each(flag,function(key,value){
					if(key == "SIGNUPVALIDATEPHONE_FLAG" && value == "success"){
						$("#signup-3").addClass("head-mark");
						$("#step2").hide();
						$("#step3").show();
						
					}else{
						$('#input-phone-msg').html("*该手机号已经被注册!请重新输入手机号!");
						$('#input-phone').focus().select();
					}
				});
		}else{
			alert("亲，出了点小问题,请稍后再注册！");
			forwardToWebsite("homepage.jsp");
		}
	}
	
	/*step3-密码输入校验*/
	$("#input-passcode").keyup(function(){
		var passcode = $(this);
			inputmsg = $("#input-passcode-msg");
		var assesspwd = $("div.signup-step3 ul li");
		switch(validatePasscode(passcode.val())){
			case 10: inputmsg.html("请输入6-20位数字,字母或符号作为密码");
					assesspwd.css("background-color","#fff");
					break;
			case 20: inputmsg.html("密码强度等级:弱");
					assesspwd.css("background-color","#fff");
					assesspwd.eq(0).css("background-color","#33D133");
					break;
			case 30: inputmsg.html("密码强度等级:中");
					assesspwd.css("background-color","#fff");
					assesspwd.eq(0).css("background-color","#33D133");
					assesspwd.eq(1).css("background-color","#33D133");
					break;
			case 40: inputmsg.html("密码强度等级:强");
					assesspwd.css("background-color","#33D133");
					break;
			default : inputmsg.html("输入有误");
					break;
		}
	});
	
	/*step3-from提交*/
	$("form").submit(function(){
		var form = $(this);
		validateFormInput(form);
		return false;
	});
	/*step3-输入校验-参数为对象*/
	function validateFormInput(form){
		var passcode = $("#input-passcode");
		var checkpasscode = $("#check-passcode");
		if(validateInput(passcode.val())){
			inputmsg = $('#input-passcode-msg');
			inputmsg.html("");
			if(10 != validatePasscode(passcode.val())){
				inputmsg = $('#input-passcode-msg');
				inputmsg.html("");
				if(validateInput(checkpasscode.val())){
					inputmsg = $('#check-passcode-msg');
					inputmsg.html("");
					if(passcode.val() == checkpasscode.val()){
						inputmsg = $('#check-passcode-msg');
						inputmsg.html("");
						ajaxSubmit(form);						
					}else{
						inputmsg = $('#check-passcode-msg');
						inputmsg.html("*两次密码输入不一致,请重新输入!");
						checkpasscode.focus().select();
					}
				}else{
					inputmsg = $('#check-passcode-msg');
					inputmsg.html("*请确认密码!");
					checkpasscode.focus();
				}
			}else{
				inputmsg = $('#input-passcode-msg');
				inputmsg.html("*密码长度不够,请输入6-20位数字,字母或符号作为密码!");
				passcode.focus();
			}
		}else{
			inputmsg = $('#input-passcode-msg');
			inputmsg.html("*请输入密码!");
			passcode.focus();
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
				connectSuccess3(data)
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	/*step3-ajax成功与后台交互*/
	function connectSuccess3(data){
		/*判断是否从后台获取到所需要的反馈数据,后台(主要是数据库)出故障仍然走succsee*/
			if(data.match("^\{(.+:.+,*){1,}\}$")){
				var flag = eval("(" + data + ")");
				$.each(flag,function(key,value){
					if(key == "SIGNUP_FLAG" && value == "success"){
						var r = confirm("注册成功!" + '\n' + "是否现在登录");
						if(r == true){
							forwardToWebsite("view/user/usersignin.jsp");
						}else{
							forwardToWebsite("homepage.jsp");
						}
					}else{
						alert("亲，出了点小问题,请重新注册！");
						forwardToWebsite("view/user/usersignup.jsp");
					}
				});
		}else{
			alert("亲，出了点小问题,请稍后再注册！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*页面跳转*/
	function forwardToWebsite(targetUrl){
		var location = (window.location+'').split('/');
		var basePath = location[0]+'//'+location[2]+'/'+location[3];
		var url = basePath + '/' + targetUrl;
		window.location.href = url;
	}
	
	/*输入校验函数*/
	function validateInput(inputs){
		if(inputs != "" && inputs != undefined && inputs != null){
			return true;
		}else{
			return false;
		}
	}
	/*手机号校验*/
	function validatePhone(phone){
		if(/^1[3|4|5|7|8][0-9]{9}$/.test(phone)){
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