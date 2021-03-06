<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Demo Factory</title>
		<link href="<%=request.getContextPath() %>/source/admin/plugins/bootstrap/bootstrap.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href='<%=request.getContextPath() %>/source/admin/css/familyRighteous.css' rel='stylesheet' type='text/css'>
		<link href="<%=request.getContextPath() %>/source/admin/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/plugins/xcharts/xcharts.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/plugins/select2/select2.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/plugins/justified-gallery/justifiedGallery.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/css/style_v1.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/css/customer.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/source/admin/plugins/chartist/chartist.min.css" rel="stylesheet">
		
		<!-- JavaScript For DataTables -->
		<link href="<%=request.getContextPath() %>/source/admin/datatable-bootstrap/css/dataTables.bootstrap.css" rel="stylesheet" />
		
		<!-- DataTables Responsive CSS -->
		<link href="<%=request.getContextPath() %>/source/admin/datatable-responsive/css/dataTables.responsive.css" rel="stylesheet" />
		 
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<!--<script src="http://code.jquery.com/jquery.js"></script>-->
		<script src="<%=request.getContextPath() %>/source/admin/plugins/jquery/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/source/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
		
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="<%=request.getContextPath() %>/source/admin/plugins/bootstrap/bootstrap.min.js"></script>
		
		 <script src="<%=request.getContextPath() %>/source/admin/js/devoops.js"></script>
	</head>
<body>
<!--Start Header-->
<div id="screensaver">
	<canvas id="canvas"></canvas>
	<i class="fa fa-lock" id="screen_unlock"></i>
</div>
<div id="modalbox">
	<div class="devoops-modal">
		<div class="devoops-modal-header">
			<div class="modal-header-name">
				<span>Basic table</span>
			</div>
			<div class="box-icons">
				<a class="close-link">
					<i class="fa fa-times"></i>
				</a>
			</div>
		</div>
		<div class="devoops-modal-inner">
		</div>
		<div class="devoops-modal-bottom">
		</div>
	</div>
</div>
<header class="navbar">
	<div class="container-fluid expanded-panel">
			<div class="row">
				<div id="logo" class="col-xs-12 col-sm-2">
					<a href="index_v1.html">Quản lý</a>
				</div>
				<div id="top-panel" class="col-xs-12 col-sm-10">
					<div class="row">
						<div class="col-xs-4 col-md-12 top-panel-right">
							<ul class="nav navbar-nav pull-right panel-menu">
								<li class="dropdown welcome-admin">
									<a href="#" class="dropdown-toggle account" data-toggle="dropdown">
										<div class="avatar">
											<img src="../source/admin/img/person.png" class="img-circle" alt="avatar" />
										</div>
										<i id="dropUser" class="fa fa-angle-down pull-right"></i>
										<div class="user-mini pull-right">
											<span class="welcome">Xin chào<br/> Nguyễn Văn A</span>
										</div>
									</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">
											<i class="fa fa-user"></i>
											<span>Profile</span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-cog"></i>
											<span>Settings</span>
										</a>
									</li>
									<li>
										<a href="<%=request.getContextPath()%>/LogoutAction">
											<i class="fa fa-power-off"></i>
											<span>Logout</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!--End Header-->
<!--Start Container-->
<div id="main" class="container-fluid">
	<div class="row">
		<div id="sidebar-left" class="col-xs-2 col-sm-2">
			<ul class="nav main-menu">
				<li class="dropdown">
					<a href="<%=request.getContextPath()%>/Admin_RoomListAction" class="dropdown-toggle">
						<i class="fa fa-bar-chart-o"></i>
						<span class="hidden-xs">Đổi máy</span>
					</a>
				</li>
			</ul>
		</div>