<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý </title>
</head>
<body>
	<h3 align="center"><b>THÊM THÔNG TIN SLIDE</b></h3>
	<div class="row" >
		<div class="span4">
		</div>
		<div class="span4">
			<div class="well">
			<form:form action="AddSlide" method="POST" modelAttribute="slide">   
			
			 <div class="control-group">
				<label class="control-label"><b>Hình ảnh</b></label>
				<div class="controls">
				 <form:input type="file" class="span3"  accept="image/png, image/jpeg" path="img" /> 
				  
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Mô tả</b></label>
				<div class="controls">
				  
				  <form:input type="text" class="span3" placeholder="Hãy nhập mô tả" path="caption" />
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Ghi chú</b></label>
				<div class="controls">
				  
				  <form:input  type="text" class="span3" placeholder="Hãy nhập mô tả"  path="content"/>
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="defaultBtn submit">THÊM MỚI</button> 
				</div>
			 </div>
			</form:form>
		</div>
			
		
		</div>
	</div>
	<content tag="script">
	<script>
	$(".submit").on("click",function(){
		alert("Thêm mới slide thành công!");
	});	
	</script>
	</content>
</body>
</html>