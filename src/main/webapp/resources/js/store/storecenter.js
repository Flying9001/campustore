$(document).ready(function(){
	var page;
	var pageCount;
	
	/*页面初始化显示------------------------------------------------------------------------------*/
	$(function(){
		initShow();
		showImages();
	});
	
	/*操作-业务导航-我的店铺-----------------------------------------------------------------------*/
	$("#ser-nav-storeinfo").click(function(){
		userSerOperation($(this));
		$.post("store/queryOne",function(data){ 
			storeInfoCall(data);
		});
	});
	/*业务-storeinfo-nav-反馈*/
	function storeInfoCall(data){
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.QUERYONE_FLAG == "success"){
				var store = obj.store;
				$("#store-sname").val(store.sname);
				$("#store-address").val(store.address);
				$("#store-storetel").val(store.storetel);
				$("#store-sstatus").val(statusResolve(store.sstatus));
				$("#store-tips").val(store.tips);
				$("#store-sowner").val(store.sowner);
				$("#store-ownertel").val(store.ownertel);
				$("#store-ownerid").val(store.ownerid);
				$("#store-owneremail").val(store.owneremail);
				
				$(".body-ser-storeinfo").show();
				storeInfoUpdateHide();
			}else{
				alert("亲，账号状态异常,请重新登录！");
				forwardToWebsite("view/store/storesignin.jsp");				
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*业务-storeinfo-update--------------------------------------*/
	$("#store-info-update button").click(function(){
		storeInfoUpdateShow();
	});
	/*业务-storeinfo-save*/
	$("#store-info-save").click(function(){
		if(validateStoreInfo()){
			var store = {
				"store.sname" : $("#store-sname").val(),
				"store.address" : $("#store-address").val(),
				"store.storetel" : $("#store-storetel").val(),
				"store.tips" : $("#store-tips").val(),
				"store.sowner" : $("#store-sowner").val(),
				"store.ownertel" : $("#store-ownertel").val(),
				"store.ownerid" : $("#store-ownerid").val(),
				"store.owneremail" : $("#store-owneremail").val()
			};
			storeInfoUpdateSubmit(store);
		}
	});
	/*店铺信息-校验*/
	function validateStoreInfo(){
		var obj = $("#store-sname");
		if(obj.val() != null && obj.val() != undefined && obj.val() != ""){
			$("#msg-store-sname").hide();
			var obj = $("#store-address");
			if(obj.val() != null && obj.val() != undefined && obj.val() != ""){
				$("#msg-store-address").hide();
				var obj = $("#store-storetel");
				if(obj.val() != null && obj.val() != undefined && obj.val() != ""){
					$("#msg-store-storetel").hide();
					var obj = $("#store-storetel");
					if(validatePhone(obj.val())){
						$("#msg-store-storetel").hide();
						var obj = $("#store-sowner");
						if(obj.val() != null && obj.val() != undefined && obj.val() != ""){
							$("#msg-store-sowner").hide();
							var obj = $("#store-ownertel");
							if(obj.val() != null && obj.val() != undefined && obj.val() != ""){
								$("#msg-store-ownertel").hide();
								var obj = $("#store-ownertel");
								if(validatePhone(obj.val())){
									$("#msg-store-ownertel").hide();
									var obj = $("#store-ownerid");
									if(obj.val() != null && obj.val() != undefined && obj.val() != ""){
										$("#msg-store-ownerid").hide();
										var obj = $("#store-ownerid");
										if(validateID(obj.val())){
											return true;
										}else{
											$("#msg-store-ownerid").text("*请输入正确的身份证号").show();
											obj.focus().select();
											return false;
										}	
									}else{
										$("#msg-store-ownerid").text("*请输入负责人身份证").show();
										obj.focus();
										return false;
									}	
								}else{
									$("#msg-store-ownertel").text("*请输入正确手机号").show();
									obj.focus().select();
									return false;
								}
							}else{
								$("#msg-store-ownertel").text("*请输入负责人电话").show();
								obj.focus();
								return false;
							}
						}else{
							$("#msg-store-sowner").text("*请输入店铺负责人").show();
							obj.focus();
							return false;
						}
					}else{
						$("#msg-store-storetel").text("*请输入正确手机号").show();
						obj.focus().select();
						return false;
					}
				}else{
					$("#msg-store-storetel").text("*请输入店铺电话").show();
					obj.focus();
					return false;
				}	
			}else{
				$("#msg-store-address").text("*请输入地址").show();
				obj.focus();
				return false;
			}
		}else{
			$("#msg-store-sname").text("*请输入店铺名!").show();
			obj.focus();
			return false;
		}
	}
	/*业务-storeinfo-save-submit*/
	function storeInfoUpdateSubmit(store){
		$.ajax({
			type: "post",
			url: "store/update",
			data: store,
			dataType: "json",
			contentType: "application/x-www-form-urlencoded",
			success: function(data){
				storeInfoUpdateCall(data);
			},
			error: function(){
				alert("Network Error..." );
			}
		});	
	}
	/*业务-storeinfo-save-反馈*/
	function storeInfoUpdateCall(data){
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.UPDATE_FLAG == "success"){
				$.alertable.alert("信息修改成功!");
				storeInfoUpdateHide();
			}else{
				alert("亲，更新失败,请重新保存！");
				forwardToWebsite("view/store/storecenter.jsp");				
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
			forwardToWebsite("homepage.jsp");
		}
	}

	/*业务-storeinfo-cencel*/
	$("#store-info-cencel").click(function(){
		$.post("store/queryOne",function(data){ 
			storeInfoCall(data);
		});
	});
	/*操作-业务导航-商品---------------------------------------------------------------------------*/
	$("#ser-nav-commodity").click(function(){
		userSerOperation($(this));
		clearTable($(".body-ser-commodity>table tr"));
		queryComByStore(0);
	});
	/*业务-commodity-nav-反馈*/
	function commodityCall(data){
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.QUERYCOMBYSTORE_FLAG == "success"){
				var cList = obj.storeCommodityList;
					page = obj.page;
				var tr = new String();
				var qUrls = "store/queryOneCom?commodity.id=";
				var cdids = "commodity-del-"
				var coids = "commodity-off-"
				for (var i = 0; i < cList.length; i++) {
					tr += "<tr><td><a href="+ qUrls + cList[i].id +">" + cList[i].cname + "</a></td>" 
						+ "<td>" + cList[i].stockcount + "</td>"
						+ "<td>" + cList[i].sales + "</td>"
						+ "<td>" + statusResolve(cList[i].cstatus) + "</td>"
						+ "<td>" + statusResolve(cList[i].prohibit) + "</td>"
						+ "<td>" + cList[i].pricein + "</td>"
						+ "<td>" + cList[i].priceout + "</td>"
						+ "<td>" + cList[i].brand + "</td>"
						+ "<td>" + cList[i].proplace + "</td>"
						+ "<td><span class='table-page' id=" + coids + cList[i].id + ">下架</span>&nbsp;&nbsp;|&nbsp;&nbsp;"
						+ "<span class='table-page' id=" + cdids + cList[i].id + ">删除</span>"
						+ "</td></tr>"; 
				}
				$(".body-ser-commodity>table tr:eq(0)").after(tr);
					paginationShow('storeCommodity',page);
				$(".body-ser-commodity").show();
				/*点击商品操作*/
				$(".body-ser-commodity>table span").click(function(){
					var cid = $(this).attr("id");
					if(/commodity-del-/.test(cid)){
						$.alertable.confirm("删除后将无法恢复,确定删除该商品？").then(function(){
							$.post("store/delOneCom",{"commodity.id":cid.substring(14)},
								function(data){ delOneComCall(data); });
						});
					}else{
						if(/commodity-off-/.test(cid)){
							var status = $(this).parent().parent().find("td").eq(3).text();
							console.log("status6: " + status);
							if(status == "True"){
								$.alertable.confirm("下架后将无法继续出售,确定下架？").then(function(){
								$.post("store/comUpdate",{"commodity.id":cid.substring(14),"commodity.cstatus":2},
									function(data){ comOffShelvesCall(data); });
								});
							}else{
								$.alertable.alert("该商品已经下架!");
							}
						}
					}
				});
			}else{
				if(obj.QUERYCOMBYSTORE_FLAG == "empty"){
					console.log("老板，咱店儿什么商品也没有啊");
					
				}else{
					alert("亲，账号状态异常,请重新登录！");
					forwardToWebsite("view/store/storesignin.jsp");				
				}
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*业务-commodity-delOneCom-反馈*/
	function delOneComCall(data){
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.DELONECOM_FLAG == "success"){
				var cid = obj.COMMODITYID;
				var num = $("#commodity-del-" + cid).parent().parent().parent().find("tr")
				 		.index($("#commodity-del-" + cid).parent().parent()[0]);
				if(num > 0){
					$(".body-ser-commodity>table tr").eq(num).remove();
				}
				$.alertable.alert("删除成功!");
			}else{
				alert("亲，删除失败,即将刷新页面！");
				forwardToWebsite("view/store/storecenter.jsp");				
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*业务-commodity-comOffShelves-反馈*/
	function comOffShelvesCall(data){
		console.log("comOffShelves,data: " + data);
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.COMUPDATE_FLAG == "success"){
				var cid = obj.COMMODITYID;
				$("#commodity-off-" + cid).parent().parent().find("td").eq(3).text("False");
				$.alertable.alert("下架成功!");
			}else{
				alert("亲，下架失败,即将刷新页面！");
				forwardToWebsite("view/store/storecenter.jsp");				
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*业务-commodity-翻页*/
	$("#storeCommodity-first").click(function(){
		/*页面显示*/
		userSerOperation($("#ser-nav-commodity"));
		clearTable($(".body-ser-commodity>table tr"));
		/*商品-查询*/
		queryComByStore(0);
	});
	$("#storeCommodity-pre").click(function(){
		userSerOperation($("#ser-nav-commodity"));
		clearTable($(".body-ser-commodity>table tr"));
		queryComByStore(page.pagenum-1);
	});
	$("#storeCommodity-next").click(function(){
		userSerOperation($("#ser-nav-commodity"));
		clearTable($(".body-ser-commodity>table tr"));
		queryComByStore(page.pagenum+1);
	});
	$("#storeCommodity-end").click(function(){
		userSerOperation($("#ser-nav-commodity"));
		clearTable($(".body-ser-commodity>table tr"));
		queryComByStore(pageCount-1);
	});
	/*操作-业务导航-订单---------------------------------------------------------------------------*/
	$("#ser-nav-order").click(function(){
		userSerOperation($(this));
		clearTable($(".body-ser-order>table tr"));
		queryOrderByStore(0);
	});
	/*业务-order-nav-反馈*/
	function orderCall(data){
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.QUERYORDERBYSTORE_FLAG == "success"){
				var oList = obj.storeOrderList;
				var cList = obj.storeCommodityList;
				var uList = obj.storeUserList;
				var pList = obj.storePayList;
					page = obj.page;
				var tr = new String();
				var qUrls = "store/queryOneCom?commodity.id=";
				var cqids = "order-query-"
				for (var i = 0; i < oList.length; i++) {
					tr += "<tr><td><a href="+ qUrls + cList[i].id +">" + cList[i].cname + "</a></td>" 
						+ "<td>" + uList[i].nickname + "</td>"
						+ "<td>" + cList[i].priceout + "</td>"
						+ "<td>" + oList[i].ccount + "</td>"
						+ "<td>" + cList[i].priceout * oList[i].ccount + "</td>"
						+ "<td>" + pList[i].pay + "</td>"
						+ "<td>" + oList[i].sendtime + "</td>"
						+ "<td>" + statusResolve(oList[i].ostatus) + "</td>"
						+ "<td><span class='table-page' id=" + cqids + oList[i].id + ">详情</span></td>"
						+ "</tr>"; 
				}
				$(".body-ser-order>table tr:eq(0)").after(tr);
					paginationShow('storeOrder',page);
				$(".body-ser-order").show();
				/*点击订单操作*/
				$(".body-ser-order>table span").click(function(){
					var oid = $(this).attr("id");
					if(/order-query-/.test(oid)){
						forwardToWebsite("store/queryOneOrder?order.id=" + oid.substring(12));
					}
				});
			}else{
				if(obj.QUERYORDERBYSTORE_FLAG == "empty"){
					console.log("老板，咱店儿还没有客户光顾呢!");
					
				}else{
					alert("亲，账号状态异常,请重新登录！");
					forwardToWebsite("view/store/storesignin.jsp");				
				}
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*业务-order-翻页*/
	$("#storeOrder-first").click(function(){
		userSerOperation($("#ser-nav-order"));
		clearTable($(".body-ser-order>table tr"));
		queryOrderByStore(0);
	});
	$("#storeOrder-pre").click(function(){
		userSerOperation($("#ser-nav-order"));
		clearTable($(".body-ser-order>table tr"));
		queryOrderByStore(page.pagenum-1);
	});
	$("#storeOrder-next").click(function(){
		userSerOperation($("#ser-nav-order"));
		clearTable($(".body-ser-order>table tr"));
		queryOrderByStore(page.pagenum+1);
	});
	$("#storeOrder-end").click(function(){
		userSerOperation($("#ser-nav-order"));
		clearTable($(".body-ser-order>table tr"));
		queryOrderByStore(pageCount-1);
	});
	/*操作-业务导航-员工---------------------------------------------------------------------------*/
	$("#ser-nav-employee").click(function(){
		userSerOperation($(this));
		clearTable($(".body-ser-employee>table tr"));
		queryEmpByCondition(0);
	});
	/*业务-Employee-nav-反馈*/
	function employeeCall(data){
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.QUERYEMPBYCONDITION_FLAG == "success"){
				var eList = obj.storeEmployeeList;
					page = obj.page;
				var tr = new String();
				var eUrls = "store/queryOneEmp?employee.id=";
				var eqids = "employee-query-"
				var edids = "employee-del-"
				for (var i = 0; i < eList.length; i++) {
					tr += "<tr><td><a href="+ eUrls + eList[i].id +">" + eList[i].ename + "</a></td>" 
						+ "<td>" + eList[i].sex + "</td>"
						+ "<td>" + eList[i].age + "</td>"
						+ "<td>" + eList[i].phone + "</td>"
						+ "<td>" + eList[i].idcard + "</td>"
						+ "<td>" + eList[i].grade + "</td>"
						+ "<td>" + eList[i].address + "</td>"
						+ "<td>" + eList[i].lasttime + "</td>"
						+ "<td><span class='table-page' id=" + eqids + eList[i].id + ">详细</span>&nbsp;&nbsp;|&nbsp;&nbsp;"
						+ "<span class='table-page' id=" + edids + eList[i].id + ">删除</span>"
						+ "</td></tr>"; 
				}
				$(".body-ser-employee>table tr:eq(0)").after(tr);
					paginationShow('storeEmployee',page);
				$(".body-ser-employee").show();
				/*点击员工操作*/
				$(".body-ser-employee>table span").click(function(){
					var eid = $(this).attr("id");
					if(/employee-query-/.test(eid)){
						forwardToWebsite("store/queryOneEmp?employee.id=" + eid.substring(15));
					}else{
						if(/employee-del-/.test(eid)){
							$.alertable.confirm("删除后将无法恢复,确定删除该名员工？").then(function(){
							$.post("store/delOneEmp",{"employee.id":eid.substring(13)},
								function(data){ delOneEmpCall(data); });
							});
						}
					}
				});
			}else{
				if(obj.QUERYEMPBYCONDITION_FLAG == "empty"){
					console.log("老板，咱店儿还没有员工呢!");
					
				}else{
					alert("亲，账号状态异常,请重新登录！");
					forwardToWebsite("view/store/storesignin.jsp");				
				}
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*业务-Employee-delOneEmp-反馈*/
	function delOneEmpCall(data){
		if(data.match("^\{(.+:.+,*){1,}\}$")){
			var obj = eval("(" + data + ")");
			if(obj.DELONEEMP_FLAG == "success"){
				var eid = obj.EMPLOYEEID;
				var num = $("#employee-del-" + eid).parent().parent().parent().find("tr")
				 		.index($("#employee-del-" + eid).parent().parent()[0]);
				if(num > 0){
					$(".body-ser-employee>table tr").eq(num).remove();
				}
				$.alertable.alert("删除成功!");
			}else{
				alert("亲，删除失败,即将刷新页面！");
				forwardToWebsite("view/store/storecenter.jsp");				
			}
		}else{
			alert("亲，系统异常,即将返回主页面！");
			forwardToWebsite("homepage.jsp");
		}
	}
	/*业务-order-翻页*/
	$("#storeEmployee-first").click(function(){
		userSerOperation($("#ser-nav-employee"));
		clearTable($(".body-ser-employee>table tr"));
		queryEmpByCondition(0);
	});
	$("#storeEmployee-pre").click(function(){
		userSerOperation($("#ser-nav-employee"));
		clearTable($(".body-ser-employee>table tr"));
		queryEmpByCondition(page.pagenum-1);
	});
	$("#storeEmployee-next").click(function(){
		userSerOperation($("#ser-nav-employee"));
		clearTable($(".body-ser-employee>table tr"));
		queryEmpByCondition(page.pagenum+1);
	});
	$("#storeEmployee-end").click(function(){
		userSerOperation($("#ser-nav-employee"));
		clearTable($(".body-ser-employee>table tr"));
		queryEmpByCondition(pageCount-1);
	});
	
	/*业务工具类函数-------------------------------------------------------------------------------*/
	/*店铺信息-修改-显示*/
	function storeInfoUpdateShow(){
		$("#store-sname,#store-address,#store-storetel,#store-tips,#store-sowner,#store-ownertel," +
			"#store-ownerid,#store-owneremail").removeAttr("disabled").css({"background":"#F8FEFA","color":"#4CB881"});
		$("#store-info-update").hide();
		$("#store-info-updated").show();
	}
	/*店铺信息-修改-隐藏*/
	function storeInfoUpdateHide(){
		$("#store-sname,#store-address,#store-storetel,#store-tips,#store-sowner,#store-ownertel," +
			"#store-ownerid,#store-owneremail").attr("disabled","disabled").css({"background":"#F5F5F5","color":"#4169e1"});
		$("#store-info-update").show();
		$("#store-info-updated,#msg-store-sname,#msg-store-address,#msg-store-storetel,#msg-store-sowner,#msg-store-ownertel," +
			"#msg-store-ownerid").hide();
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
	/*初始化显示*/
	function initShow(){
		$("#body-ser-tips").text($("#ser-nav-storeinfo").text());
		$("#ser-nav-storeinfo").addClass("ser-nav-mark");
		$("#store-sstatus").val(statusResolve($("#store-sstatus").val()));
	}
	/*店铺 logo 显示*/
	function showImages(){
		var userImg = $("#body-ser-logo img");
		if(userImg[0].id != null && userImg[0].id != '' && userImg[0].id != "暂无图片"){
			userImg[0].src = "resource/store/" + userImg[0].id;
		}else{
			userImg[0].src = "resource/store/headmodel1.jpg";
		}
	}
	/*业务操作显示*/
	function userSerOperation(service){
		$(".body-ser-storeinfo,.body-ser-commodity,.body-ser-order,.body-ser-employee,.body-ser-data,.body-ser-capiral").hide();
		$("#ser-nav-storeinfo,#ser-nav-commodity,#ser-nav-order,#ser-nav-employee,#ser-nav-data,#ser-nav-capiral").removeClass("ser-nav-mark");
		service.addClass("ser-nav-mark");
		$("#body-ser-tips").text(service.text());
	}
	/*业务-commodity-查询ByStore*/
	function queryComByStore(pagenum){
		$.post("store/queryComByStore",{"page.pagenum":pagenum,"page.limitnum":10},function(data){ 
			commodityCall(data);
		});
	}
	/*业务-commodity-查询ByStore*/
	function queryOrderByStore(pagenum){
		$.post("store/queryOrderByStore",{"page.pagenum":pagenum,"page.limitnum":10},function(data){ 
			orderCall(data);
		});
	}
	/*业务-Employee-查询ByCondition*/
	function queryEmpByCondition(pagenum){
		$.post("store/queryEmpByCondition",{"page.pagenum":pagenum,"page.limitnum":10},function(data){ 
			employeeCall(data);
		});
	}
	/*分页-显示*/
	function paginationShow(operation,page){
		/*总页数*/
		pageCount = page.count % page.limitnum;
		if(pageCount == 0){
			pageCount = Math.floor(page.count / page.limitnum);
		}else{
			pageCount = Math.floor(page.count / page.limitnum) + 1;
		}
		/*上一页-显示*/
		if(page.pagenum > 0){
			$("#"+operation+"-pre").show();
		}else{
			$("#"+operation+"-pre").hide();
		}
		/*下一页-显示*/
		if(page.pagenum < (pageCount - 1)){
			$("#"+operation+"-next").show();
		}else{
			$("#"+operation+"-next").hide();
		}
		$("#"+operation+"-pagenum").text(page.pagenum+1);
		$("#"+operation+"-pageCount").text(pageCount);
		$("#"+operation+"-count").text(page.count);
	}
	/*公共工具函数--------------------------------------------------------------------------------*/
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
	/*清空表格内容*/
	function clearTable(table){
		var count = table.length-2;
		/*保留表格的首尾行*/
		for (var i = 1; i < count; i++) {
			table.eq(i).remove();
		}
	}
	
	
});