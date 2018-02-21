<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8" />
<title>酒店管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="css/style.css" />
<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
<script src="assets/js/ace-extra.min.js"></script>
<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<!--[if !IE]> -->
<script src="js/jquery-1.9.1.min.js"></script>
<!-- <![endif]-->
<!--[if IE]>
         <script type="text/javascript">window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");</script>
        <![endif]-->
<script type="text/javascript">
	if ("ontouchend" in document)
		document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
				+ "<"+"script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>
<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>
<script src="assets/layer/layer.js" type="text/javascript"></script>
<script src="assets/laydate/laydate.js" type="text/javascript"></script>
<link rel="stylesheet" href="jquery-easyui-1.5.3/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/themes/icon.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/themes/color.css">
<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.easyui.min.js"></script>

<script type="text/javascript">
	$(function() {
		var cid = $('#nav_list> li>.submenu');
		cid.each(function(i) {
			$(this).attr('id', "Sort_link_" + i);

		})
	})
	jQuery(document)
			.ready(
					function() {
						$.each($(".submenu"), function() {
							var $aobjs = $(this).children("li");
							var rowCount = $aobjs.size();
							var divHeigth = $(this).height();
							$aobjs.height(divHeigth / rowCount);
						});
						//初始化宽度、高度    
						$("#main-container").height($(window).height() - 76);
						$("#iframe").height($(window).height() - 140);

						$(".sidebar").height($(window).height() - 99);
						var thisHeight = $("#nav_list").height(
								$(window).outerHeight() - 173);
						$(".submenu").height();
						$("#nav_list").children(".submenu").css("height",
								thisHeight);

						//当文档窗口发生改变时 触发  
						$(window).resize(
								function() {
									$("#main-container").height(
											$(window).height() - 76);
									$("#iframe").height(
											$(window).height() - 140);
									$(".sidebar").height(
											$(window).height() - 99);

									var thisHeight = $("#nav_list").height(
											$(window).outerHeight() - 173);
									$(".submenu").height();
									$("#nav_list").children(".submenu").css(
											"height", thisHeight);
								});
						$(".iframeurl")
								.click(
										function() {
											var cid = $(this).attr("name");
											var cname = $(this).attr("title");
											$("#iframe").attr("src", cid)
													.ready();
											$("#Bcrumbs").attr("href", cid)
													.ready();
											$(".Current_page a").attr('href',
													cid).ready();
											$(".Current_page")
													.attr('name', cid);
											$(".Current_page").html(cname).css(
													{
														"color" : "#333333",
														"cursor" : "default"
													}).ready();
											$("#parentIframe")
													.html(
															'<span class="parentIframe iframeurl"> </span>')
													.css("display", "none")
													.ready();
											$("#parentIfour").html('').css(
													"display", "none").ready();
										});

					});

	//jQuery( document).ready(function(){
	//	  $("#submit").click(function(){
	//	// var num=0;
	//     var str="";
	//     $("input[type$='password']").each(function(n){
	//          if($(this).val()=="")
	//          {
	//              // num++;
	//			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
	//                title: '提示框',				
	//				icon:0,				
	//          }); 
	//             // layer.msg(str+=""+$(this).attr("name")+"不能为空！\r\n");
	//             layer.close(index);
	//          }		  
	//     });    
	//})		
	//	});
	/*********************点击事件*********************/
	$(document).ready(
			function() {
				$('#nav_list').find('li.home').click(function() {
					$('#nav_list').find('li.home').removeClass('active');
					$(this).addClass('active');
				});

				//时间设置
				function currentTime() {
					var d = new Date(), str = '';
					str += d.getFullYear() + '年';
					str += d.getMonth() + 1 + '月';
					str += d.getDate() + '日';
					str += d.getHours() + '时';
					str += d.getMinutes() + '分';
					str += d.getSeconds() + '秒';
					return str;
				}
				setInterval(function() {
					$('#time').html(currentTime)
				}, 1000);
				//修改密码
				$('.change_Password').on(
						'click',
						function() {
							layer.open({
								type : 1,
								title : '修改密码',
								area : [ '300px', '300px' ],
								shadeClose : true,
								content : $('#change_Pass'),
								btn : [ '确认修改' ],
								yes : function(index, layero) {
									if ($("#password").val() == "") {
										layer.alert('原密码不能为空!', {
											title : '提示框',
											icon : 0,

										});
										return false;
									}
									if ($("#Nes_pas").val() == "") {
										layer.alert('新密码不能为空!', {
											title : '提示框',
											icon : 0,

										});
										return false;
									}

									if ($("#c_mew_pas").val() == "") {
										layer.alert('确认新密码不能为空!', {
											title : '提示框',
											icon : 0,

										});
										return false;
									}
									if (!$("#c_mew_pas").val
											|| $("#c_mew_pas").val() != $(
													"#Nes_pas").val()) {
										layer.alert('密码不一致!', {
											title : '提示框',
											icon : 0,

										});
										return false;
									} else {
										layer.alert('修改成功！', {
											title : '提示框',
											icon : 1,
										});
										layer.close(index);
									}
								}
							});
						});
				$('#Exit_system').on('click', function() {
					layer.confirm('是否确定退出系统？', {
						btn : [ '是', '否' ],//按钮
						icon : 2,
					}, function() {
						location.href = "login.html";

					});
				});
			})
