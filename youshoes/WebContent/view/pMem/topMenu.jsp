<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 볼 수 있는 상단 메뉴바</title>
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

<!-- Tab키 스크립트 및 CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- // Tab키 스크립트 및 CSS -->
</head>
<body>
	<div class="row no-gutters">
		<div class="col-auto">
			<button class="btn  btn-link text-dark menu-btn">
				<img src="../img/menu.png" alt=""> <span class="new-notification"></span>
			</button>
		</div>
		<div class="col text-center">
			<img src="../img/logo.png" alt="logo" class="header-logo"> YouShoes
		</div>
		<div class="col-auto">
			<a href="profile.jsp" class="btn  btn-link text-dark"><i class="material-icons">account_circle</i></a>
		</div>
	</div>



	<!-- jquery, popper and bootstrap js -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

	<!-- swiper js -->
	<script src="vendor/swiper/js/swiper.min.js"></script>

	<!-- nouislider js -->
	<script src="vendor/nouislider/nouislider.min.js"></script>

	<!-- chart js -->
	<script src="vendor/chartjs/Chart.min.js"></script>
	<script src="vendor/chartjs/utils.js"></script>

	<!-- chosen multiselect js -->
	<script src="vendor/chosen_v1.8.7/chosen.jquery.min.js"></script>

	<!-- template custom js -->
	<script src="js/main.js"></script>

	<!-- page level script -->
	<script>
		$(window).on('load', function() {
		});
	</script>

	<!-- 탭 메뉴를 위한 스크립트 -->
	<script>
		$(function() {
			$("#tabs")
					.tabs(
							{
								beforeLoad : function(event, ui) {
									ui.jqXHR
											.fail(function() {
												ui.panel
														.html("Couldn't load this tab. We'll try to fix this as soon as possible. "
																+ "If this wouldn't be a demo.");
											});
								}
							});
		});
	</script>
</body>
</html>