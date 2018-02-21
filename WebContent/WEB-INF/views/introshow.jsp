<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link href="assets/css/codemirror.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="font/css/font-awesome.min.css" />
<script src="js/jquery-1.9.1.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>
<script src="js/lrtk.js" type="text/javascript"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

<title>酒店简介管理</title>

<script src="layui/layui.js" type="text/javascript"></script>
<link rel="stylesheet" href="layui/css/layui.css" />
<script type="text/javascript">



layui.use(['element', 'layer'], function(){
var element = layui.element;
var layer = layui.layer;
 
});


function add() {
	
    	
	window.location.href="introadd.jsp";
	
}


function update(id) {
	
	
    	window.location.href="introupdate?id="+id;
	
}



</script>

<script type="text/javascript">

function del(id) {
	
	layer.confirm('确认要删除吗？',function(index){
		 $.get('delaction?id='+id,function(index,item){
			location.reload();
		   $(".sort_list").load("introshow"); 
		}); 
		 layer.msg('已删除!',{icon:1,time:2000}); 
	});
	

}



</script>
<script type="text/javascript">
/*  function delAll() {
	 var list = new Array();
	 var val = $(":checkbox[name='ids']:checked");
	 if($(":checkbox[name='ids']:checked").size()==0){
		 layer.msg('您没有选择任何内容!',{icon:1,time:2000}); 
		
	 }
	 else{
		 
		alert("共删除"+$(":checkbox[name='ids']:checked").size()+"条数据"); 
		 
	 for (var i = 0; i < val.length; i++) {
		 list.push(val[i].value);
	}
	 var url = "deleteMessage.action?list="+list;
	 $.get(url,function(data){
		
		   location.reload();
		   $(".sort_list").load("introshow"); 
	 });
	 
	 layer.msg('已删除!',{icon:1,time:5000}); 
		 
	 }

	}  */
	
	
	 function delAll() {
		 var list = new Array();
		 var val = $(":checkbox[name='ids']:checked");
		 if($(":checkbox[name='ids']:checked").size()==0){
			 layer.msg('您没有选择任何内容!',{icon:1,time:2000}); 
			
		 }
		 else{
			 
			 alert("共删除"+$(":checkbox[name='ids']:checked").size()+"条数据"); 
			 
			 
		 for (var i = 0; i < val.length; i++) {
			 list.push(val[i].value);
		}
		 var url = "deleteMessage.action?list="+list;
		 
			layer.confirm('确认要删除吗？',function(index){
				 $.get(url,function(data){
						
					   location.reload();
					   $(".sort_list").load("introshow"); 
				 }); 
				 layer.msg('已删除!',{icon:1,time:2000}); 
			});
		 
			 
		 }
		 

		}

</script>

<!-- 打印的方法 -->
 <script type="text/javascript">

function preview() {
	$("#table1").show();
	document.body.innerHTML = document.getElementById('div1').innerHTML;
	window.print();
	location.href = "introshow";
}


</script> 


</head>
<body>

<div style="display:none" id="table1"></div>




  <div class="border clearfix">
       <span class="l_f">
        <a href="#" id="member_add" class="btn btn-warning" onclick="add()"><i class="icon-plus"></i>添加</a>
        <a href="#" class="btn btn-danger" onclick="delAll()"><i class="icon-trash"></i>批量删除</a>
        <a href="#" class="btn btn-danger" onclick="preview()"><i class="icon-trash"></i>打印</a> 
       </span>
      
     </div>



<div class="margin clearfix"  id="div1">
	<div class="Order_form clearfix" id="Order_form_style">
	 <div class="sort_list"> 
<table class="table table-striped table-bordered table-hover" id="sample-table">
<thead>
<tr>
<th width="80">
<label><input type="checkbox" class="ace" ><span class="lbl"></span></label></th>
<th>ID</th>
<th>公告标题</th>
<th>酒店公告</th>
<th>酒店图片</th>
<th>操作</th>
</tr>
</thead>
<tbody>
<c:forEach items="${Introlist }" var="m" varStatus="id">
<tr>
<td><label><input type="checkbox" class="ace" value="${m.id }" name="ids"><span class="lbl"></span></label></td>
<td>${id.index+1 }</td>
<td>${m.introname }</td>
<td>${m.intro_text }</td>
<td><img src="${m.img}" width="80px" height="50px"></td>
<td>
 <%-- <button class="layui-btn" onclick="update(${m.id})">编辑</button>
 <button class="layui-btn" onclick="del(${m.id})">删除</button>  --%>
 
   <a  title="修改"  onclick="update(${m.id})" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>       
   <a  href="javascript:;"  onclick="del(${m.id })" title="删除" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>
 
 
 
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
				"aTargets" : [0,2, 3,4,5]
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
	})
</script>
