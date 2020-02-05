<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>이용약관</title>

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

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


</head>

<body>
	<div class="wrapper">
		<!-- 사이드바 -->
		<div class="sidebar">
			<div class="text-center">
				<div class="figure-menu shadow">
					<figure>
						<img src="img/user1.png" alt="">
					</figure>
				</div>
				<h5 class="mb-1 ">사용자 1</h5>
				<p class="text-mute small">서울, 대한민국</p>
			</div>
			<br>
			<div class="row mx-0">
				<div class="col">
					<div class="card mb-3 border-0 shadow-sm bg-template-light">
						<div class="card-body">
							<div class="row">
								<div class="col">
									<p class="text-secondary small mb-0">현재 포인트</p>
									<h6 class="text-dark my-0">$2585.00</h6>
								</div>
								<div class="col-auto">
									<button class="btn btn-default button-rounded-36 shadow">
										<i class="material-icons">add</i>
									</button>
								</div>
							</div>
						</div>
					</div>
					<h5 class="subtitle text-uppercase">
						<span>Menu</span>
					</h5>
					<div class="list-group main-menu">
						<a href="pMem.jsp" class="list-group-item list-group-item-action active">스토어</a> <a href="notification.html" class="list-group-item list-group-item-action">공지사항<span class="badge badge-dark text-white">2</span></a> <a href="all-products.html" class="list-group-item list-group-item-action">모든 제품</a> <a href="orderHistory.jsp" class="list-group-item list-group-item-action">주문내역</a> <a href="profile.jsp" class="list-group-item list-group-item-action">프로필</a> <a href="#" class="list-group-item list-group-item-action mt-4">로그아웃</a>
					</div>
				</div>
			</div>
		</div>
		<!-- // 사이드바 -->
		<!-- 상단에 따라다니는 줄 -->
		<div class="header">
			<div class="row no-gutters">
				<div class="col-auto">
					<a href="javascript:void(0)" onclick="location.href='pMem.jsp'" class="btn  btn-link text-dark"> <i class="material-icons">navigate_before</i>
					</a>
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
		<!-- 내부 내용 전체 감싸는 부분 -->
		<div class="container">
			<!-- 프로필 이미지 사진  -->
			<div class="text-center">
				<div class="figure-profile shadow my-4">
					<figure>
						<img src="../img/user1.png" alt="">
					</figure>
					<div class="btn btn-dark text-white floating-btn">
						<i class="material-icons">camera_alt</i> <input type="file" class="float-file">
					</div>
				</div>
			</div>
			<!-- // 프로필 이미지 사진  -->

			<!-- 프로필 탭 메뉴 -->
			<div id="tabs">
				<ul>
					<li><a href="myReview.jsp">내 스토리</a></li>
					<li><a href="point.jsp">내 포인트</a></li>
					<li><a href="profileSet.jsp">설정</a></li>
				</ul>

			</div>
			<!-- // 프로필 탭 메뉴 -->

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
