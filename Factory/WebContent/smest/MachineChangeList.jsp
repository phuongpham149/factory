<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../source/admin/inc/smest/header.jsp" %>
<!-- Start Content-->
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
						<a href="#">Thông báo đổi máy</a>
					</li>
				</ol>
				</div>
			</div>
			</div>
			<div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Danh sách đổi máy</h1>
            </div>
            <!-- /.col-lg-12  -->
        	</div>
			 <div class="row">
        	<div class="col-lg-12">
        		<table class="table table-striped table-bordered table-hover" id="dataTables-dsSinhVien">
        			<thead>
        				<tr>
        					<td>Mã máy</td>
        					<td>Chuyền</td>
        					<td>Thời gian</td>
        					<td></td>
        				</tr>
        			</thead>
        			<tbody id="tbl-body">
        				<tr>
        					<td>M1001</td>
        					<td>R01</td>
        					<td>10/09/2016 09:50:12</td>
        					<td>
        						<a class="btn btn-default" href="#"><i class="fa fa-edit"></i></a>
        						<button type="button" id="btn-xoa" class="btn btn-danger btn-delete" data-toggle="modal" data-target="#myModal"><i class="fa fa-remove"></i></button>
        					</td>
        				</tr>
        			</tbody>
        		</table>
        	<div id="myModal" class="modal fade" role="dialog">

			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<form id="form-xoa" action="<%=request.getContextPath()%>/Admin_CategoryDeleteAction" method="post">
						<input id="modal-hidden-idCat" type="hidden" value="" name="idCategory" />
						
						<div class="modal-header">
							<a href="#" data-dismiss="modal" aria-hidden="true" class="close">×</a>
							<h3>Đổi máy</h3>
						</div>
						<div class="modal-body">
							<input class="form-control input-medium" type="text" name="idNewMachine" value="" placeholder="Mời bạn nhập mã máy mới">
						</div>
						<div class="modal-footer">
							<button type="submit" id="btnYes" class="btn btn-danger">Có</button>
							<button type="button" data-dismiss="modal" aria-hidden="true" class="btn btn-secondary">Không</button>
						</div>
					</form>
				</div>
			</div>
			
		<script src="<%=request.getContextPath() %>/source/admin/datatable/js/jquery.dataTables.min.js"></script>

		<script src="<%=request.getContextPath() %>/source/admin/datatable-bootstrap/js/dataTables.bootstrap.min.js"></script>
			<script>
			$(document).ready( function() {
				$('#dataTables-dsSinhVien').DataTable({
						responsive : true,
						language : {
							"sProcessing" : "Đang xử lý...",
							"sLengthMenu" : "Xem _MENU_ mục",
							"sZeroRecords" : "Không tìm thấy dòng nào phù hợp",
							"sInfo" : "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
							"sInfoEmpty" : "Đang xem 0 đến 0 trong tổng số 0 mục",
							"sInfoFiltered" : "(được lọc từ _MAX_ mục)",
							"sInfoPostFix" : "",
							"sSearch" : "Tìm:",
							"sUrl" : "",
							"oPaginate" : {
								"sFirst" : "Đầu",
								"sPrevious" : "Trước",
								"sNext" : "Tiếp",
								"sLast" : "Cuối"
							}
						}
					});
				});
		</script>
		<!--lay ma de xoa -->
		<script type="text/javascript">
			$(".btn-delete").click(function () {
				var idCat = $(this).attr("value");
				console.log("abc "+idCat);
				$('#modal-hidden-idCat').val(idCat);
			});
		</script>
		<!--End Content-->
	</div>
	</div>
		</div>
		</div>
<!--End Container-->


<!-- datatable -->
<script src="<%=request.getContextPath() %>/source/admin/datatable/js/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath() %>/source/admin/datatable-responsive/js/dataTables.responsive.js"></script>
<script src="<%=request.getContextPath() %>/source/admin/datatable-bootstrap/js/dataTables.bootstrap.min.js"></script>
<!-- /datatable -->
		</div>
	</div>
</body>
</html>
