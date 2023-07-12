<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Điện thoại</title>
<style>
.pagination {
	  display: flex;
	  justify-content: center;
	}

	.pagination a {
	  color: black;
	  float: left;
	  padding: 8px 16px;
	  text-decoration: none;
	  transition: background-color .3s;
	  border: 1px solid #ddd;
	}

	.pagination a.active {
	  background-color: #4CAF50;
	  color: white;
	  border: 1px solid #4CAF50;
	}

	.pagination a:hover:not(.active) {background-color: #ddd;}
</style>
</head>
<body>

	<div class="well well-small">
		<div class="row">
			<span style="margin-left: 350px; font-size: 20px;"><b>DANH SÁCH SẢN PHẨM</b> </span>
			<!-- 
			<select class="pull-right">
				<option>A - Z</option>
				<option>Cao-Thấp</option>
			</select>
			 -->
			
		</div>
		<!-- 
		<div class="row">
			
			<div class="span3">

					<div class="search">
						<label><b>Tìm kiếm sản phẩm:</b></label>
						<input type="text" placeholder="Nhập sản phẩm cần tìm" id="find"  name="" onkeyup="search()"> 
					</div>
						
						
				
				
					
			</div>
			
			
		</div>
		 -->
		<br>
		
		<c:if test="${ productsPaginate.size() > 0 }">
		  	<div class="row-fluid">
		  <ul class="thumbnails">
		  	<c:forEach var="item" items="${ productsPaginate }" varStatus="loop">
		  	<li class="span4">
			  <div class="thumbnail">
			  	<div class="product">
					<a href="product_details.html" class="overlay"></a>
					<a class="zoomTool" href="<c:url value="/chi-tiet-san-pham/${item.id_product}" />" title="add to cart"><span class="icon-search"></span> XEM NGAY</a>
					<a href="<c:url value="/chi-tiet-san-pham/${item.id_product}" />"><img style="height: 350px;" src="<c:url value="/assets/user/img/${item.img}" />" alt=""></a>
						<div class="caption cntr">
							<h3>${item.name }</h3>
							<p><strong> <fmt:formatNumber type="number" groupingUsed="true" value="${item.price} " /> ₫</strong></p>
							<h4><a class="shopBtn" href="<c:url value="/AddCart/${item.id_product}" />" title="add to cart"> Thêm giỏ hàng </a></h4>
							<!-- 
							<div class="actionList">
								<a class="pull-left" href="#">Add to Wish List </a> 
								<a class="pull-left" href="#"> Add to Compare </a>
							</div> 
							 -->
							<br class="clr">
						</div>
				</div>
			  </div>
			</li>
		  	<c:if test="${(loop.index + 1)%3 == 0 || (loop.index +1) == productsPaginate.size() }">
		  		</ul>
		  	</div>
		  		<c:if test="${(loop.index + 1) < productsPaginate.size()}">
		  			<div class="row-fluid">
		        <ul class="thumbnails">
		  		</c:if>
		  	</c:if>
		  	</c:forEach>
		  </c:if>

		
	
	
			<div class="pagination">
			  <c:forEach var="item" begin="1" end="${paginateInfo.totalPage}" varStatus="loop">
			     <c:if test="${(loop.index) == paginateInfo.currentPage}">
					  <a href="<c:url value="/tat-ca-san-pham/${loop.index}" />" class="active">${loop.index}</a>
				 </c:if>
				 
				 <c:if test="${(loop.index) != paginateInfo.currentPage}">
					  <a href="<c:url value="/tat-ca-san-pham/${loop.index}" />">${loop.index}</a>
				 </c:if>
		
					  
			  </c:forEach>
			</div>
		
	</div>
	<!-- 
	<content tag="script">
	<script type="text/javascript">
		function search()
		{
			let filter = document.getElementById('find').value.toUpperCase();
			
			let item = document.querySelectorAll('.product');
			
			let l = document.getElementsByTagName('h3');
			
			for(var i = 0; i <= l.length; i++)
			{
				let a = item[i].getElementsByTagName('h3')[0];
				
				let value = a.innerHTML || a.innerText || a.textContent;
				
				if(value.toUpperCase().indexOf(filter) > -1)
				{
					item[i].style.display="";
				}
				else
				{
					item[i].style.display="none";
				}
			}
		}
	</script>
	 -->
</body>
</html>