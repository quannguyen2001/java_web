<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %> 
<title>THE DIAMOND SHOP</title>

<body>
<!-- 
Body Section 
-->

	<h3 align="center"><b>QUẢN LÝ THỐNG KÊ</b></h3>
	<div class="well">
		<div class="row">
			<div class="span5">
				<h3>Số Hãng: ${count_cate }</h3>
				<h3>Số Sản Phẩm: ${count_pro }</h3>
				<h3>Số Slide: ${count_slide }</h3>
			</div>
			<div class="span5">
				<h3>Số Đơn Hàng: ${count_bill }</h3>
				<h3>Số Tài Khoản: ${count_user }</h3>
				<h3>Tổng doanh thu: ${sum_all_bill} ₫</h3>
			</div>
		</div>
	</div>
	
	
	
</body>


