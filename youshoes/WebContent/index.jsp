<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="brown-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>환영합니다.</title>

<!-- Bootstrap core CSS -->
<link href="view/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

<!-- Swiper CSS -->
<link href="view/vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="view/css/style.css" rel="stylesheet">
</head>

<body>
	<a href="view/login.jsp" class="btn btn-default button-rounded-54 shadow text-white float-bottom-right"><span>로그인</span></a>


	<!-- Swiper -->
	<div class="swiper-container introduction vh-100">
		<div class="swiper-wrapper">
			<div class="swiper-slide overflow-hidden bg-success text-white">
				<div class="row no-gutters h-100">
					<img src="view/img/shoes19-1.png" alt="" class="pinapple right-image align-self-center">
					<div class="col align-self-center px-3">
						<div class="row">
							<div class="container">
								<div class="row">
									<div class="col-6 text-left">
										<h1 class="text-body">향촌동 수제화 골목</h1>
										<p class="text-body">향촌동 수제화 골목은 대구시의 도심 간선도로인 중앙로에서 종로를 동서로 연결하는 서성로 14길의 300여 미터(m)에 이르는 골목이다. 대구역과 북성로 공구상가, 수제화 관련 전문업종이 집적되어 있는 교통, 상업, 금융의 중심지역인 동시에 경상감영 공원, 대구 약령시, 계산성당, 제일교회, 이상화고택 등문화재와 유서 깊은 명물거리가 인근에 소재하는 도심 속의 전통문화지역이기도 하다. 과거 대표적인 대중문화의 중심지로 알려진 향촌동과 대안동 일대에 수제화 관련업체가 들어오기 시작한 것은 1970년대부터 이며 운동화는 부산, 구두는 대구 수제화로 명성을 높이며 1990년대에 이르러 오늘날 수제화 골목의 면모를 갖추게 되었다. 향촌동 수제화골목에는 수제화를 만들기 위한 디자인, 재단, 갑피(재봉), 저부(조립)공정을 담당하는 생산업체, 구두를 비롯한 가죽제품 수선업체, 염색과 광택을 담당하는 업체가 있으며, 피혁을 비롯한 제화관련 원자재와 밑창이나 안창, 장식물, 끈과 같은 각종 부품의 공급업체가 있고, 구두를 도,소매하는 업체 등 60여개의 제화관련 공장과 업체가 모여 있다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>




	<!-- page level script -->
	<script>
		$(window).on('load', function() {
			var swiper = new Swiper('.introduction', {
				pagination : {
					el : '.swiper-pagination',
				},
			});
		});
	</script>
</body>

</html>
