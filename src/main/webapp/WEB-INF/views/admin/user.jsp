<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="/WEB-INF/views/layouts/admin/taglib.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quản lý</title>
</head>
<body>
	<h3 align="center"><b>THÔNG TIN TÀI KHOẢN</b></h3>
	<div class="well">
		<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Tên tài khoản</th>
			<th style="width: 50px;">Mật khẩu</th>
			<th>Chủ tài khoản</th>
			<th>Địa chỉ</th>
			<th><a href="<c:url value="/quan-ly/add-account" />" class="btn btn-primary">Thêm tài khoản</a></th>
		</tr>
		<c:forEach items="${users}" var="u">
		<tr>
			<td>${u.id}</td>
			<td>${u.user}</td>
			<td>${u.password}</td>
			<td>${u.display_name}</td>
			<td>${u.address}</td>
			<td>
				<a href="<c:url value="/quan-ly/update-account/${u.id}" />" class="btn btn-success">Sửa</a>
				<a href="<c:url value="/quan-ly/delete-account/${u.id}" />" class="btn btn-danger delete">Xóa</a>
			</td>
			
		</tr>
		</c:forEach>
		</table>
	</div>
	<content tag="script">
	<script>
	$(".delete").on("click",function(){
		alert("Xóa tài khoản thành công!");
	});	
	</script>
	</content>
</body>
</html>