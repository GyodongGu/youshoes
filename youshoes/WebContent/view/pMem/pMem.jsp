<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!doctype html>
<html lang="en" class="blue-theme">
<head>
<title>구매 회원 메인</title>
</head>
<body>
	<!-- 검색창 부분 -->
	<input type="text" class="form-control form-control-lg search my-3" placeholder="검색">
	<!-- 구매 회원 메인페이지의 카테고리 -->
	<h6 class="subtitle">인기상품</h6>
	<div class="row">
		<div class="swiper-container small-slide">
			<!-- Swiper, 카테고리 내부에 하얀 네모 1 -->
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes08.png" alt="" class="small-slide-right">
								<div class="col-8">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">남성기성</a>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 1 -->
				<!-- Swiper, 카테고리 내부에 하얀 네모 2 -->
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes09.png" alt="" class="small-slide-right">
								<div class="col-8">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">여성기성</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 2 -->
				<!-- Swiper, 카테고리 내부에 하얀 네모 3 -->
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes10.png" alt="" class="small-slide-right">
								<div class="col-9">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/view/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">남성수제</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 3 -->
				<!-- Swiper, 카테고리 내부에 하얀 네모 4 -->
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes7.png" alt="" class="small-slide-right">
								<div class="col-8">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/view/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">여성수제</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 4 -->
				<!-- Swiper, 카테고리 내부에 하얀 네모 5 -->
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes12.png" alt="" class="small-slide-right">
								<div class="col-8">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/view/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">남성 구두</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 5 -->
				<!-- Swiper, 카테고리 내부에 하얀 네모 6 -->
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes13.png" alt="" class="small-slide-right">
								<div class="col-9">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">여자 구두</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 6 -->
				<!-- Swiper, 카테고리 내부에 하얀 네모 7 -->
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes14.jpg" alt="" class="small-slide-right">
								<div class="col-8">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">남성신발</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 7 -->
				<!-- Swiper, 카테고리 내부에 하얀 네모 8 -->
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes15.jpg" alt="" class="small-slide-right">
								<div class="col-8">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">여성 신발</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 8 -->
				<!-- Swiper, 카테고리 내부에 하얀 네모 9 -->
				<div class="swiper-slide">
					<div class="card shadow-sm border-0">
						<div class="card-body">
							<div class="row no-gutters h-100">
								<img src="${pageContext.request.contextPath}/view/img/shoes16.png" alt="" class="small-slide-right">
								<div class="col-9">
									<button class="btn btn-sm btn-link p-0">
										<i class="material-icons md-18">star_border</i>
									</button>
									<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">누구신발</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // Swiper, 카테고리 내부에 하얀 네모 9 -->
			</div>
		</div>
	</div>
	<!-- 구매 회원 메인 페이지의 가게 -->
	<h6 class="subtitle">
		가게 <a href="searchShop.jsp" class="float-right small">가게 더보기</a>
	</h6>
	<div class="row">
		<div class="col-6 col-md-4 col-lg-3 col-xl-2">
			<div class="card shadow-sm border-0 mb-4">
				<div class="card-body">
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
		<div class="col-6 col-md-4 col-lg-3 col-xl-2">
			<div class="card shadow-sm border-0 mb-4">
				<div class="card-body">
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/shop2.JPG" alt="" class="">
					</figure>
					<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">가게2</a>
					<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
						<i class="material-icons md-18">shopping_cart</i>
					</button>
				</div>
			</div>
		</div>
		<div class="col-6 col-md-4 col-lg-3 col-xl-2">
			<div class="card shadow-sm border-0 mb-4">
				<div class="card-body">
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/shop3.JPG" alt="" class="">
					</figure>
					<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">가게3</a>
					<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
						<i class="material-icons md-18">shopping_cart</i>
					</button>
				</div>
			</div>
		</div>
		<div class="col-6 col-md-4 col-lg-3 col-xl-2">
			<div class="card shadow-sm border-0 mb-4">
				<div class="card-body">
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/shop4.JPG" alt="" class="">
					</figure>
					<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">가게4</a>
					<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
						<i class="material-icons md-18">shopping_cart</i>
					</button>
				</div>
			</div>
		</div>
		<div class="col-6 col-md-4 col-lg-3 col-xl-2">
			<div class="card shadow-sm border-0 mb-4">
				<div class="card-body">
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/shop5.JPG" alt="" class="">
					</figure>
					<a href="${pageContext.request.contextPath}/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">가게5</a>
					<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
						<i class="material-icons md-18">shopping_cart</i>
					</button>
				</div>
			</div>
		</div>
		<div class="col-6 col-md-4 col-lg-3 col-xl-2">
			<div class="card shadow-sm border-0 mb-4">
				<div class="card-body">
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/shop6.PNG" alt="" class="">
					</figure>
					<a href="${pageContext.request.contextPath}/view/Shop.do" class="text-dark mb-1 mt-2 h6 d-block">가게6</a>
					<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
						<i class="material-icons md-18">shopping_cart</i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- // 구매 회원 메인 페이지의 가게 -->
	<!-- 구매 회원 메인 페이지의 이벤트  -->
	<div class="container-fluid bg-warning text-white my-3" onclick="location.href='${pageContext.request.contextPath}/pMemEvent.do'">
		<div class="row">
			<div class="container">
				<div class="row  py-4 ">
					<div class="col">
						<h1 class="text-uppercase mb-3">20% 세일 중</h1>
						<p class="mb-3">
							할인 쿠폰 지급<br>
						</p>
					</div>
					<div class="col-5 col-md-3 col-lg-2 col-xl-2">
						<img src="${pageContext.request.contextPath}/view/img/shoes18.png" alt="" class="mw-100 mt-3">
					</div>
					<div class="w-100"></div>
					<div class="col">
						<p>지금이 아니면 후회활 기회 !!</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- // 구매 회원 메인 페이지의 이벤트  -->
	<div> 
			<c:if test="${empty id }">
				<br />
				<span>로그인하시기 바랍니다.(배광준:세션테스트)</span>
			</c:if>
			<c:if test="${id != null }">
				<br />
				<span>${grant } &nbsp; ${id }님, 환영합니다. ${dto.pm_name } (배광준:세션테스트)</span>
			</c:if>
		</div>
	<!-- 이용약관 등 4개 페이지  -->
	<div class="container mb-3">
		<div class="row">
			<div class="col text-center">
				<ul>
					<li><a class="txt2" href="${pageContext.request.contextPath}/view/pMem/serviceTOS.jsp">이용약관</a> <span> | </span> <a class="txt2" href="privacy.jsp">개인정보 처리방침</a> <span> | </span> <a class="txt2" href="sMemInform.jsp">사업자 정보 확인</a> <span> | </span> <a class="txt2" href="privacyInformOther.jsp">개인정보 제 3자 제공 동의</a></li>
					<li></li>
				</ul>
				<p class="text-secondary">
					YouShoes는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. <br>따라서 YouShoes는 상품거래 정보 및 거래에 대한 책임을 지지 않습니다.
				</p>
			</div>
		</div>
	</div>
</body>
</html>
