<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en" class="blue-theme">
<head>
<title>shop</title>
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
	$(function() {						//accordion1,2 기성화맞춤화  accordion3,5 남   4,6여
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
		<!-- 가게 사진 이미지 -->
		<div class="swiper-container product-details">
			<div class="swiper-wrapper">
				<div class="swiper-slide" style="padding: 0px">
					<img src="${pageContext.request.contextPath}/view/img/${smem.img_name[0].img_name}" alt="">
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
					<p>${smem.sm_time }</p>
					<br> <br>
					<p>
						<strong>휴무일</strong>
					</p>
					<p>${smem.sm_rest }</p>
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
						<h3>기성화</h3>
						<div id="accordion1">
							<h3>&nbsp;&nbsp;남성화</h3>
							<div id="accordion3">
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;구두</h3>
								<div>
									<table>
										<c:forEach items="${plist }" var="plist">
											<tr>
												<td>${plist.pdt_name }</td>
												<td><img src="${pageContext.request.contextPath}/view/img/handmade.jpg" alt="" height="50"
												width="50"></td>
											</tr>
										
										</c:forEach>
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



							<h3>여성화</h3>
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

						<h3>맞춤화</h3>
						<div id="accordion2">
							<h3>남성화</h3>
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

							<h3>여성화</h3>
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
					
					<!--  ===============================================================================       -->


				</div>

			</div>
</div>
		<!-- // 가게별 페이지 탭 부분 -->
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
	
	<!-- 제품상세페이지 -->
	
</body>
</html>