$(document).ready(function(){
	var num;
	var signinFlag = $("#SIGNINFLAG").attr("value");
	/*校验登录*/	
	if(signinFlag != "" && signinFlag != undefined && signinFlag != null && signinFlag != 1){
		signined(signinFlag);
	}else{
		notSignin();
	}
	/*没有登录的操作*/
	function notSignin(){
		$('#nav-li-1 a,#nav-li-2 a').attr("href","resources/view/user/usersignin.jsp");
		/*nav-li hover*/
		$('.head-nav ul>li[id]').hover(function(){
				/*显示下拉框*/
				var obj = $(this).attr('id');
				num = obj.substring(7,obj.legth);
				if(num != 1){
					$('#nav-box-'+num).show();
				}
			},function(){
				/*隐藏下拉框*/
				$('#nav-box-'+num).hide();
			}
		);
		/*nav-box hover*/
		$('.hidden-nav').hover(function(){
				$('#nav-box-'+num).show();			
			},function(){
				$('#nav-box-'+num).hide();
			}
		);
	}
	/*登录后的操作*/
	function signined(Account){
		$('#nav-li-1 a,#nav-li-2 a').attr("href","resources/user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.account=" + Account);
		$('#nav-li-2 a').text("Hi!" + Account);
		/*nav-li hover*/
		$('.head-nav ul>li[id]').hover(function(){
				/*显示下拉框*/
				var obj = $(this).attr('id');
				num = obj.substring(7,obj.legth);
				if(num != 2){
				$('#nav-box-'+num).show();
				}
			},function(){
				/*隐藏下拉框*/
				$('#nav-box-'+num).hide();
			}
		);
		/*nav-box hover*/
		$('.hidden-nav').hover(function(){
				$('#nav-box-'+num).show();			
			},function(){
				$('#nav-box-'+num).hide();
			}
		);	
	}
	
	/*导航栏URL赋值*/
	$(function(){
		var navUrls = $('.head-nav>ul>li a');
		navUrls[0].href = "homepage.jsp";
		navUrls[1].href = "resources/view/common/campusstoremobile.jsp";
		navUrls[4].href = "resources/view/common/campusstoreinfo.jsp";
		
		var ucenterUrls = $('#nav-box-1>ul>li a');
		ucenterUrls[0].href = "resources/user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.account=" + signinFlag;
		ucenterUrls[1].href = "resources/user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.account=" + signinFlag;
		ucenterUrls[2].href = "resources/user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.account=" + signinFlag;
		
		var signUrls = $('#nav-box-2>ul>li a');
		signUrls[0].href = "resources/resources/view/user/usersignin.jsp"
		signUrls[1].href = "resources/view/user/usersignup.jsp";
		
		var infoUrls = $('#nav-box-3>ul>li a');
		infoUrls[0].href = "resources/view/common/campusstoreinfo.jsp"
		infoUrls[1].href = "resources/view/common/campusstoretouch.jsp";
	
	});
	
	/*关闭二维码*/
	$('.body-qrcode-close').click(function(){
		$('.body-search-qrcode,.body-qrcode-close').hide();
	});
	
	/*窗口滚动*/
	$(window).scroll(function(){
		if($(window).scrollTop()>=140){
			$('.scrolltop').show();
			$('.float-backtop').show();
		}else{
			$('.scrolltop').hide();
			$('.float-backtop').hide();
		}
	});
	$('.scrolltop-category').hover(function(){
		$('.scrolltop-more').show();
		},function(){
			$('.scrolltop-more').hide();
	});
	$('.scrolltop-more').hover(function(){
		$('.scrolltop-more').show();
		},function(){
			$('.scrolltop-more').hide();
	});
	/*搜索*/
	$("form#scroll-form,form#homepage-form").submit(function(){
		var key = $(this).find("input");
		key.attr("name","commodity.cname");
		key.attr("value",key.val());
		if(key.val() != null && key.val() != undefined && key.val()!= ''){
			$(this).attr("action","commodity/search");	
		}else{
			return false;
		}
				
				
	});
	
	
});