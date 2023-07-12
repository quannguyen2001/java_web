<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý</title>
</head>
<body>
	<h3 align="center"><b>THÊM THÔNG TIN HÃNG ĐIỆN THOẠI</b></h3>
	<div class="row" >
		<div class="span4">
		</div>
		<div class="span4">
			<div class="well">
			<h5><b>${message}</b></h5>
			<form:form action="AddCategory" method="POST" modelAttribute="category">   
			
			  <div class="control-group">
				<label class="control-label"><b>Tên hãng</b></label>
				<div class="controls">
				  
				   <form:input type="text" class="span3" placeholder="Hãy nhập tên hãng" path="name" /> 
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Mô tả</b></label>
				<div class="controls">
				  
				  <form:input type="text" class="span3" placeholder="Hãy nhập mô tả" path="description" />
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
		alert("Thêm mới thành công!");
	});	
	</script>
	</content>
</body>
</html>