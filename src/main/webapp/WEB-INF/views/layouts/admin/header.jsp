<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp" %> 
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
		<div class="span5">
		<br><br>
			<h1 style="font-size: 30px;" align="center">TRANG QUẢN LÝ WEBSITE</h1>
		</div>
		
		
		<div class="span3 alignR">
			<p>
				<br> <strong> Hỗ trợ (24/7) : 1900 8686 </strong><br>
				<br>
			</p>
			
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
			<li class="active"><a href="<c:url value="/quan-ly/" />">Trang chủ</a></li>
			  <li class=""><a href="<c:url value="/quan-ly/category" />">Hãng</a></li>
			  <li class=""><a href="<c:url value="/quan-ly/product" />">Sản phẩm</a></li>
			  <li class=""><a href="<c:url value="/quan-ly/slide" />">Slide</a></li>
			  <li class=""><a href="<c:url value="/quan-ly/order" />">Đơn hàng</a></li>
			  <li class=""><a href="<c:url value="/quan-ly/account" />">Tài khoản</a></li>
			  
			</ul>
				<!-- 
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
				 -->
				
			</div>
		</div>
	</div>
</div>
