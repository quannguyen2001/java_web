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
	
	<h3 align="center"><b>DANH SÁCH CÁC ĐƠN HÀNG</b></h3>
	<div class="well">
		<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th style="width: 150px;">Tên khách hàng</th>
			<th style="width: 100px;">Email</th>
			<th style="width: 70px;">Điện thoại</th>
			<th style="width: 100px;">Địa chỉ</th>
			<th style="width: 100px;">Ghi chú</th>
			<th style="width: 80px;">Tình trạng</th>
			<th> </th>
		</tr>
		
		<c:forEach items="${orders}" var="ord">
		<tr>
			<td>${ord.id}</td>
			<td>${ord.display_name}</td>
			<td>${ord.user}</td>
			<td>${ord.phone}</td>
			<td>${ord.address}</td>
			<td>${ord.note}</td>
			<td>${ord.status == true ? 'Đã giao':'Đang giao hàng'}</td>
			<td>
				<a href="<c:url value="/quan-ly/bill-detail/${ord.id}" />" class="btn btn-primary">Chi tiết</a>
				<c:if test="${ord.status == false}">
					<a href="<c:url value="/quan-ly/update-bill/${ord.id}" />" class="btn btn-success update">Đã giao</a>
				</c:if>
				<a href="<c:url value="/quan-ly/delete-bill/${ord.id}" />" class="btn btn-danger">Xóa</a>
			</td>
			
		</tr>
		</c:forEach>
	</table>
	</div>
	<content tag="script">
	<script>
	$(".update").on("click",function(){
		alert("Cập nhật thành công!");
	});	
	</script>
	</content>
</body>
</html>