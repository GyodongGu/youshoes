<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>판매회원 메인 페이지</title>

<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="../js/scripts.js"></script>

<!-- 여기 템플릿의 자체 CSS -->
<link href="../css/salesStyle.css" rel="stylesheet" />
<!-- // 여기 템플릿의 자체 CSS -->
<!-- 외부에서 끌어오는 CSS -->
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<!-- // 외부에서 끌어오는 CSS -->
</head>
<body class="sb-nav-fixed">
	<!-- 상단 이동하는 부분 -->
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="sMem.jsp">You Shoes</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group" style="visibility: hidden;">
				<input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">Settings</a><a class="dropdown-item" href="#">Activity Log</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="login.html">Logout</a>
				</div></li>
		</ul>
	</nav>
	<!-- // 상단 이동하는 부분 -->
	<!-- 판매회원 사이드바 부분 -->
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="index.jsp"><div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 홈</a> <a class="nav-link" href="callendar.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 공지사항 및 이벤트
						</a>
						<div class="sb-sidenav-menu-heading">회원 관리</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"><div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 판매 회원 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div></a>
						<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="sMemManage.jsp">판매 회원 등록 </a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div>구매 회원 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="backup.jsp">구매 회원 탈퇴 후 거래내역 </a>
							</nav>
						</div>
						<a class="nav-link" href="codeManage.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div>코드ID
						</a> <a class="nav-link" href="charts.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div>매출
						</a>

					</div>
				</div>
			</nav>
		</div>
		<!-- 판매회원 사이드바 부분 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">

					<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
						<a class="navbar-brand" href="index.jsp">You Shoes</a>
						<button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#">
							<i class="fas fa-bars"></i>
						</button>
						<!-- Navbar Search-->
						<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
							<div class="input-group" style="visibility: hidden;">
								<input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
								<div class="input-group-append">
									<button class="btn btn-primary" type="button">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</div>
						</form>
						<!-- Navbar-->
						<ul class="navbar-nav ml-auto ml-md-0">
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
									<a class="dropdown-item" href="#">Settings</a><a class="dropdown-item" href="#">Activity Log</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="login.html">Logout</a>
								</div></li>
						</ul>
					</nav>
					<div id="layoutSidenav">
						<div id="layoutSidenav_nav">
							<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
								<div class="sb-sidenav-menu">
									<div class="nav">
										<div class="sb-sidenav-menu-heading">Core</div>
										<a class="nav-link" href="index.jsp"><div class="sb-nav-link-icon">
												<i class="fas fa-tachometer-alt"></i>
											</div> 홈</a> <a class="nav-link" href="callendar.jsp"><div class="sb-nav-link-icon">
												<i class="fas fa-chart-area"></i>
											</div> 공지사항 및 이벤트 </a>
										<div class="sb-sidenav-menu-heading">회원 관리</div>
										<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"><div class="sb-nav-link-icon">
												<i class="fas fa-columns"></i>
											</div> 판매 회원 관리
											<div class="sb-sidenav-collapse-arrow">
												<i class="fas fa-angle-down"></i>
											</div></a>
										<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
											<nav class="sb-sidenav-menu-nested nav">
												<a class="nav-link" href="sMemManage.jsp">판매 회원 등록 </a>
											</nav>
										</div>
										<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages"><div class="sb-nav-link-icon">
												<i class="fas fa-book-open"></i>
											</div> 구매 회원 관리
											<div class="sb-sidenav-collapse-arrow">
												<i class="fas fa-angle-down"></i>
											</div></a>
										<div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
											<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
												<a class="nav-link" href="backup.jsp">구매 회원 탈퇴 후 거래내역 </a>
											</nav>
										</div>
										<a class="nav-link" href="codeManage.jsp"><div class="sb-nav-link-icon">
												<i class="fas fa-chart-area"></i>
											</div> 코드ID</a> <a class="nav-link" href="charts.jsp"><div class="sb-nav-link-icon">
												<i class="fas fa-chart-area"></i>
											</div> 매출</a>
									</div>
								</div>
							</nav>
						</div>
						<div id="layoutSidenav_content">
							<main>
								<div class="container-fluid">
									<h1 class="mt-4">Dashboard</h1>
									<ol class="breadcrumb mb-4">
										<li class="breadcrumb-item active">Dashboard</li>
									</ol>
									<div class="row">
										<div>빈공간</div>
									</div>
									<div class="row">
										<div class="col-xl-6">
											<div class="card mb-4">
												<div class="card-header">
													<i class="fas fa-chart-area mr-1"></i>Area Chart Example
												</div>
												<div class="card-body">
													<canvas id="myAreaChart" width="100%" height="40"></canvas>
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="card mb-4">
												<div class="card-header">
													<i class="fas fa-chart-bar mr-1"></i>Bar Chart Example
												</div>
												<div class="card-body">
													<canvas id="myBarChart" width="100%" height="40"></canvas>
												</div>
											</div>
										</div>
									</div>
									<div class="card mb-4">
										<div class="card-header">
											<i class="fas fa-table mr-1"></i>공지사항 및 이벤트
										</div>
										<div class="card-body">
											<div class="table-responsive">
												<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
													<thead>
														<tr>
															<th>Name</th>
															<th>Position</th>
															<th>Office</th>
															<th>Age</th>
															<th>Start date</th>
															<th>Salary</th>
														</tr>
													</thead>
													<tfoot>
														<tr>
															<th>Name</th>
															<th>Position</th>
															<th>Office</th>
															<th>Age</th>
															<th>Start date</th>
															<th>Salary</th>
														</tr>
													</tfoot>

												</table>
											</div>
										</div>
									</div>
								</div>
							</main>
							<footer class="py-4 bg-light mt-auto">
								<div class="container-fluid"></div>
							</footer>
						</div>
					</div>
					<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
					<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
					<script src="js/scripts.js"></script>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
					<script src="assets/demo/chart-area-demo.js"></script>
					<script src="assets/demo/chart-bar-demo.js"></script>
					<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
					<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
					<script src="assets/demo/datatables-demo.js"></script>

				</div>
			</main>
		</div>
	</div>
</body>
</html>