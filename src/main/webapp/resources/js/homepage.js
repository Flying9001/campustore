$(document).ready(function(){

	/*body-nav-more*/
	$(".body-nav-more,#body-nav-more").hover(function(){
			$('.body-nav-more').show();
		},function(){
			$('.body-nav-more').hide();
		}	
	);
	/*body-ad*/	
	$(function() {
		var len = $('.body-ad-slider>li').length;
		var index = 0;
		var adTimer;
		/*手动控制需要显示的图片*/
		$('.body-ad-slider-num li').mouseover(function(){
			index = $('.body-ad-slider-num li').index(this);
			showImg(index);
		}).eq(0).mouseover();
		$('#ad-slider-next').click(function(){
			index++;
			if(index == len){
				index = 0;
				showImg(index);
			}else{
				showImg(index);
			}
		});
		$('#ad-slider-pre').click(function(){
			index--;
			if(index < 0){
				index = len-1;
				showImg(index);
			}else{
				showImg(index);
			}
	});
	/*自动播放动画*/
	$(".body-ad").hover(function(){
		clearInterval(adTimer);
		},function(){
			adTimer = setInterval(function(){
				showImg(index);
				index++;
				if(index == len){
					index = 0;
				}
			},3000);
		}).trigger('mouseout');
	});
	/*显示图片函数*/	
	function showImg(index){
		var adHeight = $('.body-ad-slider').height();
		$('.body-ad-slider').animate({top: -adHeight*index},500);
		$('.body-ad-slider-num li').removeClass("on").eq(index).addClass("on");
	}
	/*上/下一张*/	
	$('.body-ad').hover(function(){
		$(this).find('.ad-slider-pre,.ad-slider-next').fadeTo("show",0.4);
	},function(){
		$(this).find('.ad-slider-pre,.ad-slider-next').hide();
	});
	$('.ad-slider-pre,.ad-slider-next').hover(function(){
		$(this).fadeTo("show",0.8);
	},function(){
		$(this).fadeTo("show",0.4);
	});
	
	
	/*设置商品显示*/
	$(function(){
		var baseUrl = "commodity/queryByCategory?page.pagenum=0&page.limitnum=8&page.order=40&commodity.cid=";
		var baseImgSrc = "resources/img/category";
		var urls = $('.body-sales>ul>li a');
		var imgs = $('.body-sales>ul>li img');
		for (var i = 0; i < urls.size() ; i++) {
			urls[i].href = baseUrl + (i+1);
			imgs[i].src = baseImgSrc + (i+1) + ".jpg";
		}
	});
	/*选择商品-特效*/
	$('.body-sales>ul>li').hover(function(){
		$(this).css("border","2px solid fuchsia");
		},function(){
			$(this).css("border","2px solid #fff");
		});
	/*页面跳转*/
	function forwardToWebsite(targetUrl){
		var location = (window.location+'').split('/');
		var basePath = location[0]+'//'+location[2]+'/'+location[3];
		var url = basePath + '/' + targetUrl;
		window.location.href = url;
	}
		
	
});



