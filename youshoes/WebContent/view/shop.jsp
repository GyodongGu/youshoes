<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">
<title>jQuery UI Tabs - Collapse content</title>
<!-- Material design icons CSS -->
<link rel="stylesheet" href="vendor/materializeicon/material-icons.css">

<!-- Roboto fonts CSS -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap-4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Swiper CSS -->
<link href="vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- Chosen multiselect CSS -->
<link href="vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">

<!-- nouislider CSS -->
<link href="vendor/nouislider/nouislider.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
<script>
	$(function() {
		$("#accordion").accordion({
			collapsible : true,
			active : false,
			heightStyle : "content"
		});
		$("#accordion1").accordion({
			collapsible : true,
			active : false,
			heightStyle : "content"
		});
		$("#accordion2").accordion({
			collapsible : true,
			active : false,
			heightStyle : "content"
		});
		$("#accordion3").accordion({
			collapsible : true,
			active : false,
			heightStyle : "content"
		});
		$("#accordion4").accordion({
			collapsible : true,
			active : false,
			heightStyle : "content"
		});
		$("#accordion5").accordion({
			collapsible : true,
			active : false,
			heightStyle : "content"
		});
		$("#accordion6").accordion({
			collapsible : true,
			active : false,
			heightStyle : "content"
		});
	});
</script>
    <!-- page level script -->
    <script>
        $(window).on('load', function() {
            var swiper = new Swiper('.product-details ', {
                slidesPerView: 1,
                spaceBetween: 0,
                pagination: {
                    el: '.swiper-pagination'
                }
            });


        });

    </script>
<style>
#accordion1, #accordion2, #accordion3, #accordion4, #accordion5,
	#accordion6 {
	padding: 0px;
}

table {
	width: 100%
}

