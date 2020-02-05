<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">

    <title>유저 메인</title>

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
    <!-- 상단에 따라다니는 줄 -->
    <div class="wrapper">
        <div class="header">
            <div class="row no-gutters">
                <div class="col-auto">
                    <button class="btn  btn-link text-dark menu-btn">
                    	<img src="../img/menu.png" alt="">
                    	<span class="new-notification"></span>
                    </button>
                </div>
               		<div class="col text-center">
               			<img src="../img/logo-header.png" alt="" class="header-logo">
               		</div>
                <div class="col-auto">
                    <a href="profile.jsp" class="btn  btn-link text-dark">
                    <i class="material-icons">account_circle</i>
                    </a>
                </div>
            </div>
        </div>
        <!-- // 상단에 따라다니는 줄 -->
        
        <!-- 내부 내용 전체 감싸는 부분 -->
        <div class="container">
        	<!-- 검색창 부분 -->
            <input type="text" class="form-control form-control-lg search my-3" placeholder="검색">
			
			<!-- 구매 회원 메인페이지의 카테고리 -->	
            <h6 class="subtitle">카테고리</h6>
            <div class="row">
                <div class="swiper-container small-slide">
                	<!-- Swiper, 카테고리 내부에 하얀 네모 1 -->
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="card shadow-sm border-0">
                                <div class="card-body">
                                    <div class="row no-gutters h-100">
                                        <img src="../img/image-1.png" alt="" class="small-slide-right">
                                        <div class="col-8">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">남성기성</a>
                                            <p class="text-secondary small">MII, Apples, Samssung</p>
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
                                        <img src="../img/image-2.png" alt="" class="small-slide-right">
                                        <div class="col-8">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">여성기성</a>
                                            <p class="text-secondary small">Assemble, Brand, Parts</p>
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
                                        <img src="../img/image-3.png" alt="" class="small-slide-right">
                                        <div class="col-9">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">남성수제</a>
                                            <p class="text-secondary small">DSLR, Pointshoot, Lense</p>
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
                                        <img src="../img/image-1.png" alt="" class="small-slide-right">
                                        <div class="col-8">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">여성수제</a>
                                            <p class="text-secondary small">MII, Apples, Samssung</p>
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
                                        <img src="../img/image-2.png" alt="" class="small-slide-right">
                                        <div class="col-8">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">남성 구두</a>
                                            <p class="text-secondary small">Assemble, Brand, Parts</p>
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
                                        <img src="../img/image-3.png" alt="" class="small-slide-right">
                                        <div class="col-9">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">여자 구두</a>
                                            <p class="text-secondary small">DSLR, Pointshoot, Lense</p>
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
                                        <img src="../img/image-1.png" alt="" class="small-slide-right">
                                        <div class="col-8">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">남성신발</a>
                                            <p class="text-secondary small">MII, Apples, Samssung</p>
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
                                        <img src="../img/image-2.png" alt="" class="small-slide-right">
                                        <div class="col-8">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">여성 신발</a>
                                            <p class="text-secondary small">Assemble, Brand, Parts</p>
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
                                        <img src="../img/image-3.png" alt="" class="small-slide-right">
                                        <div class="col-9">
                                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                                            <a href="all-products.html" class="text-dark mb-1 mt-2 h6 d-block">누구신발</a>
                                            <p class="text-secondary small">DSLR, Pointshoot, Lense</p>
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
            <h6 class="subtitle">가게 <a href="all-products.html" class="float-right small">가게 더보기</a></h6>
            <div class="row">
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>
                            <figure class="product-image"><img src="img/image-4.png" alt="" class=""></figure>
                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Grey Sofa</a>
                            <p class="text-secondary small mb-2">Imported from Simla</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>
                            <figure class="product-image"><img src="img/image-5.png" alt="" class=""></figure>
                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Antique Table</a>
                            <p class="text-secondary small mb-2">Unique Collection</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 100<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-primary float-right mt-1">10% off</div>
                            <figure class="product-image"><img src="img/image-6.png" alt="" class=""></figure>
                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">King Sofa</a>
                            <p class="text-secondary small mb-2">Royal & Luxurious</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-info float-right mt-1">50% off</div>
                            <figure class="product-image"><img src="img/image-7.png" alt="" class=""></figure>
                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Hangings</a>
                            <p class="text-secondary small mb-2">Most Demanded</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>
                            <figure class="product-image"><img src="img/image-4.png" alt="" class=""></figure>
                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Grey Sofa</a>
                            <p class="text-secondary small mb-2">Imported from Simla</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>
                            <figure class="product-image"><img src="img/image-5.png" alt="" class=""></figure>
                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Antique Table</a>
                            <p class="text-secondary small mb-2">Unique Collection</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 100<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // 구매 회원 메인 페이지의 가게 -->
        <!-- 구매 회원 메인 페이지의 이벤트  -->
        <div class="container-fluid bg-warning text-white my-3">
            <div class="row">
                <div class="container">
                    <div class="row  py-4 ">
                        <div class="col">
                            <h1 class="text-uppercase mb-3">20% 세일 중</h1>
                            <p class="mb-3">할인 쿠폰 지급<br></p>
                        </div>
                        <div class="col-5 col-md-3 col-lg-2 col-xl-2">
                            <img src="../img/image-10.png" alt="" class="mw-100 mt-3">
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
        <!-- 이용약관 등 4개 페이지  -->
        <div class="container mb-3">
            <div class="row">
                <div class="col text-center">
                	<a class="txt2" href="#">
							이용약관 
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
					</a>
					<a class="txt2" href="#">
							개인정보 처리방침
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
					</a>
					<a class="txt2" href="#">
							사업자 정보 확인
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
					</a>
					<a class="txt2" href="#">
							개인정보 제 3자 제공 동의
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
					</a>
                    <p class="text-secondary">YouShoes는 통신판매중개자이며, 통신판매의 당사자가 아닙니다.
                    	<br>따라서 YouShoes는 상품거래 정보 및 거래에 대한 책임을 지지 않습니다.
                    </p>
                </div>
            </div>
        </div>
        <!-- // 이용약관 등 4개 페이지  -->
        <!-- 하단에 아이콘 버튼 이동 부분 -->
        <div class="footer">
            <div class="no-gutters">
                <div class="col-auto mx-auto">
                    <div class="row no-gutters justify-content-center">
                        <div class="col-auto">
                            <a href="pMem.jsp" class="btn btn-link-default active">
                                <i class="material-icons">store_mall_directory</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="orderHistory.jsp" class="btn btn-link-default">
                                <i class="material-icons">insert_chart_outline</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="cart.html" class="btn btn-default shadow centerbutton">
                                <i class="material-icons">local_mall</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="bookmark.jsp" class="btn btn-link-default">
                                <i class="material-icons">favorite</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="profile.jsp" class="btn btn-link-default">
                                <i class="material-icons">account_circle</i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // 하단에 아이콘 버튼 이동 부분 -->
    </div>
</body>
</html>
