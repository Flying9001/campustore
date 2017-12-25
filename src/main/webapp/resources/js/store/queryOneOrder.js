$(document).ready(function(){
	/*支付状态显示*/
	$("#order-ifpay").text(statusResolve($("#order-ifpay").text()));
	/*商品/用户图片显示*/
	showImages();
	
	
	/*返回店铺中心*/
	$("#back-to-center").click(function(){
		forwardToWebsite("view/store/storecenter.jsp");
	});
	
	
	/*店铺 logo 显示*/
	function showImages(){
		var comImgs = $(".order-com-details img");
		var userImgs = $(".order-user-details img");

		if(comImgs[0].id != null && comImgs[0].id != '' && comImgs[0].id != "暂无图片"){
			comImgs[0].src = "resource/commodity/" + comImgs[0].id;
		}else{
			comImgs[0].src = "resource/commodity/cs-logo.jpg";
		}
		if(userImgs[0].id != null && userImgs[0].id != '' && userImgs[0].id != "暂无图片"){
			userImgs[0].src = "resource/user/" + userImgs[0].id;
		}else{
			userImgs[0].src = "resource/user/headmodel1.jpg";
		}
	}
	
	/*店铺信息-状态-数据解析*/
	function statusResolve(data){
		var result = "Unknown";
		if(data == 1){
			result = "True";
		}else{
			result = "False";
		}
		return result;
	}
	/*页面跳转*/
	function forwardToWebsite(targetUrl){
		var location = (window.location+'').split('/');
		var basePath = location[0]+'//'+location[2]+'/'+location[3];
		var url = basePath + '/' + targetUrl;
		window.location.href = url;
	}
});


