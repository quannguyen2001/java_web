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
	<p align="center"><b>THÊM THÔNG TIN SẢN PHẨM</b></p>
	
	<div class="row">
	
		<form > 
		<div class="span2"></div>
		<div class="span4">
			<div class="well">
			<form:form action="AddProduct" method="POST" modelAttribute="products" enctype="multipart/form-data">
			 <div class="control-group">
				<label class="control-label"><b>Tên sản phẩm</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập tên sản phẩm" path="name" /> 
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Giá tiền</b></label>
				<div class="controls">
				  <form:input type="number" class="span3" placeholder="Hãy nhập giá tiền" path="price"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Màu</b></label>
				<div class="controls">
				  <input type="text" class="span3" placeholder="Hãy nhập màu sắc" />
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Năm ra mắt</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="year"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Màn hình</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="screen"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Phần mềm</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="software"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Camera sau</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="camera_sau"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Camera trước</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="camera_truoc"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Chip</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="chip"/>
				</div>
			  </div>
			  </div>
		</div> 
		<div class="span4">
			 <div class="well">

			  <div class="control-group">
				<label class="control-label"><b>RAM</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="ram"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>ROM</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="rom"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>SIM</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="sim"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>PIN</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông số" path="pin"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Thông tin chi tiết</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập thông tin chi tiết" path="details"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Link Youtube</b></label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Hãy nhập link" path="link"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label"><b>Hình ảnh</b></label>
				<div class="controls">
				  <input type="file" class="span3"/>
				</div>
			  </div>
			  <br>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="defaultBtn submit">THÊM MỚI</button> 
				</div>
			 </div>
			 </div>
		</div> 
  
	</form:form>
	</div>
	<content tag="script">
	<script>
	$(".submit").on("click",function(){
		alert("Thêm mới sản phẩm thành công!");
	});	
	</script>
	</content>
	

</body>
</html>