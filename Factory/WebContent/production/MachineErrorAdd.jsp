<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../source/admin/inc/production/header.jsp" %>
<!--Start Content-->
		<div id="content" class="col-xs-12 col-sm-10">
			<div id="ajax-content">
				<div class="row">
					<div id="breadcrumb" class="col-xs-12">
						<a class="show-sidebar" href="#">
							<i class="fa fa-bars"></i>
						</a>
						<ol class="breadcrumb pull-left">
							<li>
								<a href="index.html">Trang chủ</a>
							</li>
							<li>
								<a href="#">Máy hư hỏng</a>
							</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<h2 class="page-header">Thêm máy hư hỏng</h2>
				</div>
				<!-- /.col-lg-12  -->
			</div>
			<div class="col-md-9 personal-info">
			<form class="form-horizontal" role="form" action="" method="post">
				<div class="form-group">
					<label class="col-lg-2 control-label">Mã máy</label>
					<div class="col-lg-8">
						<input class="form-control input-medium" type="text" name="idMachine" value="" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Hư hỏng</label>
					<div class="col-lg-8">
						<input class="form-control input-medium" type="text" name="nameError" value="" required>
					</div>
				</div>
				<div class="form-group">
		            <label class="col-lg-2 control-label"></label>
		            <div class="col-md-8">
		              <input type="submit" class="btn btn-primary" value="Thêm" name="submit">
					  <span></span>
					  <a href="" class="btn btn-default">Hủy</a>
		            </div>
	          </div>  
		</form>
			
		</div>
		
		<!--End Content-->
		</div>
	</div>

<!--End Container-->

</body>
</html>
