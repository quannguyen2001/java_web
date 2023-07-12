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
	
	
	<h3 align="center"><b>DANH SÁCH CÁC SẢN PHẨM ĐIỆN THOẠI</b></h3>
	<div class="well">
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Tên sản phẩm</th>
			<th>Giá tiền</th>
			<th>Màu</th>
			<th>Màn hình</th>
			<th>Camra sau</th>
			<th>Camra trước</th>
			<th>Chip</th>
			<th>RAM</th>
			<th>ROM</th>
			<th>Pin</th>
			<th><a href="<c:url value="/quan-ly/add-product" />" class="btn btn-primary">Thêm mới</a></th>
		</tr>
		
	
		
		<c:forEach items="${products}" var="pro"> 
		<tr>
			<td>${pro.id_product}</td>
				<td>${pro.name}</td>
				<td><fmt:formatNumber type="number" groupingUsed="true" value="${pro.price} " /></td>
				<td>${pro.name_color}</td>
				<td>${pro.screen }</td>
				<td>${pro.camera_sau }</td>
				<td>${pro.camera_truoc }</td>
				<td>${pro.chip }</td>
				<td>${pro.ram }</td>
				<td>${pro.rom }</td>
				<td>${pro.pin }</td>
			 
		
			<td>
				<a href="<c:url value="/quan-ly/product-detail/${pro.id_product}" />" class="btn btn-primary">Chi tiết</a>
				<a href="<c:url value="/quan-ly/update-product/${pro.id_product}" />" class="btn btn-success">Sửa</a>
				<a href="<c:url value="/quan-ly/delete-product/${pro.id_product}" />" class="btn btn-danger delete">Xóa</a>
			</td>
			
		</tr>
		</c:forEach>
		
	</table>
	</div>
	<content tag="script">
	<script>
	$(".delete").on("click",function(){
		alert("Xóa sản phẩm thành công!");
	});	
	</script>
	</content>
</body>
</html>