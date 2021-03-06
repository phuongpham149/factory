<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../source/admin/inc/production/header.jsp" %>
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
						<a href="#">Tình trạng máy hư hỏng</a>
					</li>
				</ol>
				</div>
			</div>
			</div>
			<div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tình trạng máy đang hư hỏng</h1>
            </div>
            <!-- /.col-lg-12  -->
        	</div>
			 <div class="row">
        	<div class="col-lg-12">
        		<table class="table table-striped table-bordered table-hover" id="dataTables-dsSinhVien">
        			<thead>
        				<tr>
        					<td>Ngày</td>
        					<td>Mã máy</td>
        					<td>Thời gian hư hỏng</td>
        					<td>Thời gian hoàn thành</td>
        					<td>Loại hư hỏng</td>
        				</tr>
        			</thead>
        			<tbody id="tbl-body">
        				<tr>
        					<td>10/10/2016</td>
        					<td>R10001</td>
        					<td>10/10/2016 12:09:10</td>
        					<td>10/10/2016 15:00:00</td>
        					<td>Hư động cơ</td>
        				</tr>
        			</tbody>
        		</table>
			
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
