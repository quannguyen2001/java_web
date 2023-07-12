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
	<h3 align="center"><b>CẬP NHẬT THÔNG TIN SLIDE</b></h3>
	<div class="row" >
		<div class="span4">
		</div>
		<div class="span4">
			<div class="well">
		
			<form:form action="UpdateCategory" method="POST" modelAttribute="category">   
			  <div class="control-group">
				<label class="control-label"><b>ID</b></label>
				<div class="controls">
				  
				   <form:input type="number" class="span3"  path="id" readonly="true"/> 
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Ảnh</b></label>
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
				<label class="control-label"><b>Ghi chú</b></label>
				<div class="controls">
				  
				  <form:input type="text" class="span3" placeholder="Hãy nhập mô tả" path="description" />
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="defaultBtn">CẬP NHẬT</button> 
				</div>
			 </div>
			</form:form>
		</div>
			
		
		</div>
	</div>
	
</body>
</html>