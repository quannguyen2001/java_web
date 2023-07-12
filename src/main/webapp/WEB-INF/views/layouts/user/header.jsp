<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="<c:url value="/" />"><span>Twitter Bootstrap
						ecommerce template</span> <img
					src="<c:url value="/assets/user/img/logo.jpg" />"
					alt="the diamond shop"> </a>
			</h1>
		</div>
		
		<div class="span3 ">
		
				<!-- <h1 class="dotmark">
					<i class="icon-cut"></i> Twitter Bootstrap shopping cart HTML
					template is available @ $14
				</h1> -->
				<a class="logo"><span>Twitter Bootstrap
						ecommerce template</span><br><br> <img style="width: 200px; height: 50px;"
					src="<c:url value="/assets/user/img/apple auth.jpg" />"
					alt="the diamond shop"> </a>
			
		</div>
		
		<div class="span1">
		
				<!-- <h1 class="dotmark">
					<i class="icon-cut"></i> Twitter Bootstrap shopping cart HTML
					template is available @ $14
				</h1> -->
				<a class="logo"><span>Twitter Bootstrap
						ecommerce template</span><br> <img style="width: 70px; height: 70px;"
					src="<c:url value="/assets/user/img/baohanh.jpg" />"
					alt="the diamond shop"> </a>
			
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Hỗ trợ (24/7) : 1900 8686 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini">[ ${TotalQuantyCart } ] <span
				class="icon-shopping-cart"></span></span> 
				<!-- 
				<span
				class="btn btn-warning btn-mini">$</span> <span class="btn btn-mini">&pound;</span>
			<span class="btn btn-mini">&euro;</span>
				 -->
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
			<ul class="nav">
			<li class="active"><a href="<c:url value="/" />">Trang chủ</a></li>
			  <li class=""><a href="<c:url value="/tat-ca-san-pham" />">Sản phẩm</a></li>
			  <li class=""><a href="<c:url value="/bao-hanh" />">Bảo hành</a></li>
			  <li class=""><a href="<c:url value="/lien-he" />">Liên hệ</a></li>
			  <li class=""><a href="<c:url value="/gioi-thieu" />">Giới thiệu</a></li>
			  <li class=""><a href="<c:url value="/gio-hang" />">Giỏ hàng</a></li>
			  
			</ul>
				<!-- 
				<form action="tim-kiem-san-pham" method="POST" modelAttribute="nameProduct" class="navbar-search pull-left">   
					<input type="text" placeholder="Nhập thông tin cần tìm" class="search-query span2" name="name" /> 
					
				</form>
				 -->
				
			</div>
		</div>
	</div>
</div>

