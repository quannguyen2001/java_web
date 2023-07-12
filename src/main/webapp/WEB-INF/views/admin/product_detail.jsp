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
	<h3 align="center"><b>THÔNG TIN CHI TIẾT SẢN PHẨM</b></h3>
	<div class="row">
		<form> 
		<div class="span2"></div>
		<div class="span4">
			<div class="well">
			
			 <div class="control-group">
				<label class="control-label"><b>Tên sản phẩm</b></label>
				<div class="controls">
				  <input type="text" class="span3"  value="${product.name}" readonly /> 
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Giá tiền</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.price}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Màu</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.name_color}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Năm ra mắt</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.year}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Màn hình</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.screen}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Phần mềm</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.software}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Camera sau</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.camera_sau}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Camera trước</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.camera_truoc}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Chip</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.chip}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>RAM</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.ram}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>ROM</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.rom}" readonly/>
				</div>
			  </div>
			  </div>
		</div> 
		<div class="span4">
			 <div class="well">	  
			  
			  <div class="control-group">
				<label class="control-label"><b>SIM</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.sim}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>PIN</b></label>
				<div class="controls">
				  <input type="text" class="span3" value="${product.pin}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Thông tin chi tiết</b></label>
				<div class="controls">
				  <textarea style=" width: 100%; height: 245px; padding: 5px 5px; box-sizing: border-box; border: 2px solid #ccc; border-radius: 4px; resize: none;" readonly>${product.details}</textarea> 
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Link Youtube</b></label>
				<div class="controls">
				  <input type="text" class="span3" placeholder="Hãy nhập link" value="${product.link}" readonly/>
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <img src="<c:url value="/assets/user/img/${product.img}" />" alt="">
				</div>
			  </div>
			 </div>
		</div> 
  
	</form>
	</div>

</body>
</html>