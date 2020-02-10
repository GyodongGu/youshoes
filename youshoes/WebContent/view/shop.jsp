<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">
<title>shop</title>
<!-- Material design icons CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/vendor/materializeicon/material-icons.css">

<!-- Roboto fonts CSS -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/view/vendor/bootstrap-4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Swiper CSS -->
<link href="${pageContext.request.contextPath}/view/vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- Chosen multiselect CSS -->
<link href="${pageContext.request.contextPath}/view/vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">

<!-- nouislider CSS -->
<link href="${pageContext.request.contextPath}/view/vendor/nouislider/nouislider.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<script src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/view/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/view/vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/view/css/style.css" rel="stylesheet">


<!-- 탭 메뉴 스크립트 및 CSS -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- // Tab키 스크립트 및 CSS -->

<!-- 카카오 지도 api  -->


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
<!-- // 탭 메뉴를 위한 스크립트 -->
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
			slidesPerView : 1,
			spaceBetween : 0,
			pagination : {
				el : '.swiper-pagination'
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
	<!-- 사이드바 -->
	<div class="sidebar">
		<div class="text-center">
			<div class="figure-menu shadow">
				<figure>
					<img src="${pageContext.request.contextPath}/view/img/user1.png" alt="">
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
					<a href="${pageContext.request.contextPath}/view/pMem/searchShop.jsp"
						class="list-group-item list-group-item-action active">스토어</a> <a
						href="${pageContext.request.contextPath}/view/pMem/pMemEvent.jsp"
						class="list-group-item list-group-item-action">공지사항</a> <a
						href="${pageContext.request.contextPath}/view/pMem/product.jsp" class="list-group-item list-group-item-action">모든
						제품</a> <a href="orderHistory.jsp"
						class="list-group-item list-group-item-action">주문내역</a> <a
						href="${pageContext.request.contextPath}/view/pMem/profile.jsp" class="list-group-item list-group-item-action">프로필</a>
					<a href="${pageContext.request.contextPath}/view/login.jsp"
						class="list-group-item list-group-item-action mt-4">로그아웃</a>
				</div>
			</div>
		</div>
	</div>
	<!-- // 사이드바 -->

	<div class="wrapper">
		<!-- 상단에 따라다니는 줄 -->
		<div class="header">
			<div class="row no-gutters">
				<div class="col-auto">
					<button class="btn  btn-link text-dark menu-btn">
						<img src="${pageContext.request.contextPath}/view/img/menu.png" alt=""> <span
							class="new-notification"></span>
					</button>
				</div>
				<div class="col text-center">
					<img src="${pageContext.request.contextPath}/view/img/logo.png" alt="" class="header-logo"> YouSheos
				</div>
				<div class="col-auto">
					<a href="profile.jsp" class="btn  btn-link text-dark"> <i
						class="material-icons">account_circle</i>
					</a>
				</div>
			</div>
		</div>
		<!-- // 상단에 따라다니는 줄 -->


		<!-- 가게 사진 이미지 -->
		<div class="swiper-container product-details">
			<div class="swiper-wrapper">
				<div class="swiper-slide" style="padding: 0px">
					<img src="${pageContext.request.contextPath}/view/img/handmade.jpg" alt="">
				</div>
				<div class="swiper-slide">
					<img src="${pageContext.request.contextPath}/view/img/handmade.jpg" alt="">
				</div>
				<div class="swiper-slide">
					<img src="${pageContext.request.contextPath}/view/img/handmade.jpg" alt="">
				</div>
			</div>
			<!-- 가게 사진 이미지의 pagination -->
			<div class="swiper-pagination"></div>
		</div>
		<!-- // 가게 사진 이미지 -->

		<!-- 가게별 페이지 -->
		<div class="container">
			<!-- 가게 문구  -->
			<a href="#" class="text-dark mb-1 mt-2 h3 d-block">${smem.shop_name }</a>
			<p class="text-secondary">${smem.sm_remark }</p>
			<!-- // 가게 문구  -->
			<!-- 가게 사진 이미지 -->
			<p class="text-center">
				<i class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-secondary vm">star</i> <i
					class="material-icons h3 text-secondary vm">star</i>
			</p>
			<!-- // 가게 사진 이미지 -->
			<!-- 가게별 페이지 탭 부분 -->
			<div id="tabs">
				<ul>
					<li><a href="#tabs-1">가게 정보</a></li>
					<li><a href="${pageContext.request.contextPath}/Review.do">스토리</a></li>
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
					
					<p>${smem.sm_tell }</p>
					<br> <br>
					<p>
						<strong>주소</strong>
					</p>
					
					<p id="addr">${smem.sm_addr1 }</p>
					<div id="map" style="width:auto;height:200px;"></div>
					
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
											<td><img src="${pageContext.request.contextPath}/view/img/handmade.jpg" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>블랙슈즈</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes03.png" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;운동화</h3>
								<div>
									<table>
										<tr>
											<td>운동화(white)</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>운동화(black)</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
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
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>블랙슈즈</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;운동화</h3>
								<div>
									<table>
										<tr>
											<td>운동화(white)</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>운동화(black)</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
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
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>블랙슈즈</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;운동화</h3>
								<div>
									<table>
										<tr>
											<td>운동화(white)</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>운동화(black)</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
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
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>블랙슈즈</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
									</table>
								</div>
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;운동화</h3>
								<div>
									<table>
										<tr>
											<td>운동화(white)</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
												width="50"></td>
										</tr>
										<tr>
											<td>운동화(black)</td>
											<td><img src="${pageContext.request.contextPath}/view/img/shoes02.png" alt="" height="50"
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
		<!-- // 가게별 페이지 탭 부분 -->

		<!-- 하단에 아이콘 버튼 이동 부분 -->

		<div class="footer">
			<div class="no-gutters">
				<div class="col-auto mx-auto">
					<div class="row no-gutters justify-content-center">
						<div class="col-auto">
							<a href="pMem/pMem.jsp" class="btn btn-link-default "> <i
								class="material-icons">store_mall_directory</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="pMem/orderHistory.jsp" class="btn btn-link-default">
								<i class="material-icons">insert_chart_outline</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="cart.html" class="btn btn-default shadow centerbutton">
								<i class="material-icons">local_mall</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="pMem/bookmark.jsp" class="btn btn-link-default"> <i
								class="material-icons">favorite</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="pMem/profile.jsp" class="btn btn-link-default"> <i
								class="material-icons">account_circle</i>
							</a>
						</div>

					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- 카카오 지도 api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0455f4a5cfbe071aa318ca7ca4db976b&libraries=services"></script>
	
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
		console.log(document.getElementById("addr").innerHTML);
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(document.getElementById("addr").innerHTML, function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {

	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">수제화골목</div>'
	        });
	        infowindow.open(map, marker);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});     
	</script>
	
</body>
</html>