<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息管理</title>
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
var $ = layui.jquery;
 
});

</script>

<script type="text/javascript">

function userupdate(idcard,phone,password) {
	
	$("#id1").attr("value",idcard);
	$("#id3").attr("value",phone);
	$("#id2").attr("value",password);
	var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
	var reg = /^[A-Za-z0-9]{6,10}$/;
 	layer.open( {
		type : 1,
		title : '信息修改',
		 skin: 'layui-layer-lan',
		closeBtn : 2, //不显示关闭按钮
		shade : [ 0 ],
		area : [ '480px', '350px' ],
		shift : 2,
		content : $('#userupdate'),
	    btn:['提交','取消'],
		yes:function(index,layero){
			$(".update_user input[type$='text']").each(function(n){
			
				
				var card=$("#id1").val();
				var phone=$("#id3").val();
				var ps=$("#id2").val();
				 if(card==""||phone==""||ps==""){
					 layer.alert("不能为空！");
					 return false;
				 }
				 if(card!=""&&phone!=""&&ps!=""){
					 if(myreg.test(phone)&&reg.test(ps)){
					 
			     layer.msg('正在修改！', {icon: 1});
			    setTimeout( "abc()"
			    ,1000);
				 }
					 else{
						 
						layer.alert("手机格式或密码格式错误！"); 
						 
					 }
					 
					 
					 
					 
					 
				 }
				
			});
			
		}
		
			});
 
	return false;
	
}

  function abc(){
	  document.getElementById('formid').submit(); 
	
 var index = layer.getFrameIndex(window.name);  
            layer.close(index); 
	 
	
	} 





</script>


</head>
<body>

 
     <div class="margin clearfix"  id="div1">
	<div class="Order_form clearfix" id="Order_form_style">
     
     <div class="table_menu_list">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="20"><label><input type="checkbox" class="ace"/><span class="lbl"></span></label></th>
				<th width="80">ID</th>
				<th width="100">姓名</th>
				<th width="180">身份证号</th>
                <th width="80">密码</th>
				<th width="80">电话</th>
				<th width="80">权限</th>
				<th width="80">操作</th>
			</tr>
		</thead>
	<tbody>
	<c:forEach items="${Userlist }" var="m" varStatus="id">
		<tr>
          <td><label><input type="checkbox" class="ace" name="check" value="${m.uid }"/><span class="lbl"></span></label></td>
          <td>${id.index+1 }</td>
          <td>${m.user_name }</td>
          <td>${m.idcard }</td>
          <td>${m.password }</td> 
          <td>${m.phone }</td>
          <td>
                          会员
          </td>
         <td class="td-manage">
         <a  title="修改"  onclick="userupdate('${m.idcard }','${m.phone }','${m.password }')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>     
        <%-- <a  href="javascript:;"  onclick="messagedel(${m.id })" title="删除" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a> --%>
          </td>
		</tr>
		</c:forEach>
      </tbody>
	</table>
   </div>
   </div>
   </div>
   
   <!--信息修改  -->
   <div style="display:none" id="userupdate" class="update_user">
   <center>
   <form action="userupdate" method="post" id="formid" >
   <br><br><br>
       身份证号：<input type="text" name="idcard" value="" readonly="readonly" id="id1"><br><br><br>
   &nbsp; 手机号：<input type="text" name="phone" value="" id="id3" pattern="^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$"><br><br><br>
   &nbsp;密码： &nbsp;&nbsp;<input type="text" name="password" value="" id="id2" required>
   </form>
   </center>
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
				"aTargets" : [ 0, 2,3,6,7],
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
