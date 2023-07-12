<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %> 
<head>
<meta charset="UTF-8">
<title>${product.name }</title>
<style>
	.product-content{
		overflow-x: hidden;
	}
</style>
</head>
<body>
<!-- Body Section -->
	<div class="row product-content">
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
    <li><a href="<c:url value="/tat-ca-san-pham" />">Sản phẩm</a> <span class="divider">/</span></li>
    <li class="active">Chi tiết sản phẩm</li>
    </ul>	
	<div class="well well-small">
	<div class="row-fluid">
			<div class="span5">
			<div id="myCarousel" class="carousel slide cntr">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href="#"> <img src="<c:url value="/assets/user/img/${product.img}" />" alt="" style="width:100%"></a>
                  </div>
                  
                </div>
                <!-- 
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                 -->
            </div>
			</div>
			<div class="span7">
				<h3>${product.name }</h3>
				<hr class="soft"/>
				
				<form class="form-horizontal qtyFrm" method="get" action="<c:url value="/AddCart/${product.id_product}" />">
				  <div class="control-group">
					<label class="control-label"><span><b>Giá tiền: </b> <fmt:formatNumber type="number" groupingUsed="true" value="${product.price} " /> ₫</span></label>
					<!-- 
					<div class="controls">
					<input type="number" min="0" value="0" class="span6">
					</div>
					 -->
				  </div>
				
				  <div class="control-group">
					<label class="control-label"><span><b>Màu sắc: </b> ${product.name_color}</span></label>
					
				  </div>
				  <div class="control-group">
					<label class="control-label"><span><b>Năm ra mắt: </b> ${product.year}</span></label>
					
				  </div>
				 <br>
				
				  <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Thêm giỏ hàng</button>
				</form>
			</div>
			</div>
				<hr class="softn clr"/>


            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#chi_tiet_san_pham" data-toggle="tab">Chi tiết sản phẩm</a></li>
              <li class=""><a href="#san_pham_lien_quan" data-toggle="tab">Sản phẩm liên quan</a></li>
              
            </ul>
            <div id="myTabContent" class="tab-content tabWrapper">
            <div class="tab-pane fade active in" id="chi_tiet_san_pham">
           		<h3><b>Cấu hình điện thoại ${product.name }</b></h3>
            	<table class="table table-striped">
				<tbody>
				<tr class="techSpecRow"><td class="techSpecTD1">Màn hình:</td><td width="400px" class="techSpecTD2">${product.screen }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Hệ điều hành:</td><td width="400px" class="techSpecTD2">${product.software }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Camera sau:</td><td width="400px" class="techSpecTD2">${product.camera_sau }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Camera trước:</td><td width="400px" class="techSpecTD2">${product.camera_truoc }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Chip:</td><td width="400px" class="techSpecTD2">${product.chip }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">RAM:</td><td width="400px" class="techSpecTD2">${product.ram }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">ROM:</td><td width="400px" class="techSpecTD2">${product.rom }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">SIM:</td><td width="400px" class="techSpecTD2">${product.sim }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Pin:</td><td width="400px" class="techSpecTD2">${product.pin }</td></tr>
				</tbody>
				</table>
				<h3><b>Giới thiệu sản phẩm</b></h3>
			  	${product.details}<br><br>
			  
                <iframe width="650" height="355" src="<c:url value="https://www.youtube.com/embed/${product.link }" />" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <br>
                <h3><b>Phản hồi của khách hàng</b></h3>
                <div class="fb-comments" data-href="http://127.0.0.1:8888/DiamonShop/chi-tiet-san-pham/${product.id_product }" data-width="650" data-numposts="5"></div>
			</div>
			<div class="tab-pane fade" id="san_pham_lien_quan">
			
			<c:set var="countlist" value="${productByIDCategory.size()}"/>
			<c:if test="${productByIDCategory.size() > 6}">
				<c:set var="countlist" value="6"/>	  			
			</c:if>
			<c:forEach var="item" items="${productByIDCategory}" begin="0" end="${countlist}" varStatus="loop">
				<div class="row-fluid">	  
			<div class="span2">
				<a href="<c:url value="/chi-tiet-san-pham/${item.id_product}" />">
				<img src="<c:url value="/assets/user/img/${item.img}" />" alt="">
				</a>
			</div>
			<div class="span6">
				<h5>${item.name} </h5>
				<p>RAM: ${item.ram}</p>
				<p>ROM: ${item.rom}</p>
				<p>Pin: ${item.pin}</p>
			</div>
			<div class="span4 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> <fmt:formatNumber type="number" groupingUsed="true" value="${item.price} " /> ₫</h3>
			<div class="btn-group">
			  <a href="<c:url value="/AddCart/${item.id_product}" />" class="defaultBtn"><span class=" icon-shopping-cart"></span> Thêm giỏ hàng</a>
			  <a href="<c:url value="/chi-tiet-san-pham/${item.id_product}" />" class="shopBtn">XEM</a>
			 </div>
				</form>
			</div>
			</div>
			<hr class="soft"/>
				
			</c:forEach>
			</div>
              
              
            </div>

</div>
</div>
</div> <!-- Body wrapper -->
</body>
