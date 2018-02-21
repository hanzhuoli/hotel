
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>留言列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link href="assets/css/codemirror.css" rel="stylesheet"/>
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="font/css/font-awesome.min.css" />
<script src="js/jquery-1.9.1.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>
<script src="js/lrtk.js" type="text/javascript"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
<script src="assets/layer/layer.js" type="text/javascript"></script>
<script src="layui/layui.js" type="text/javascript"></script>
<link rel="stylesheet" href="layui/css/layui.css" />

<script type="text/javascript">


layui.use(['element', 'layer'], function(){
var element = layui.element;
var layer = layui.layer;
 
});


</script>




<script type="text/javascript">
function messagedel(id) {
	

	 layer.confirm('确认要删除吗，删除后不能恢复', {
		title : '删除确认'
	}, function(index) {
		layer.close(index);
		$.get('messagedel?id='+id,
			 function() {
			 layer.msg('删除成功！', {
				    time: 1000 //20s后自动关闭
				  });
			  window.location.href="messageshow"; 
			
			});
	 
		}); 
	

}


 function txtdelAll() {
	var arr=new Array();
	var txtcheck=$(":checkbox[name='check']:checked");
	if(txtcheck.size()==0){
		
		 layer.msg('您没有选择任何内容!',{icon:1,time:2000}); 
		
	}
	else{
		
		alert("共删除"+txtcheck.size()+"条数据");
	for (var int = 0; int < txtcheck.length; int++) {
		arr.push(txtcheck[int].value);
		
	}
	var url="TxtdelAll?arr="+arr;
	 layer.confirm('确认要删除吗？',function(index){
		 $.get(url,function(data){
				
			   location.reload();
			   $(".table_menu_list").load("messageshow"); 
		 }); 
		 layer.msg('已删除!',{icon:1,time:2000}); 
	});
	
	}
	
} 


</script>






</head>

<body>

     <!---->
     <div class="border clearfix">
       <span class="l_f">
        <a href="#" class="btn btn-danger" onclick="txtdelAll()"><i class="icon-trash"></i>批量删除</a>
       </span>
     </div>
     <!---->
     
     <div class="margin clearfix"  id="div1">
	<div class="Order_form clearfix" id="Order_form_style">
     
     <div class="table_menu_list">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="20"><label><input type="checkbox" class="ace"/><span class="lbl"></span></label></th>
				<th width="80">ID</th>
				<th width="100">留言</th>
				<th width="180">留言时间</th>
                <th width="100">星级</th>
				<th width="80">操作</th>
			</tr>
		</thead>
	<tbody>
	<c:forEach items="${txlist }" var="m" varStatus="id">
		<tr>
          <td><label><input type="checkbox" class="ace" name="check" value="${m.id }"/><span class="lbl"></span></label></td>
          <td>${id.index+1 }</td>
          <td>${m.txt_context }</td>
          <td>${m.txt_date }</td>
          <td>${m.txt_star }</td>    
         <td class="td-manage">
       <%--  <a  title="修改"  onclick="Guestbook_iew(${ll.id })" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>       --%>
        <a  href="javascript:;"  onclick="messagedel(${m.id })" title="删除" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>
          </td>
		</tr>
		</c:forEach>
      </tbody>
	</table>
	
   </div>
   </div>
   </div>
 
</body>
</html>
<script type="text/javascript">
	jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable({
			/* "aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存 */
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 2,3,5],
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
			var $parent = $source.closest('table');
			var off1 = $parent.offset();
			var w1 = $parent.width();

			var off2 = $source.offset();
			var w2 = $source.width();

			if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
				return 'right';
			return 'left';
		}
	})
</script>
