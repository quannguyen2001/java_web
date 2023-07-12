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
	
	<h3 align="center"><b>DANH SÁCH CÁC SLIDE</b></h3>
	<div class="well">
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Ảnh</th>
			<th style="width: 100px;">Mô tả</th>
			<th style="width: 150px;">Ghi chú</th>
			<th><a href="<c:url value="/quan-ly/add-slide" />" class="btn btn-primary">Thêm mới</a></th>
		</tr>
		<c:forEach items="${slides}" var="slide"> 
		<tr>
			<td>${slide.id}</td>
			<td><img  style="width: 430px;" src="<c:url value="/assets/user/img/slide/${slide.img}" />" alt=""></td>
			<td>${slide.caption}</td>
			<td>${slide.content}</td>
			<td>
				<a href="<c:url value="/quan-ly/update-slide/${slide.id}" />" class="btn btn-success">Sửa</a>
				<a href="<c:url value="/quan-ly/delete-slide/${slide.id}" />"" class="btn btn-danger delete">Xóa</a>
			</td>
			
		</tr>
		</c:forEach>
	</table>
	</div>
	<content tag="script">
	<script>
	$(".delete").on("click",function(){
		alert("Đã xóa slide!");
	});	
	</script>
	</content>
</body>
</html>