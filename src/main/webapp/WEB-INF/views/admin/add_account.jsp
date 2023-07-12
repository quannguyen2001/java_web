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
	<h3 align="center"><b>THÊM TÀI KHOẢN MỚI</b></h3>
	<div class="row" >
		<div class="span4">
		</div>
		<div class="span4">
			<div class="well">
			<h5><b>${status}</b></h5>
			<form:form action="dang-ky" method="POST" modelAttribute="user">  
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Email:</label>
				<div class="controls">
				  
				  <form:input type="email" class="span3" placeholder="Hãy nhập Email" path="user" />  
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputPassword">Mật khẩu:</label>
				<div class="controls">
				  
				   <form:input type="password" class="span3" placeholder="Hãy nhập mật khẩu" path="password" />
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Họ và tên:</label>
				<div class="controls">
				  
				   <form:input type="text" class="span3" placeholder="Hãy nhập họ và tên" path="display_name" />
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Địa chỉ:</label>
				<div class="controls">
				  
				   <form:input type="text" class="span3" placeholder="Hãy nhập địa chỉ" path="address" />
				</div>
			  </div>
			  <div class="controls">
			  <button type="submit" class="btn block">ĐĂNG KÝ</button>
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