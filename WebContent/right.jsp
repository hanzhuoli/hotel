<%@page import="com.chinasofti.ssm.hotel.entity.Check"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
        <link href="assets/css/codemirror.css" rel="stylesheet">
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
        		<!--[if !IE]> -->
		<script src="assets/js/jquery.min.js"></script>        
		<!-- <![endif]-->
        <script src="assets/dist/echarts.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <title>最新消息</title>
      <style type="text/css">
      .news_style{
       height: 860px;
      }
      </style>
       </head>
		
<body>

 <div class="page-content clearfix">
             <div class="clearfix">
         <div class="news_style">
          <div class="title_name">最新消息</div>
          <ul >
        <div id="one">
       <script type="text/javascript">
       var obj;
       $.ajax({
    	   type: "GET",
    	   url:  "newshow",
    	   
    	   dataType:"JSON",
    	   success: function(msg){
    		   var today=new Date();//定义日期对象   
               var yyyy = today.getFullYear();//通过日期对象的getFullYear()方法返回年    
               var MM = today.getMonth()+1;//通过日期对象的getMonth()方法返回月   
               var dd = today.getDate();//通过日期对象的getDate()方法返回日期
               var myDate =  yyyy+"-"+MM +"-"+ dd ;
               console.log(myDate);
               var abc ="";
               if (today.getHours()<=24) { 
               	for (var int = 0; int < msg.length; int++) {
               		var yjout_time = msg[int].yjout_time;
           			var yj=new Date(Date.parse(yjout_time.replace(/-/,"/")));
           	        var dr=yj.getFullYear();
           	        var month=yj.getMonth()+1;
           	        var date=yj.getDate();
           	        var rztime=dr+"-"+month+"-"+date;
           		
           			 if (myDate==rztime) { 
           				abc +='<br><li>&nbsp;&nbsp;<i class="icon-bell red"></i><a>房间号'+msg[int].room.room_id+'&nbsp;&nbsp;住户'+msg[int].euser.user_name +'退房时间将到</a></li>'; 
           			 }; 
           			 
   				}
   			 } 
   			document.getElementById("one").innerHTML=abc;
    		  
    	   }
    	});
          
			/* var today=new Date();//定义日期对象   
            var yyyy = today.getFullYear();//通过日期对象的getFullYear()方法返回年    
            var MM = today.getMonth()+1;//通过日期对象的getMonth()方法返回月   
            var dd = today.getDate();//通过日期对象的getDate()方法返回日期
            var myDate =  yyyy+"-"+MM +"-"+ dd ;
            console.log(myDate);
            var abc ="";
            if (today.getHours()<=24) { 
            	for (var int = 0; int < obj.length; int++) {
					
				}
            	
            	
            	
           <c:forEach items="${checklist}" var="m">
			var yjout_time = "${m.yjout_time}";
			var yj=new Date(Date.parse(yjout_time.replace(/-/,"/")));
	        var dr=yj.getFullYear();
	        var month=yj.getMonth()+1;
	        var date=yj.getDate();
	        var rztime=dr+"-"+month+"-"+date;
			var outtime="${m.out_time}";
			 if (myDate==rztime) { 
				abc +='<br><li>&nbsp;&nbsp;<i class="icon-bell red"></i><a>房间号${m.room.room_id}&nbsp;&nbsp;住户${m.euser.user_name }退房时间将到</a></li>'; 
			 }; 
			
			</c:forEach>
			 } 
			document.getElementById("one").innerHTML=abc; */
          </script>  
       <%--   <c:forEach items="${checklist}" var="m">
    	  ${m.yjout_time}
    	  ${m.euser.user_name}
    	  ${m.room.room_id}
         </c:forEach>  --%> 
         </div> 
          </ul>
         </div>
     </div>
     </div>
</body>
</html>