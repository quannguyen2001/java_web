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
	
	<h3 align="center"><b>DANH SÁCH CÁC SẢN PHẨM ĐÃ MUA</b></h3>
	<div class="well">
	<table class="table table-bordered">
		<tr>
			<th>ID Sản phẩm</th>
			<th>Tên điện thoại</th>
			<th>Giá tiền</th>
			<th>Số lượng</th>
			
		</tr>
		<c:forEach items="${bills}" var="bill">
		<tr>
			<td>${bill.id_product}</td>
			<td>${bill.name}</td>
			<td><fmt:formatNumber type="number" groupingUsed="true" value="${bill.price} " /></td>
			<td>${bill.quanty}</td>
			
		</tr>
		</c:forEach>
	</table>
	<h4><b>Tổng số lượng sản phẩm: </b>${count}</h4>
	<h4><b>Tổng giá trị đơn hàng: </b>${sum} ₫</h4>
	</div>
</body>
</html>