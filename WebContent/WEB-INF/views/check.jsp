<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style.css" />
<link href="../assets/css/codemirror.css" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/ace.min.css" />
<link rel="stylesheet" href="../font/css/font-awesome.min.css" />
<script src="../js/jquery-1.9.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/H-ui.js"></script>
<script src="../assets/js/typeahead-bs2.min.js"></script>
<script src="../assets/js/jquery.dataTables.min.js"></script>
<script src="../assets/js/jquery.dataTables.bootstrap.js"></script>
<script src="../assets/layer/layer.js" type="text/javascript"></script>
<script src="../assets/laydate/laydate.js" type="text/javascript"></script>
<script src="../assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="../js/lrtk.js" type="text/javascript"></script>
<title>住宿管理</title>
<script>  
function preview(oper)         
{  
if (oper < 10)  
{  
bdhtml=window.document.body.innerHTML;//获取当前页的html代码  
sprnstr="<!--startprint"+oper+"-->";//设置打印开始区域  
eprnstr="<!--endprint"+oper+"-->";//设置打印结束区域  
prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html  
prnhtmlprnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html  
window.document.body.innerHTML=prnhtml;  
window.print();  
window.document.body.innerHTML=bdhtml;  
} else {  
window.print();  
}  
}  
</script> 
</head>

<body>
	<div class="margin clearfix">
		<div class="Guestbook_style">
			<div class="border clearfix">
				<span class="l_f"> <a href="roomxxadd.jsp" title="添加房间信息"
					class="btn btn-warning Order_form" onclick=preview(1) id="btnPrint"><i
						class="icon-plus"></i>打印</a> 
				</span>
			</div>
		</div>
	</div>
	<div class="margin clearfix">
		<div class="Order_form clearfix" id="Order_form_style">
			<div class="sort_list">
				<table class="table table-striped table-bordered table-hover"
					id="sample-table">
					<thead>
						<tr>
							<th>ID</th>
							<th>姓名</th>
							<th>手机</th>
							<th>身份证</th>
							<th>客户类型</th>
							<th>房间号</th>
							<!-- <th>房间类型</th> -->
							<th>入住时间</th>
							<th>离开时间</th>
							<th>预约状态</th>
							<th>房费</th>
							<th>押金</th>
							<th>支付方式</th>
							<th>备注</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${checkmap }" var="m">
							<tr>
								<td>${m.id}</td>
								<td>${m.euser.user_name}</td>
								<td>${m.euser.phone}</td>
								<td>${m.euser.idcard}</td>
								<td>${m.euser.power}</td>
								<td>${m.room.room_id}</td>
								<!-- <td>11111</td> -->
								<td>${m.in_time }</td>
								<td>${m.out_time }</td>
								<td>${m.yy_zt}</td>
								<td>${m.room_money}</td>
								<td>${m.re_money}</td>
								<td>${m.pay}</td>
								<td>${m.remark}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	//订单列表
	jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 1, 2, 3, 12, ]
			} // 制定列不参与排序
			]
		});

		$('table th input:checkbox').on(
				'click',
				function() {
					var that = this;
					$(this).closest('table').find(
							'tr > td:first-child input:checkbox').each(
							function() {
								this.checked = that.checked;
								$(this).closest('tr').toggleClass('selected');
							});

				});

		$('[data-rel="tooltip"]').tooltip({
			placement : tooltip_placement
		});
		function tooltip_placement(context, source) {
			var $source = $(source);
			var $parent = $source.closest('table')
			var off1 = $parent.offset();
			var w1 = $parent.width();

			var off2 = $source.offset();
			var w2 = $source.width();

			if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
				return 'right';
			return 'left';
		}
	});
</script>