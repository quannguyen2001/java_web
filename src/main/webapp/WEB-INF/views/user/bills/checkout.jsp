<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
<div id="sidebar" class="span3">
<div class="well well-small">
	<ul class="nav nav-list">
		
		<li> <a class="totalInCart" href="<c:url value="/gio-hang" />"><strong>Đã mua  <span class="badge badge-warning pull-right" style="line-height:18px;">${TotalPriceCart }VND</span></strong></a></li>
	</ul>
</div>

			  <div class="well well-small alert alert-warning cntr">
				  <h2>Giảm giá 10% </h2>
				  <p> 
					 cho các sản phẩm. <br>
				  </p>
			  </div>
			 
			<ul class="nav nav-list promowrapper">
			<li>
			  <div class="thumbnail">
				<!-- <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a> -->
				<img src="<c:url value="/assets/user/img/uu_dai_ngap_tran.jpg" /> " alt="bootstrap ecommerce templates">
				
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<!-- <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a> -->
				<img src="<c:url value="/assets/user/img/giao_hang.jpg" />" alt="shopping cart template">
				
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<!-- <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a> -->
				<img src="<c:url value="/assets/user/img/baohanh1.jpg" />" alt="bootstrap template">
				
			  </div>
			</li>
		  </ul>
		  <br>
		  <a class="shopBtn btn-block" href="#">Thanh toán nhanh chóng<br> An toàn - Tiện lợi<br></a>
			<br>
			<br>
			<div class="well well-small" ><a href="#"><img src="<c:url value="/assets/user/img/paypal.jpg" />" alt="payment method paypal"></a></div>

	</div>
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="<c:url value="/" />">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Người dùng</li>
    </ul>
	<h3> Người dùng</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span9">
			<div class="well">
			
			
			<form:form action="checkout" method="POST" modelAttribute="bills" class="form-horizontal" >
				<h3>Đặt hàng</h3>
				<div class="control-group">
					<label class="control-label">Họ tên <sup>*</sup></label>
					<div class="controls">
					  <form:input type="text" placeholder="Mời nhập họ tên" path="display_name" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Email <sup>*</sup></label>
					<div class="controls">
					  <form:input type="text" placeholder="Mời nhập Email" path="user"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Liên hệ <sup>*</sup></label>
					<div class="controls">
					  <form:input type="text" placeholder="Mời nhập số điện thoại" path="phone"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Địa chỉ <sup>*</sup></label>
					<div class="controls">
					  <form:input type="text" placeholder="Mời nhập địa chỉ" path="address"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ghi chú <sup>*</sup></label>
					<div class="controls">
					  <form:input type="text" placeholder="Ghi chú" path="note"/>
					</div>
				</div>
				
				<div class="controls">
				  <button type="submit" class="defaultBtn submit">ĐẶT HÀNG</button>
				</div>
				
			</form:form>
		</div>
		</div>
		<div class="span1"> &nbsp;</div>
		
	</div>	
	
</div>
</div>
<content tag="script">
	<script>
	$(".submit").on("click",function(){
		alert("Đặt hàng thành công! ");
		alert("Các sản phẩm bạn đã mua sẽ được chúng tôi giao hàng tận nơi!!!");
	});	
	</script>
</content>
</body>
