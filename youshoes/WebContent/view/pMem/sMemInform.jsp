<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>사업자 정보 확인</title>

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
		<!-- 상단에 뒤로가기 버튼 있는 따라다니는 줄 -->
		<div class="header">
			<diV><jsp:include page="topMenuBack.jsp"></jsp:include></div>
		</div>
		<!-- // 상단에 뒤로가기 버튼 있는 따라다니는 줄 -->
		
		<!-- 내부 내용 전체 감싸는 부분 -->
		<div class="container">
			<!-- 내용입력 -->
			<div id="tabs">
				<h3 align="center">사업자 정보 확인</h3>
			<br/>
			<hr/>
통신판매번호<br>
2020-대구중구-0114<br>
<hr>
사업자등록번호<br>
657-64-21786<br>
<hr>
신고현황<br>
통신판매업 신고<br>
<hr>
법인여부<br>
법인<br>
<hr>
상호<br>
주식회사 유슈즈<br>
<hr>
대표자명<br>
홍길동<br>
<hr>
대표 전화번호<br>
053-123--4567<br>
<hr>
판매방식<br>
인터넷<br>
<hr>
취급품목<br>
신발<br>
<hr>
전자우편(E-mail)<br>
abc@abcd.co.kr<br>
<hr>
신고일자<br>
20200205<br>
<hr>
사업장 소재지<br>
대구광역시 중구 국채보상로<br>
<hr>
인터넷도메인<br>
youshoes.co.kr<br>
<hr>
호스트서버 소재지<br>
대구광역시 중구 국채보상로<br>
<hr>
통신판매업 신고기관명<br>
대구광역시 중구청<br>
			</div>
			<!-- // 내용입력 -->

			<!-- 하단에 아이콘 버튼 이동 부분 -->
			<div class="footer">
				<diV><jsp:include page="bottomMenu.jsp"></jsp:include></div>
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
