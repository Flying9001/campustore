$(document).ready(function(){
	/*店铺中心*/
	$("#head-ownerinfo").click(function(){
		forwardToWebsite("view/store/storecenter.jsp")
	});
	/*退出账号*/
	$("#head-ownerexit").click(function(){
		$.alertable.confirm("确定退出?").then(function(){
			$.post("store/ownerExit",function(data){
				ownerExitCall(data);
			});
		});
	});
	/*退出账号-反馈*/
	function ownerExitCall(data){
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.OWNEREXIT_FLAG == "success"){
				alert("账号已退出！");
				forwardToWebsite("view/store/storesignin.jsp");
			}else{
				alert("退出失败,你还没有登录！");
				forwardToWebsite("view/store/storesignin.jsp");
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
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
	
	
});


