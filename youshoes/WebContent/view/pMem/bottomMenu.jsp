<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하단에 이동버튼 메뉴바</title>
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
	<div class="no-gutters">
		<div class="col-auto mx-auto">
			<div class="row no-gutters justify-content-center">
				<div class="col-auto">
					<a href="pMem.jsp" class="btn btn-link-default "> <i class="material-icons">home</i>
					</a>
				</div>
				<div class="col-auto">
					<a href="orderHistory.jsp" class="btn btn-link-default"> <i class="material-icons">insert_chart_outline</i>
					</a>
				</div>
				<div class="col-auto">
					<a href="searchShop.jsp" class="btn btn-default shadow centerbutton"> <i class="material-icons">local_mall</i>
					</a>
				</div>
				<div class="col-auto">
					<a href="bookmark.jsp" class="btn btn-link-default"> <i class="material-icons">star</i>
					</a>
				</div>
				<div class="col-auto">
					<a href="profile.jsp" class="btn btn-link-default active"> <i class="material-icons">account_circle</i>
					</a>
				</div>
			</div>
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
</body>
</html>