</script>
<script>
function beifen(){  
    $.ajax({  
        type:'post',
        url:'http://172.16.7.11:8080/Hotel2/reqs/beifen',  
        success:function(result){
        	var result = $.parseJSON(result);//字符串转JSON
			 if(result.status == "ok"){
				layer.confirm('备份成功！', {
					btn : [ '确定' ],//按钮
					icon : 1,
				}, function() {
					location.href = "index.jsp";

				});
			}else{
				layer.confirm('备份失败！', {
					btn : [ '确定' ],//按钮
					icon : 1,
				}, function() {
					location.href = "index.jsp";
				});
			}
        }  
    });  
}  


function huanyuann(){  
	$("#huanyuann").window('open');
    
}  

</script>
	<script type="text/javascript">
		function init(){
			$.ajax({
				type:'post',
		        url:'reqs/init',  
		        success:function(result){
		        	
		        }
				
			});
		}
	</script>
<style type="text/css">
.pull-left {
	margin-top: 16px;
}

.breadcrumb {
	margin-top: 10px;
}
.menu-text{
  margin-top: 8px;
  font-size: 14px;
}
.icon-dashboard,.icon-picture,.icon-list,.icon-edit,.icon-cogs,.icon-desktop,.icon-user{
float: left;
}
</style>
</head>
<body>
	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>
		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <span class="pull-left">
						<h1>
							<span><i class="icon-home"></i> </span>
							<span class="orange">酒店</span> <span
								class="white">管理系统</span>
						</h1>
				</span> <small> <!-- <img src="images/logo.png"> -->

				</small>
				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->



			<div class="navbar-header pull-right" role="navigation">

				<ul class="nav ace-nav">
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <span class="time"><em
								id="time"></em></span><span class="user-info"><small>欢迎光临</small>ADMIN
						</span> <i class="icon-caret-down"></i>
					</a>
						<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#" id="beifen" onclick="beifen()">
								<i class="icon-cog"></i>系统备份</a></li>
							<li><a href="#" id="huanyuan" onclick="huanyuann()">
								<i class="icon-cog"></i>系统还原</a></li>
							<li><a href="#" id="init" onclick="init()">
								<i class="icon-cog"></i>系统初始化</a></li>
							<!-- <li><a href="#"><i class="icon-user"></i>个人资料</a></li>  -->
							<li class="divider"></li>
							<li><a href="javascript:ovid(0)" id="Exit_system"><i
									class="icon-off"></i>退出</a></li>
						</ul></li>
					<li class="purple">
						<!-- <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-bell-alt"></i><span class="badge badge-important"></span></a> -->
						<!-- <ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                            <li class="dropdown-header"><i class="icon-warning-sign"></i>8条通知</li>
                            <li>
                              <a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												新评论
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-xs btn-primary icon-user"></i>
										切换为编辑登录..
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												新订单
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info icon-twitter"></i>
												退订信息
											</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										查看所有通知
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul> -->
					</li>

				</ul>
				<!-- <div class="right_info">
                 
                   <div class="get_time" ><span id="time" class="time"></span>欢迎光临,管理员</span></div>
					<ul class="nav ace-nav">	
						<li><a href="javascript:ovid(0)" class="change_Password">修改密码</a></li>
                        <li><a href="javascript:ovid(0)" id="Exit_system">退出系统</a></li>
                       
					</ul>
				</div>-->
			</div>

		</div>

	</div>

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>
			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						酒店管理系统</div>
					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span> <span class="btn btn-info"></span>
						<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
					</div>
				</div>
				<!-- #sidebar-shortcuts -->
				<ul class="nav nav-list" id="nav_list">
					<li class="home"><a href="javascript:void(0)" name="newshow"
						class="iframeurl" title=""><i class="icon-dashboard"></i><span
							class="menu-text"> 系统首页 </span></a></li>
							<!-- <a href="http://172.16.7.39:8080/Hotel/newshow">hanzhuoli</a> -->
					<li><a href="#" class="dropdown-toggle"><i 
							class="icon-desktop"></i><span class="menu-text"> 住宿管理 </span><b 
							class="arrow icon-angle-down"></b></a>
					   <ul class="submenu">
                         <li class="home"><a  href="javascript:void(0)" 
                         	name="http://172.16.7.47:8080/Hotel/syshow"  title="入住登记" class="iframeurl"><i 
                         	class="icon-double-angle-right"></i>入住登记</a></li>
						 <li class="home"><a  href="javascript:void(0)" 
						 	name="http://172.16.7.47:8080/Hotel/hfshow" title="调房登记"  class="iframeurl"><i 
						 	class="icon-double-angle-right"></i>调房登记</a></li>
						 <li class="home"><a href="javascript:void(0)" 
						 	name="http://172.16.7.47:8080/Hotel/tfshow" title="退房结账"  class="iframeurl"><i 
						 	class="icon-double-angle-right"></i>退房结账</a></li>

						</ul>
					</li>
					<li><a href="#" class="dropdown-toggle"><i
							class="icon-picture "></i><span class="menu-text"> 客房管理 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="http://172.16.7.151:8080/Hotel/roomxxshow" title="客房类别" class="iframeurl"><i
									class="icon-double-angle-right"></i>客房类别</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="http://172.16.7.151:8080/Hotel/import" title="房间录入" class="iframeurl"><i
									class="icon-double-angle-right"></i>房间录入</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="http://172.16.7.151:8080/Hotel/roomshow" title="客房设置" class="iframeurl"><i
									class="icon-double-angle-right"></i>客房设置</a></li>
						</ul></li>
					<!-- <li>
					<a href="#" class="dropdown-toggle"><i class="icon-user"></i><span class="menu-text"> 会员管理 </span><b class="arrow icon-angle-down"></b></a>
                    <ul class="submenu">
                    <li class="home"><a href="javascript:void(0)" name="user_list.html" title="会员列表"  class="iframeurl"><i class="icon-double-angle-right"></i>会员列表</a></li>
                    <li class="home"><a href="javascript:void(0)" name="member-Grading.html" title="等级管理"  class="iframeurl"><i class="icon-double-angle-right"></i>等级管理</a></li>
                    <li class="home"><a href="javascript:void(0)" name="integration.html" title="会员记录管理"  class="iframeurl"><i class="icon-double-angle-right"></i>会员记录管理</a></li>

                   </ul>
				   </li> -->
					<li><a href="#" class="dropdown-toggle"><i
							class="icon-user"></i><span class="menu-text"> 查询统计 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="http://172.16.7.47:8080/Hotel/ydshow" title="预定房查看" class="iframeurl"><i
									class="icon-double-angle-right"></i>预定房查看</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="http://172.16.7.47:8080/Hotel/zsshow" title="住宿查询" class="iframeurl"><i
									class="icon-double-angle-right"></i>住宿查询</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="" title="退房查询" class="iframeurl"><i
									class="icon-double-angle-right"></i>退房查询</a></li>
							<!-- <li class="home"><a href="javascript:void(0)" name="Order_handling.html" title="订单处理"  class="iframeurl"><i class="icon-double-angle-right"></i>订单处理</a></li>
                    <li class="home"><a href="javascript:void(0)" name="Cover_management.html" title="支付管理"  class="iframeurl"><i class="icon-double-angle-right"></i>支付管理</a></li> -->
						</ul></li>

					<li><a href="#" class="dropdown-toggle"><i
							class="icon-edit"></i><span class="menu-text"> 业务统计 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="http://localhost:8080/tom_report/ReportServer?reportlet=costTotal.cpt"
								title="营业额统计报表" class="iframeurl"><i
									class="icon-double-angle-right"></i>营业额统计报表</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="http://localhost:8080/tom_report/ReportServer?reportlet=roomtype3.cpt"
								title="入住房屋数量报表" class="iframeurl"><i
									class="icon-double-angle-right"></i>入住房屋数量报表</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="http://localhost:8080/tom_report/ReportServer?reportlet=ruzhulv.cpt"
								title="预定入住率报表" class="iframeurl"><i
									class="icon-double-angle-right"></i>预定入住率报表</a></li>

						</ul></li>

					<li><a href="#" class="dropdown-toggle">
							<i class="icon-list"></i>
							<span class="menu-text">商品管理 </span>
							<b class="arrow icon-angle-down"></b>
						</a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)" 
								name="http://172.16.7.11:8080/Hotel2/hua/showShangpin" title="商品列表"  class="iframeurl">
								<i class="icon-double-angle-right"></i>商品列表</a>
							</li>
							<li class="home"><a href="javascript:void(0)" 
								name="http://172.16.7.11:8080/Hotel2/sell/showSellList" title="商品销售" class="iframeurl">
								<i class="icon-double-angle-right"></i>商品销售</a>
							</li>
						</ul>
					</li>
					
					<li><a href="#" class="dropdown-toggle"><i class="icon-cogs"></i>
						<span class="menu-text">系统管理</span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)" 
									name="http://172.16.7.39:8080/Hotel/introshow" title="酒店简介管理" class="iframeurl"><i 
									class="icon-double-angle-right"></i>酒店简介管理</a></li>
                                <li class="home"><a href="javascript:void(0)" 
                                	name="http://172.16.7.39:8080/Hotel/messageshow" title="留言管理" class="iframeurl"><i 
                                	class="icon-double-angle-right"></i>留言管理</a></li>
                                <li class="home"><a href="javascript:void(0)" 
                                	name="http://172.16.7.39:8080/Hotel/usershow" title="信息管理" class="iframeurl"><i 
                                	class="icon-double-angle-right"></i>信息管理</a></li>
							</ul>
						</li>

				</ul>
				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>
				</div>
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>
			<div class="main-content">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="index.jsp">首页</a>
						</li>
						<li class="active"><span class="Current_page iframeurl"></span></li>
						<li class="active" id="parentIframe"><span
							class="parentIframe iframeurl"></span></li>
						<li class="active" id="parentIfour"><span
							class="parentIfour iframeurl"></span></li>
					</ul>
				</div>
				<iframe id="iframe"
					style="border: 0; width: 80%; background-color: #FFF;"
					name="iframe" frameborder="0" src="home.jsp"> </iframe>

				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->
			<div class="ace-settings-container" id="ace-settings-container">

				<iframe id=""
					style="border: 0; width: 100%; height: 800px; background-color: #FFF;"
					name="" frameborder="0" src="right.jsp"> </iframe>


			</div>
			<!-- /#ace-settings-container -->

		</div>
		<!-- /.main-container-inner -->

	</div>

	<!--底部样式-->

	<div class="footer_style" id="footerstyle">
		<p class="l_f">版权所有：太原中软软件 晋ICP备11011739号</p>
		<p class="r_f">地址：太原西太堡街盛世大厦 邮编：045000 技术支持：6人小组</p>
	</div>
	<!--修改密码样式-->
	<div class="change_Pass_style" id="change_Pass">
		<ul class="xg_style">
			<li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input
				name="原密码" type="password" class="" id="password"></li>
			<li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input
				name="新密码" type="password" class="" id="Nes_pas"></li>
			<li><label class="label_name">确认密码</label><input name="再次确认密码"
				type="password" class="" id="c_mew_pas"></li>

		</ul>
		<!--       <div class="center"> <button class="btn btn-primary" type="button" id="submit">确认修改</button></div>-->
	</div>
	<!-- /.main-container -->
	<!-- basic scripts -->
	<div id="huanyuann" closed="true" class="easyui-window" title="请选择要还原的版本" style="width:400px;height:200px;" modal="true">
		<form action="" method="post" onsubmit="return false">
			<br><br>
			<center>
			<input type="file" id="restore" name="restore"  ><br><br>
			<button onclick="tijiao()" class="icon-double-angle-right">提交</button>
			</center>
			
		</form>
		<script type="text/javascript">
			function tijiao(){
				var filename = document.getElementById('restore').files[0].name;
				
				$.get("reqs/huanyuan?restore="+filename,function(date){
					console.log(date);
					var result = $.parseJSON(date);//字符串转JSON
					alert(result.message);
					$(":file[name='restore']").val("");
					$("#huanyuann").window('close');
					
				});
				
			}

		</script>
	</div>
</body>
</html>