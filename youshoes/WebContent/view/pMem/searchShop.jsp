<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en" class="brown-theme">
<head>
</head>
<body>
			<!-- 검색창 부분 -->
			<form name="searchFrm" action="${pageContext.request.contextPath}/searchShop.do" >
			<input type="text" class="form-control form-control-lg search my-3" placeholder="검색" name="q" value="${param.q }">
			</form>
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
				<c:forEach items="${smfive}" var="sm">
				<div class="col-6 col-md-4 col-lg-3 col-xl-2">
					<div class="card shadow-sm border-0 mb-4">
						<div class="card-body">
							<figure class="product-image">
								<img src="${pageContext.request.contextPath}/view/img/${sm.img_name[0].img_name}" alt="" class="">
							</figure>

							<a href="${pageContext.request.contextPath}/Shop.do?sm_id=${sm.sm_id}" class="text-dark mb-1 mt-2 h6 d-block">${sm.shop_name}</a>
							<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
								<i class="material-icons md-18">shopping_cart</i>
							</button>
						</div>
					</div>
				</div>
				</c:forEach>
				<!-- // 구매 회원 가게 검색 페이지의 하얀 작은 네모 1 -->
				
				
			</div>
			<!-- // 구매 회원 가게검색페이지의 카테고리 내부 내용 -->
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
