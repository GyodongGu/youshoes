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
	<div class="wrapper">
		<!-- 상단에 뒤로가기 버튼 있는 따라다니는 줄 -->
		<div class="header">
			<diV><jsp:include page="topMenuBack.jsp"></jsp:include></div>
		</div>
		<!-- // 상단에 뒤로가기 버튼 있는 따라다니는 줄 -->

		<!-- 내부 내용 전체 감싸는 부분 -->
		<div class="container">
			<!-- 검색창 부분 -->
			<input type="text" class="form-control form-control-lg search my-3" placeholder="검색">
			<!-- 구매 회원 가게검색페이지의 카테고리 -->
			<div class="subtitle h6">
				<div class="d-inline-block">
					모든 가게<br>
				</div>
			</div>
			<!-- // 구매 회원 가게검색페이지의 카테고리 -->
			<!-- 구매 회원 가게검색페이지의 카테고리 내부 내용 -->
			<div class="row">
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 1 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="${pageContext.request.contextPath}/view/img/shop1.jpg" alt="" class="">
							</figure>

							<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">가게1</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 1 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 2 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="${pageContext.request.contextPath}/view/img/shop2.JPG" alt="" class="">
							</figure>

							<a href="${pageContext.request.contextPath}/shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게2</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- //  구매 회원 가게 검색 페이지의 하얀 작은 네모 2 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 3 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop3.JPG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게3</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 3 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 4 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop4.JPG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게4</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 4 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 5 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop5.JPG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게5</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 5 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 6 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop6.PNG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게6</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 6 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 7 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop7.PNG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게7</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 7 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 8 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop8.PNG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게8</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 8 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 9 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop9.PNG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게9</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 9 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 10 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop1.jpg" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게10</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 10 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 11 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop2.JPG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게11</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 11 -->
				<!-- 구매 회원 가게 검색 페이지의 하얀 작은 네모 12 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">favorite_outline</i>
							</button>

							<figure class="product-image">
								<img src="../img/shop3.JPG" alt="" class="">
							</figure>

							<a href="../shop.jsp" class="text-dark mb-1 mt-2 h6 d-block">가게12</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 12 -->
			</div>
			<!-- // 구매 회원 가게검색페이지의 카테고리 내부 내용 -->
		</div>
		<!-- // 내부 내용 전체 감싸는 부분 -->

		<!-- 하단에 아이콘 버튼 이동 부분 -->
		<div class="footer">
			<diV><jsp:include page="bottomMenu.jsp"></jsp:include></div>
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
