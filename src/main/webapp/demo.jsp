<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Navication</title>
<style type="text/css">
	body { margin: 0;
		   font-family:serif;	/*字体*/
	}
	.nav_head{
		height: 50px;
		background-color: #459df5;
	}
	.nav_body{
		overflow: hidden;	/*隐藏*/
		height: 50px;
		background: rgba(36,97,158,0.5);	/*包含透明度的颜色设置*/
		transition:height 0.8s;		/*伸展设置*/	
	}
	.nav_body:hover{
		height: 250px;
	}
	
	.nav_head>div>span{
		width:150px;
		height:250px;
		text-align: center;
		display: inline-block;
		font-weight: bold;
		color: #fff;
		font-size: 14px;
		vertical-align: top;
	}
	.nav_head>div>span>p a{
		color: #fff;
		text-decoration: none; /*删除线设置*/
	}
	.nav_head>div>span>p a:HOVER{
		color: #fff;
		text-decoration: underline; /*删除线设置*/
	}
	.nav_title{
		font-size: 16px;
		line-height: 50px;
		margin-top: 0;
	}
	.nav_head>div>span:HOVER {
		background-color: rgba(100,100,100,0.5);
	}
</style>
</head>
<body>
	<div>
		<div class="nav_body">
			<div class="nav_head">
				<div style="width: 80%;margin-left: auto;margin-right: auto;">
					<span>
						<p class="nav_title"><a href="">主页</a></p>
					</span>
					<span>
						<p class="nav_title"><a href="index.jsp">搜索</a></p>
					</span>
					<span>
						<p class="nav_title"><a href="index.jsp">个人中心</a></p>
						<p><a href="index.jsp">我的订单</a></p>
						<p><a href="index.jsp">我的购物车</a></p>
						<p><a href="index.jsp">个人信息</a></p>
					</span>
					<span>
						<p class="nav_title"><a href="index.jsp">登录</a></p>
					</span>
					
					<span>
						<p class="nav_title"><a href="index.jsp">注册</a></p>
					</span>
					<span>
						<p class="nav_title">关于我们</p>
						<p><a href="index.jsp">团队介绍</a></p>
						<p><a href="index.jsp">个人业务</a></p>
						<p><a href="index.jsp">联系我们</a></p>
					</span>
					
					
									
				</div>

			</div>
		
		</div>
	
	</div>


</body>
</html>