<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!doctype html>
<html lang="en" class="brown-theme">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">
<title>YouShoes</title>
<!-- Material 디자인 아이콘 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/vendor/materializeicon/material-icons.css">
<!-- Roboto fonts CSS -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
<!-- 부트스트랩 core CSS -->
<link href="${pageContext.request.contextPath}/view/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Chosen multiselect CSS -->
<link href="${pageContext.request.contextPath}/view/vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">
<!-- nouislider CSS -->
<link href="${pageContext.request.contextPath}/view/vendor/nouislider/nouislider.min.css" rel="stylesheet">
<!-- 카테고리 넘기는 swiper CSS 및 js -->
<link href="${pageContext.request.contextPath}/view/vendor/swiper/css/swiper.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/view/vendor/swiper/js/swiper.min.js"></script>
<!-- jquery, popper and bootstrap js -->
<script src="../js/popper.min.js"></script>
<!-- nouislider js -->
<script src="../vendor/nouislider/nouislider.min.js"></script>
<!-- 상단 메뉴바의 왼쪽 사이드 열기 위해 필요한 CSS 및 js -->
<script src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/view/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/view/vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/view/css/style.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- // 상단 메뉴바의 왼쪽 사이드 열기 위해 필요한 CSS -->
<!-- 이미지가 들어가지 않은 img태그의  공간 표시 js -->
<script src="${pageContext.request.contextPath}/view/js/main.js"></script>
<script>
	$(window).on('load', function() {
		/* swiper slider carousel */
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

		/* notification view and hide */
		setTimeout(function() {
			$('.notification').addClass('active');
			setTimeout(function() {
				$('.notification').removeClass('active');
			}, 3500);
		}, 500);
		$('.closenotification').on('click', function() {
			$(this).closest('.notification').removeClass('active')
		});
	});
</script>
<!-- //  카테고리 넘기는 swiper 스크립트 -->
<decorator:head />
</head>
<body>
	<!-- 사이드바 -->
	<div class="sidebar">
		<div class="text-center">
			<div class="figure-menu shadow">
				<figure>
					<img src="${pageContext.request.contextPath}/view/img/user1.jpg" alt="">
				</figure>
			</div>
			<h5 class="mb-1 ">${pmDTO.pm_name} 님( ${pmDTO.pm_id} )</h5>
		</div>
		<br>
		<div class="row mx-0">
			<div class="col">
				<!-- 구매 회원이 현재 가지고 있는 포인트를 표시해주는 박스 -->
				<div class="card mb-3 border-0 shadow-sm bg-template-light">
					<div class="card-body">
						<div class="row">
							<div class="col">
								<p class="text-secondary small mb-0">현재 포인트</p>
								<h3 class="text-dark my-0">${pmDTO.point_now}</h3>
							</div>
						</div>
					</div>
				</div>
				<!-- // 구매 회원이 현재 가지고 있는 포인트를 표시해주는 박스 -->
				<!-- 사이드바의 메뉴바 -->
				<h5 class="subtitle text-uppercase">
					<span>Menu</span>
				</h5>
				<div class="list-group main-menu">
					<a href="${pageContext.request.contextPath}/searchShop.do" class="list-group-item list-group-item-action">스토어</a> 
					<a href="${pageContext.request.contextPath}/pMemEvent.do" class="list-group-item list-group-item-action">이벤트</a> 
					<a href="${pageContext.request.contextPath}/orderHistory.do" class="list-group-item list-group-item-action">주문내역</a> 
					<a href="${pageContext.request.contextPath}/view/pMem/profile.jsp" class="list-group-item list-group-item-action">프로필</a> 
					<a href="${pageContext.request.contextPath}/logout.do" class="list-group-item list-group-item-action mt-4">로그아웃</a>
				</div>
				<!-- // 사이드바의 메뉴바 -->
			</div>
		</div>
	</div>
	<!-- // 사이드바 -->

	<div class="wrapper">
		<!-- 프로필 볼 수 있는 상단 메뉴바 -->
		<div class="header">
			<diV><jsp:include page="/view/pMem/topMenu.jsp"></jsp:include></div>
		</div>
		<!-- // 프로필 볼 수 있는 상단 메뉴바 -->

		<!-- 내부 내용 전체 감싸는 부분 -->
		<div class="container">
			<decorator:body />
			<!-- 하단에 아이콘 버튼 이동 부분 -->
			<div class="footer">
				<div><jsp:include page="/view/pMem/bottomMenu.jsp"></jsp:include></div>
			</div>
			<!-- // 하단에 아이콘 버튼 이동 부분 -->
		</div>
	</div>
</body>
</html>
