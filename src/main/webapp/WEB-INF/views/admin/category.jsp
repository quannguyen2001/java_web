<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý</title>
</head>
<body>
	
	<h3 align="center"><b>DANH SÁCH CÁC HÃNG ĐIỆN THOẠI</b></h3>
	<div class="well">
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Tên hãng</th>
			<th>Mô tả</th>
			<th><a href="<c:url value="/quan-ly/add-category" />" class="btn btn-primary">Thêm mới</a></th>
		</tr>
		<c:forEach items="${categorys}" var="cate">
		<tr>
			<td>${cate.id}</td>
			<td>${cate.name}</td>
			<td>${cate.description}</td>
			<td>
				<a href="<c:url value="/quan-ly/update-category/${cate.id}" />" class="btn btn-success">Sửa</a>
				<a href="<c:url value="/quan-ly/delete-category/${cate.id}" />" class="btn btn-danger delete">Xóa</a>
			</td>
			
		</tr>
		</c:forEach>
	</table>
	</div>
	<content tag="script">
	<script>
	$(".delete").on("click",function(){
		alert("Đã xóa thành công!");
	});	
	</script>
	</content>
</body>
</html>