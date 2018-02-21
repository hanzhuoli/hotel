 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>简介修改</title>
<link rel="stylesheet" href="assets/layer/skin/layer.css" />
<script src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src= "CKeditor/ckeditor.js"></script>
<script src="layui/layui.js" type="text/javascript"></script>
<link rel="stylesheet" href="layui/css/layui.css" />
<script type="text/javascript">
layui.use(['element', 'layer','form'], function(){
	var element = layui.element;
	var layer = layui.layer;
	var form=layui.form;
	
	});


</script>
<script type="text/javascript">
 function han() {
	 
	 layer.confirm('确定提交吗？', {
	     btn: ['确定','取消'] //按钮
	     }, function(){
	  layer.msg('正在修改！', {icon: 1});
	   setTimeout( "abc()"
	   ,1000);
	 
	  }, function(){
	  layer.msg('正在取消！', {
	    time: 2000 //20s后自动关闭
	  });
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
<br>
<fieldset style="border-color: #1E9FFF">
<legend><font size="6" face="华文新巍" color="#1E9FFF">修改系统信息</font></legend>
<br>
<form class="layui-form" action="introtoupdate" enctype="multipart/form-data" method="post" id="formid"
onsubmit="return han()" name="hform">
<c:forEach items="${map1}" var="m">
<div class="layui-form-item">
    <label class="layui-form-label">公告标题:</label>
    <div class="layui-input-inline">
      <input type="text" name="introname" required lay-verify="required" value="${m.introname }" autocomplete="off" class="layui-input">
   <input type="hidden" name="id" value="${m.id}">
    </div>
  </div>
  
   <div class="layui-upload">
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  图片显示：<img  src="${m.img}"  width="80px" height="50px"  name="img"><br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  图片上传： <input type="file" name="img" value="">

</div> 
   
 <br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <font size="3">酒店公告:</font><br><br>  
  <textarea name="intro_text" >${m.intro_text }</textarea>
  <br>
  </c:forEach>
  <center>
    <button class="layui-btn layui-btn-sm layui-btn-normal">提交</button>
   <button class="layui-btn layui-btn-sm layui-btn-normal" type="reset">重置</button>
  </center>
  </form>
  </fieldset>
  
  
  
  <script type="text/javascript">
CKEDITOR.replace('intro_text');
</script>


</body>
</html>