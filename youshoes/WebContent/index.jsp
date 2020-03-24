<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>YouShoes</title>
<!-- Bootstrap core CSS -->
<link href="${contextPath}/view/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template -->
<link href="${contextPath}/view/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<!-- Custom styles for this template -->
<link href="${contextPath}/view/css/agency.min.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body id="page-top">
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">YouShoes</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				Menu
				<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item" id="serbtn"><a class="nav-link js-scroll-trigger" >Services</a></li>
					<li class="nav-item" id="abobtn"><a class="nav-link js-scroll-trigger" >About</a></li>
					<li class="nav-item" id="teambtn"><a class="nav-link js-scroll-trigger" >Team</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome To YouShoes!</div>
				<div class="intro-heading text-uppercase">나만을 위한 신발</div>
				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="${contextPath}/view/login.jsp">로그인</a>
			</div>
		</div>
	</header>
	<!-- Services -->
	<section class="page-section" id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Services</h2>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x">
						<i class="fas fa-circle fa-stack-2x text-primary"></i>
						<i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">E-Commerce</h4>
					<p class="text-muted">당신만을 위한 수제화를 장인들이 제작합니다.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x">
						<i class="fas fa-circle fa-stack-2x text-primary"></i>
						<i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">Online</h4>
					<p class="text-muted">모든 제품들은 온라인으로 주문할 수 있습니다.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x">
						<i class="fas fa-circle fa-stack-2x text-primary"></i>
						<i class="fas fa-lock fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">Security</h4>
					<p class="text-muted">고객 정보는 안전하게 보호되고 있습니다.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- About -->
	<section class="page-section" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">About</h2>
					<h3 class="section-subheading text-muted">대구 향촌동 수제화 골목</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="${contextPath}/view/img/about/1.jpg" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>1970~</h4>
									<h4 class="subheading">향촌동 수제화 골목의 역사</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">대구 향촌동 수제화골목은 1970년대부터 수출 진흥 정책의 일환으로 형성됐다. 1990년대만 해도 골목 내의 여러 수제화 장인들이 백화점을 통해 판매망을 확보하는 등 자체 브랜드를 만들어 내기도 했다.기성화 산업이 발달하면서 수제화골목은 쇠퇴의 길을 걷기도 했으나,지금까지도 여러 수제화 장인들이 그 맥을 이어오고 있다</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="${contextPath}/view/img/about/2.jpg" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2014~</h4>
									<h4 class="subheading">향촌동 수제화 골목투어코스</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">기성화및 중국 저가에 밀려 명맥만 유지하다가 2014년 대구 도시활력증진지역개발사업에 참여해 40억의 예산을 얻어내고 지자체 지원으로 인근의 향촌문학관, 경상감영공원등을 연계한 골목투어코스에 포함되었다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="${contextPath}/view/img/about/3.jpg" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>현대의 수제화 골목</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">대구 중구 수제화 골목 장인들의 명맥이 끊길 위기에 처했다.수제화 구두를 만들 수 있는 기술 장인들이 거의 남아있지 않을 뿐만 아니라 현재 활동하는 장인들도 모두 60대 이상의 고령이기 때문이다. 경제적으로 어렵다 보니 관련 기술을 배우겠다는 사람도 없는 실정이다. 대부분 가게는 신발을 맞추는 손님의 모습은 보이지 않았다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="${contextPath}/view/img/about/3.jpg" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>YouShoes</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">이 문제를 해결하기 위해 YouShoes는 대구 수제화 골목의 발전과 활성화를 위해 창안되었습니다.</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- Team -->
	<section class="bg-light page-section" id="team">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">YouShoes의 Team</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="${contextPath}/view/img/team/2.jpg" alt="">
						<h4>구교동</h4>
						<p class="text-muted">Leader, 주문 담당</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="${contextPath}/view/img/team/2.jpg" alt="">
						<h4>권우성</h4>
						<p class="text-muted">member1, 판매자 예약 담당</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="${contextPath}/view/img/team/2.jpg" alt="">
						<h4>배광준</h4>
						<p class="text-muted">member2, 로그인 메인페이지 담당</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="${contextPath}/view/img/team/2.jpg" alt="">
						<h4>유승우</h4>
						<p class="text-muted">member3, 프로필 결제 담당</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<script type="text/javascript">
		$('#serbtn').on('click',function(){
			var offset = $('#services').offset();
			$('html').animate({scrollTop : offset.top}, 400);
		})
		$('#abobtn').on('click',function(){
			var aoffset = $('#about').offset();
			$('html').animate({scrollTop : aoffset.top}, 400);
		})
		$('#teambtn').on('click',function(){
			var toffset = $('#team').offset();
			$('html').animate({scrollTop : toffset.top}, 400);
		})
	</script>
	
	
	<!-- Bootstrap core JavaScript -->
	<script src="${contextPath}/view/vendor/jquery/jquery.min.js"></script>
	<script src="${contextPath}/view/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Contact form JavaScript -->
	<script src="${contextPath}/view/js/jqBootstrapValidation.js"></script>
	<script src="${contextPath}/view/js/contact_me.js"></script>
	<!-- Custom scripts for this template -->
	<script src="${contextPath}/view/js/agency.min.js"></script>
</body>
</html>
