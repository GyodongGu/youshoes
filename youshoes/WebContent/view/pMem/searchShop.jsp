<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>Products · GoFurniture</title>

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
	<!-- 사이드바 -->
	<div class="sidebar">
		<div class="text-center">
			<div class="figure-menu shadow">
				<figure>
					<img src="../img/user1.png" alt="">
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
					<a href="searchShop.jsp" class="list-group-item list-group-item-action active">스토어</a> <a href="pMemEvent.jsp" class="list-group-item list-group-item-action">공지사항</a> <a href="product.jsp" class="list-group-item list-group-item-action">모든 제품</a> <a href="orderHistory.jsp" class="list-group-item list-group-item-action">주문내역</a> <a href="profile.jsp" class="list-group-item list-group-item-action">프로필</a> <a href="../login.jsp" class="list-group-item list-group-item-action mt-4">로그아웃</a>
				</div>
			</div>
		</div>
	</div>
	<!-- // 사이드바 -->
	<!-- 상단에 따라다니는 줄 -->
	<div class="wrapper">
		<div class="header">
			<div class="row no-gutters">
				<div class="col-auto">
					<button class="btn  btn-link text-dark menu-btn">
						<img src="../img/menu.png" alt=""> <span class="new-notification"></span>
					</button>
				</div>
				<div class="col text-center">
					<img src="../img/logo.png" alt="" class="header-logo"> YouSheos
				</div>
				<div class="col-auto">
					<a href="profile.jsp" class="btn  btn-link text-dark"> <i class="material-icons">account_circle</i>
					</a>
				</div>
			</div>
		</div>
		<!-- // 상단에 따라다니는 줄 -->
		<!-- 내부 내용 전체 감싸는 부분 -->
		<div class="container">
			<!-- 검색창 부분 -->
			<input type="text" class="form-control form-control-lg search my-3" placeholder="검색">
			<!-- 구매 회원 상품검색페이지의 카테고리 -->
			<div class="subtitle h6">
				<div class="d-inline-block">
					모든 가게<br>
				</div>
			</div>
			<div class="row">
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop1.jpg" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게1</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop2.JPG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게2</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop3.JPG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게3</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop4.JPG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게4</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop5.JPG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게5</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop6.PNG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게6</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop7.PNG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게7</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop8.PNG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게8</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop9.PNG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게9</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop1.jpg" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게10</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop2.JPG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게11</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop3.JPG" alt="" class="">
							</figure>

							<a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">가게12</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
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
		<!-- // 하단에 아이콘 버튼 이동 부분 -->
	</div>
	
	
	<!-- jquery, popper and bootstrap js -->
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

	<!-- swiper js -->
	<script src="../vendor/swiper/js/swiper.min.js"></script>

	<!-- nouislider js -->
	<script src="../vendor/nouislider/nouislider.min.js"></script>

	<!-- chosen multiselect js -->
	<script src="../vendor/chosen_v1.8.7/chosen.jquery.min.js"></script>

	<!-- template custom js -->
	<script src="../js/main.js"></script>

	<!-- page level script -->
	<script>
		$(window).on('load', function() {
			var swiper = new Swiper('.small-slide', {
				slidesPerView : 'auto',
				spaceBetween : 0,
			});

			var swiper = new Swiper('.news-slide', {
				slidesPerView : 5,
				spaceBetween : 0,
				pagination : {
					el : '.swiper-pagination',
				},
				breakpoints : {
					1024 : {
						slidesPerView : 4,
						spaceBetween : 0,
					},
					768 : {
						slidesPerView : 3,
						spaceBetween : 0,
					},
					640 : {
						slidesPerView : 2,
						spaceBetween : 0,
					},
					320 : {
						slidesPerView : 2,
						spaceBetween : 0,
					}
				}
			});

			/* range picker for filter */
			var html5Slider = document.getElementById('rangeslider');
			noUiSlider.create(html5Slider, {
				start : [ 0, 100 ],
				connect : true,
				range : {
					'min' : 0,
					'max' : 500
				}
			});

			var inputNumber = document.getElementById('input-number');
			var select = document.getElementById('input-select');

			html5Slider.noUiSlider.on('update', function(values, handle) {
				var value = values[handle];

				if (handle) {
					inputNumber.value = value;
				} else {
					select.value = Math.round(value);
				}
			});
			select.addEventListener('change', function() {
				html5Slider.noUiSlider.set([ this.value, null ]);
			});
			inputNumber.addEventListener('change', function() {
				html5Slider.noUiSlider.set([ null, this.value ]);
			});

			/* chosen select*/
			$(".chosen").chosen();
		});
	</script>

</body>

</html>
