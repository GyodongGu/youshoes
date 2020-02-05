<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>프로필</title>

<!-- Material design icons CSS -->
<link rel="stylesheet" href="../vendor/materializeicon/material-icons.css">

<!-- Roboto fonts CSS -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

<!-- Swiper CSS -->
<link href="../vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- Chosen multiselect CSS -->
<link href="../vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">

<!-- nouislider CSS -->
<link href="../vendor/nouislider/nouislider.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<!-- 상단에 따라다니는 줄 -->
		<div class="header">
			<div class="row no-gutters">
				<div class="col-auto">
					<a href="javascript:void(0)" onclick="location.href='pMem.jsp'" class="btn  btn-link text-dark"> <i class="material-icons">navigate_before</i></a>
				</div>
				<div class="col text-center">
					<img src="../img/logo.png" alt="" class="header-logo"> YouSheos
				</div>
				<div class="col-auto">
					<a href="profile.jsp" class="btn  btn-link text-dark"><i class="material-icons">account_circle</i></a>
				</div>
			</div>
		</div>
		<!-- // 상단에 따라다니는 줄 -->
		<div class="container">
			<h1 class="display-4">현재 진행중인 이벤트</h1>
			<br>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">First</th>
						<th scope="col">Last</th>
						<th scope="col">Handle</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>


			<!-- 하단에 아이콘 버튼 이동 부분 -->
			<div class="footer">
				<div class="no-gutters">
					<div class="col-auto mx-auto">
						<div class="row no-gutters justify-content-center">
							<div class="col-auto">
								<a href="pMem.jsp" class="btn btn-link-default "> <i class="material-icons">store_mall_directory</i>
								</a>
							</div>
							<div class="col-auto">
								<a href="orderHistory.jsp" class="btn btn-link-default"> <i class="material-icons">insert_chart_outline</i>
								</a>
							</div>
							<div class="col-auto">
								<a href="cart.html" class="btn btn-default shadow centerbutton"> <i class="material-icons">local_mall</i>
								</a>
							</div>
							<div class="col-auto">
								<a href="bookmark.jsp" class="btn btn-link-default"> <i class="material-icons">favorite</i>
								</a>
							</div>
							<div class="col-auto">
								<a href="profile.jsp" class="btn btn-link-default active"> <i class="material-icons">account_circle</i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- // 하단에 아이콘 버튼 이동 부분 -->
		</div>
	</div>


	<!-- jquery, popper and bootstrap js -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

	<!-- swiper js -->
	<script src="../vendor/swiper/js/swiper.min.js"></script>

	<!-- nouislider js -->
	<script src="../vendor/nouislider/nouislider.min.js"></script>

	<!-- chart js -->
	<script src="../vendor/chartjs/Chart.min.js"></script>
	<script src="../vendor/chartjs/utils.js"></script>

	<!-- chosen multiselect js -->
	<script src="../vendor/chosen_v1.8.7/chosen.jquery.min.js"></script>

	<!-- template custom js -->
	<script src="js/main.js"></script>

	<!-- page level script -->
	<script>
		$(window).on('load', function() {
		});
	</script>
</body>

</html>
