<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>즐겨찾기</title>

<!-- Material design icons CSS -->
    <link rel="stylesheet" href="../vendor/materializeicon/material-icons.css">

    <!-- Roboto fonts CSS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Swiper CSS -->
    <link href="../vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
    <!-- jquery, popper and bootstrap js -->
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

    <!-- swiper js -->
    <script src="../vendor/swiper/js/swiper.min.js"></script>

    <!-- template custom js -->
    <script src="../js/main.js"></script>

    <!-- page level script -->
    <script>
        $(window).on('load', function() {
            /* swiper slider carousel */
            var swiper = new Swiper('.small-slide', {
                slidesPerView: 'auto',
                spaceBetween: 0,
            });

            var swiper = new Swiper('.news-slide', {
                slidesPerView: 5,
                spaceBetween: 0,
                pagination: {
                    el: '.swiper-pagination',
                },
                breakpoints: {
                    1024: {
                        slidesPerView: 4,
                        spaceBetween: 0,
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 0,
                    },
                    640: {
                        slidesPerView: 2,
                        spaceBetween: 0,
                    },
                    320: {
                        slidesPerView: 2,
                        spaceBetween: 0,
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


<!-- 아임포트 결제 API -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	function payBtn_click() {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp27275199'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

		IMP.request_pay({
			pg : 'inicis', // version 1.1.0부터 지원.
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '주문명:결제테스트',
			amount : 14000,
			buyer_email : 'iamport@siot.do',
			buyer_name : '구매자이름',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456',
			m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		}, function(rsp) {
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	}
</script>
<!-- // 아임포트 결제 API -->


</head>

<body>
	<!-- 사이드바 -->
    <div class="sidebar">
        <div class="text-center">
            <div class="figure-menu shadow">
                <figure><img src="img/user1.png" alt=""></figure>
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
                                <button class="btn btn-default button-rounded-36 shadow"><i class="material-icons">add</i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 class="subtitle text-uppercase"><span>Menu</span></h5>
                <div class="list-group main-menu">
                    <a href="pMem.jsp" class="list-group-item list-group-item-action active">스토어</a>
                    <a href="notification.html" class="list-group-item list-group-item-action">공지사항<span class="badge badge-dark text-white">2</span></a>
                    <a href="all-products.html" class="list-group-item list-group-item-action">모든 제품</a>
                    <a href="orderHistory.jsp" class="list-group-item list-group-item-action">주문내역</a>
                    <a href="profile.jsp" class="list-group-item list-group-item-action">프로필</a>
                    <a href="#" class="list-group-item list-group-item-action mt-4">로그아웃</a>
                </div>
            </div>
        </div>
    </div>
    <!-- // 사이드바 -->


	<div class="wrapper">
		<!-- 위에 따라 다니는 거 -->
		<div class="header">
			<div class="row no-gutters">
				<div class="col-auto">
					<button class="btn  btn-link text-dark menu-btn">
						<img src="../img/menu.png" alt=""><span class="new-notification"></span>
					</button>
				</div>
				<div class="col text-center">
					<img src="../img/logo-header.png" alt="" class="header-logo">
				</div>
				<div class="col-auto">
					<a href="profile.jsp" class="btn  btn-link text-dark"><i class="material-icons">account_circle</i></a>
				</div>
			</div>
		</div>
		<!-- // 위에 따라 다니는 거 -->
		<!-- 웹 페이지 내부에  결제 하는 부분 -->
		<br><br><br><br><br><br><br><br><br><br>
		<div class="row text-center" style="width: 100%">
			<div style="width: 30%; float: none; margin: 0 auto">
				<button class="btn btn btn-danger btn-round" style="width: 100%" id="payBtn" onclick="payBtn_click();">결제하기</button>

				<div></div>
			</div>
		</div>
		<!-- // 웹 페이지 내부에  결제 하는 부분 -->
		<!-- 하단에 따라다니는 메뉴바 -->
		<div class="footer">
			<div class="no-gutters">
				<div class="col-auto mx-auto">
					<div class="row no-gutters justify-content-center">
						<div class="col-auto">
							<a href="pMem.jsp" class="btn btn-link-default"> <i class="material-icons">store_mall_directory</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="orderHistory.jsp" class="btn btn-link-default"> <i class="material-icons">insert_chart_outline</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="#" class="btn btn-default shadow centerbutton"> <i class="material-icons">local_mall</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="bookmark.jsp" class="btn btn-link-default active"> <i class="material-icons">favorite</i>
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
	</div>
	<!-- jquery, popper and bootstrap js -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

	<!-- swiper js -->
	<script src="vendor/swiper/js/swiper.min.js"></script>

	<!-- nouislider js -->
	<script src="vendor/nouislider/nouislider.min.js"></script>

	<!-- chosen multiselect js -->
	<script src="vendor/chosen_v1.8.7/chosen.jquery.min.js"></script>

	<!-- template custom js -->
	<script src="js/main.js"></script>

	<!-- page level script -->
	<script>
		$(window).on('load', function() {

		});
	</script>
</body>

</html>
