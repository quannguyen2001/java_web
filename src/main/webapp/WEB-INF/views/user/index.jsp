<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %> 
<title>THE DIAMOND SHOP</title>

<body>
<!-- 
Body Section 
-->

	<div class="row">
<div id="sidebar" class="span3">
<div class="well well-small">
	<ul class="nav nav-list">
	
	<c:forEach var="item" items="${ categorys }">
	
		<li><a href='<c:url value="/san-pham/${item.id}" />'><span class="icon-chevron-right"></span>${ item.name}</a></li>
		<li>
	</c:forEach>
		
		<li> <a class="totalInCart" href="<c:url value="/gio-hang" />"><strong>Đã mua  <span class="badge badge-warning pull-right" style="line-height:18px;"><fmt:formatNumber type="number" pattern="###,###" value="${TotalPriceCart}" />₫</span></strong></a></li>
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
	<div class="well np">
		<div id="myCarousel" class="carousel slide homCar">
            <div class="carousel-inner">
            
	            <c:forEach var="item" items="${ slides }" varStatus="index">
	            	<c:if test="${ index.first }">
	            		<div class="item active">
	            	</c:if>
	            	
	            	<c:if test="${ not index.first }">
	            		<div class="item">
	            	</c:if>
	            	
			            	<img style="width:100%; height: 200px;" src="<c:url value="/assets/user/img/slide/${ item.img }" />" alt="${ item.img }">
			                <!--<div class="carousel-caption">
			                      <h4>${ item.caption }</h4>
			                      <p><span>${ item.content }</span></p>
			                </div>-->
		              </div>
	            </c:forEach>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
          </div>
        </div>
<!--
New Products
-->
	<div class="well well-small">
	<h3>Sản phẩm mới </h3>
	<hr class="soften"/>
		<div class="row-fluid">
		<div id="newProductCar" class="carousel slide">
            <div class="carousel-inner">
            <c:if test="${ products.size() > 0 }">
            	<div class="item active">
			  		<ul class="thumbnails">
			  		<c:forEach var="item" items="${ products }" varStatus="loop">
			  			<li class="span3">
						<div class="thumbnail">
							<a class="zoomTool" href="<c:url value="/chi-tiet-san-pham/${item.id_product}" />" title="add to cart"><span class="icon-search"></span> XEM NGAY</a>
							<a href="#" class="tag"></a>
							<a href="<c:url value="/chi-tiet-san-pham/${item.id_product}" />"><img style="height: 200px;"src="<c:url value="/assets/user/img/${ item.img }" />" alt="bootstrap-ring"></a>
						</div>
						</li>
						<c:if test="${(loop.index + 1)%4 == 0 || (loop.index +1) == products.size() }">
					  		</ul>
					  	</div>
					  		<c:if test="${(loop.index + 1) < products.size()}">
					  			<div class="item">
					  				<ul class="thumbnails">
					  		</c:if>
					  	</c:if>
			  		</c:forEach>
            </c:if>
            
		   </div>
		  <a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
		  </div>
		  </div>
		
	</div>
	<!--
	Featured Products
	-->
		<div class="well well-small">
		  <h3> Sản phẩm nổi bật  </h3>
		  <hr class="soften"/>
		  <div class="row-fluid">
		  <c:if test="${ products.size() > 0 }">
		  	<ul class="thumbnails">
		  	<c:forEach var="item" items="${ products }" varStatus="loop">
		  	<li class="span4">
			  <div class="thumbnail">
				<a class="zoomTool" href="chi-tiet-san-pham/${item.id_product}" title="add to cart"><span class="icon-search"></span> XEM NGAY</a>
				<a  href="chi-tiet-san-pham/${item.id_product}"><img style="height: 250px;" src="<c:url value="/assets/user/img/${item.img}" />" alt=""></a>
				<div class="caption">
				  <h5>${item.name}</h5>
				  <h4>
					  <a class="defaultBtn" href="chi-tiet-san-pham/${item.id_product}" title="Click to view"><span class="icon-zoom-in"></span></a>
					  <a class="shopBtn" href="<c:url value="/AddCart/${item.id_product}" />" title="add to cart"><span class="icon-plus"></span></a>
					  <span class="pull-right"><fmt:formatNumber type="number" groupingUsed="true" value="${item.price} " /> ₫</span>
				  </h4>
				</div>
			  </div>
			</li>
		  	<c:if test="${(loop.index + 1)%3 == 0 || (loop.index +1) == products.size() }">
		  		</ul>
		  		<c:if test="${(loop.index + 1) < products.size()}">
		  			<ul class="thumbnails">
		  		</c:if>
		  	</c:if>
		  	</c:forEach>
		  </c:if>
		  
		  
		  
	</div>
	</div>
	<hr>
	<!-- 
	<div class="well well-small">
		<a class="btn btn-mini pull-right" href="#">Xem thêm <span class="icon-plus"></span></a>
		Tất cả sản phẩm 

	</div>
	 -->
	
	
	</div>
	</div>


</body>


