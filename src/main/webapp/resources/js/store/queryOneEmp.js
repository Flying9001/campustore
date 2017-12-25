$(document).ready(function(){
	/*返回操作*/
	$("#store-emp-back").click(function(){
		forwardToWebsite("view/store/storecenter.jsp")
		
	});
	
	
	
	
	/*页面跳转*/
	function forwardToWebsite(targetUrl){
		var location = (window.location+'').split('/');
		var basePath = location[0]+'//'+location[2]+'/'+location[3];
		var url = basePath + '/' + targetUrl;
		window.location.href = url;
	}
	
	
	
	
});