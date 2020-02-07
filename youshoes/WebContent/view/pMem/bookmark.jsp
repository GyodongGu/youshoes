<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>즐겨찾기</title>

<!-- 상단 메뉴바의 왼쪽 사이드 열기 위해 필요한 CSS -->
<link href="../css/style.css" rel="stylesheet">
<!-- 우리쪽에 있는 템플릿 css -->
<script src="../js/jquery-3.3.1.min.js"></script>
<!-- jquery js -->
<script src="../js/popper.min.js"></script>
<!-- popper js -->
<script src="../vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>
<!-- bootstrap js -->
<script src="../js/main.js"></script>
<!-- template custom js -->
<!-- // 상단 메뉴바의 왼쪽 사이드 열기 위해 필요한 CSS -->
</head>


<body>
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


	<div class="wrapper">
		<!-- 프로필 볼 수 있는 상단 메뉴바 -->
		<div class="header">
			<diV><jsp:include page="topMenu.jsp"></jsp:include></div>
		</div>
		<!-- // 프로필 볼 수 있는 상단 메뉴바 -->

		<div class="container">
			<!-- 내부 내용 -->
			<div class="subtitle h6">
				<div class="d-inline-block">
					찜한 상품<br>
					<p class="small text-mute">4개의 상품</p>
				</div>
				<div class="float-right">
					<div class="btn-group " role="group" aria-label="Basic example"></div>
				</div>
			</div>
			<div class="row">
				<!-- 내부 내용 흰색 네모 1 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i id="starIcon" class="material-icons md-18">star_border</i>
							</button>
							<!-- <script>
								function chageStar() {
									document.getElementById("starIcon") = "star";
								}
							</script> -->

							<figure class="product-image">
								<img src="../img/shoes1.png" alt="" class="">
							</figure>


							<a href="#" class="text-dark mb-1 mt-2 h6 d-block">남성 수제</a>
							<h5 class="text-success font-weight-normal mb-0">
								$ 120<sup>.00</sup>
							</h5>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 내부 내용 흰색 네모 1 -->
				<!-- 내부 내용 흰색 네모 2 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">star_border</i>
							</button>

							<figure class="product-image">
								<img src="../img/shoes2.png" alt="" class="">
							</figure>

							<a href="#" class="text-dark mb-1 mt-2 h6 d-block">여성 수제</a>
							<h5 class="text-success font-weight-normal mb-0">
								$ 100<sup>.00</sup>
							</h5>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 내부 내용 흰색 네모 2 -->
				<!-- 내부 내용 흰색 네모 3 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button type="button" class="btn btn-sm btn-link p-0">
								<i id="starImg" class="material-icons md-18">star</i>
							</button>

							<figure class="product-image">
								<img src="../img/shoes3.png" alt="" class="">
							</figure>

							<a href="#" class="text-dark mb-1 mt-2 h6 d-block">남성 수제 1</a>
							<h5 class="text-success font-weight-normal mb-0">
								$ 120<sup>.00</sup>
							</h5>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 내부 내용 흰색 네모 3 -->
				<!-- 내부 내용 흰색 네모 4 -->
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<button class="btn btn-sm btn-link p-0">
								<i class="material-icons md-18">star_border</i>
							</button>

							<figure class="product-image">
								<img src="../img/shoes4.png" alt="" class="">
							</figure>

							<a href="#" class="text-dark mb-1 mt-2 h6 d-block">여성 수제 1</a>
							<h5 class="text-success font-weight-normal mb-0">
								$ 120<sup>.00</sup>
							</h5>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				<!-- // 내부 내용 흰색 네모 4 -->
			</div>
		</div>
		<!-- 하단에 아이콘 버튼 이동 부분 -->
		<div class="footer">
			<diV><jsp:include page="bottomMenu.jsp"></jsp:include></div>
		</div>
		<!-- // 하단에 아이콘 버튼 이동 부분 -->
	</div>
</body>

</html>
