<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="brown-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>환영합니다.</title>

<!-- Material design icons CSS -->
<link rel="stylesheet" href="view/vendor/materializeicon/material-icons.css">

<!-- Roboto fonts CSS -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="view/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

<!-- Swiper CSS -->
<link href="view/vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="view/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="row no-gutters vh-100 loader-screen">
        <div class="col align-self-center text-white text-center">
            <img src="view/img/logo.png" alt="logo">
            <h1><span class="font-weight-light">You</span>Shoes</h1>
            <div class="laoderhorizontal">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
    <a href="view/login.jsp" class="btn btn-default button-rounded-54 shadow text-white float-bottom-right"><span>시작</span></a>
    <!-- Swiper -->
    <div class="swiper-container introduction vh-100">
        <div class="swiper-wrapper">
            <div class="swiper-slide overflow-hidden bg-success text-white">
                <div class="row no-gutters h-100">
                    <img src="view/img/shoes9.jpg" alt="" class="pinapple right-image align-self-center">
                    <div class="col align-self-center px-3">
                        <div class="row">
                            <div class="container">
                                <div class="row">
                                    <div class="col-6 text-left">
                                        <h1 class="text-uppercase">소제목1</h1>
                                        <p>내용1</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="swiper-slide overflow-hidden bg-King Sofa text-white">
                <div class="row no-gutters h-100">
                    <img src="view/img/shoes06.png" alt="" class="orange right-image align-self-center">
                    <div class="col align-self-center px-3">
                        <div class="row">
                            <div class="container">
                                <div class="row">
                                    <div class="col-6 text-left">
                                        <h1 class="text-uppercase">소제목2</h1>
                                        <p>내용2</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide overflow-hidden bg-warning text-white">
                <div class="row no-gutters h-100">
                    <img src="view/img/shoes7.jpg" alt="" class="banana right-image align-self-center">
                    <div class="col align-self-center px-3">
                        <div class="row">
                            <div class="container">
                                <div class="row">
                                    <div class="col-6 text-left">
                                        <h1 class="text-uppercase">소제목3</h1>
                                        <p>내용3</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
	<!-- jquery, popper and bootstrap js -->
	<script src="view/js/jquery-3.3.1.min.js"></script>
	<script src="view/js/popper.min.js"></script>
	<script src="view/vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

	<!-- swiper js -->
	<script src="view/vendor/swiper/js/swiper.min.js"></script>

	<!-- template custom js -->
	<script src="view/js/main.js"></script>
	
	<!-- page level script -->
    <script>
        $(window).on('load', function() {
            var swiper = new Swiper('.introduction', {
                pagination: {
                    el: '.swiper-pagination',
                },
            });
});

    </script>
</body>

</html>