tr, td {
	border-bottom: 1px solid #ddd
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="row no-gutters">
				<div class="col-auto">
					<a href="all-products.html" class="btn  btn-link text-dark"><i
						class="material-icons">navigate_before</i></a>
				</div>
				<div class="col text-center">
					<img src="img/logo-header.png" alt="" class="header-logo">
				</div>
				<div class="col-auto">
					<a href="profile.html" class="btn  btn-link text-dark"><i
						class="material-icons">account_circle</i></a>
				</div>
			</div>
		</div>


		<!-- Swiper -->
		<div class="swiper-container product-details">
			<div class="swiper-wrapper">
				<div class="swiper-slide" style="padding: 0px">
					<img src="img/handmade.jpg" alt="">
				</div>
				<div class="swiper-slide">
					<img src="img/handmade.jpg" alt="">
				</div>
				<div class="swiper-slide">
					<img src="img/handmade.jpg" alt="">
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
		</div>

		<div class="container">

			<button class="btn btn-sm btn-link p-0">
				<i class="material-icons md-18">favorite_outline</i>
			</button>
			<a href="javascript:void(0)"
				class="btn btn-sm btn-default btn-rounded ml-2" data-toggle="modal"
				data-target="#share"><i class="material-icons mb-18 mr-2">share</i>Share</a>
			<div class="badge badge-success float-right mt-1">10% off</div>

			<p class="text-secondary my-3 small">
				<i class="material-icons text-warning md-18 vm">star</i> <i
					class="material-icons text-warning md-18 vm">star</i> <i
					class="material-icons text-warning md-18 vm">star</i> <i
					class="material-icons text-secondary md-18 vm">star</i> <i
					class="material-icons text-secondary md-18 vm">star</i> <span
					class="text-dark vm ml-2">Rating 4.2</span> <span class="vm">based
					on 245 reviews</span>
			</p>

			<a href="#" class="text-dark mb-1 mt-2 h3 d-block">맨즈 슈즈</a>

			<p class="text-secondary">저희 맨즈슈즈는 20년 전통을 자랑하는 전통 수제화 상점입니다.
				편안하고 디자인이 다양합니다.</p>




			<p class="text-center">
				<i class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-secondary vm">star</i> <i
					class="material-icons h3 text-secondary vm">star</i>
			</p>

			<div id="tabs">
				<ul>
					<li><a href="#tabs-1">가게 정보</a></li>
					<li><a href="pMem/review.jsp">스토리</a></li>
					<!-- <li><a href="#tabs-3">Aenean lacinia</a></li> -->
				</ul>
				<div id="tabs-1">
					<p>
						<strong>영업시간</strong>
					</p>
					<p>10:00~21:00</p>
					<br> <br>
					<p>
						<strong>휴무일</strong>
					</p>
					<p>매주 일요일</p>
					<br> <br>
					<p>
						<strong>전화번호</strong>
					</p>
					<p>053-666-7777</p>
					<p>010-3030-3692</p>
					<br> <br>
					<p>
						<strong>주소</strong>
					</p>
					<p>대구광역시 중구 중앙대로 449</p>
					<p></p>
					<p>
						<strong>메뉴</strong>
					</p>
					<div>
						<h3>남성화</h3>
						<div id="accordion1">
							<h3>&nbsp;&nbsp;기성화</h3>
							<div id="accordion3">
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;구두</h3>
								<div>
									<table>
										<tr>
											<td>브라운슈즈</td>
											<td><img src="img/brownshoes.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>블랙슈즈</td>
											<td><img src="img/blackshoes.jpg" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;운동화</h3>
								<div>
									<table>
										<tr>
											<td>운동화(white)</td>
											<td><img src="img/shoes2.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>운동화(black)</td>
											<td><img src="img/blacksports.jpg" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
							</div>



							<h3>맞춤화</h3>
							<div id="accordion4">
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;구두</h3>
								<div>
									<table>
										<tr>
											<td>브라운슈즈</td>
											<td><img src="img/brownshoes.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>블랙슈즈</td>
											<td><img src="img/blackshoes.jpg" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;운동화</h3>
								<div>
									<table>
										<tr>
											<td>운동화(white)</td>
											<td><img src="img/shoes2.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>운동화(black)</td>
											<td><img src="img/blacksports.jpg" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
							</div>

						</div>

						<h3>여성화</h3>
						<div id="accordion2">
							<h3>기성화</h3>
							<div id="accordion5">
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;구두</h3>
								<div>
									<table>
										<tr>
											<td>브라운슈즈</td>
											<td><img src="img/brownshoes.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>블랙슈즈</td>
											<td><img src="img/blackshoes.jpg" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;운동화</h3>
								<div>
									<table>
										<tr>
											<td>운동화(white)</td>
											<td><img src="img/shoes2.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>운동화(black)</td>
											<td><img src="img/blacksports.jpg" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
							</div>

							<h3>맞춤화</h3>
							<div id="accordion6">
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;구두</h3>
								<div>
									<table>
										<tr>
											<td>브라운슈즈</td>
											<td><img src="img/brownshoes.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>블랙슈즈</td>
											<td><img src="img/blackshoes.jpg" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;운동화</h3>
								<div>
									<table>
										<tr>
											<td>운동화(white)</td>
											<td><img src="img/shoes2.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>운동화(black)</td>
											<td><img src="img/blacksports.jpg" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
				<!-- 하단에 아이콘 버튼 이동 부분 -->
		<div class="footer">
			<div class="no-gutters">
				<div class="col-auto mx-auto">
					<div class="row no-gutters justify-content-center">
						<div class="col-auto">
							<a href="pMem.jsp" class="btn btn-link-default active"> <i class="material-icons">store_mall_directory</i>
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
							<a href="profile.jsp" class="btn btn-link-default"> <i class="material-icons">account_circle</i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
    <!-- swiper js -->
    <script src="vendor/swiper/js/swiper.min.js"></script>

    <!-- nouislider js -->
    <script src="vendor/nouislider/nouislider.min.js"></script>

    <!-- chosen multiselect js -->
    <script src="vendor/chosen_v1.8.7/chosen.jquery.min.js"></script>

    <!-- template custom js -->
    <script src="js/main.js"></script>
</body>
</html>