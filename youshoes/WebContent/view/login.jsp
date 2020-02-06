<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="brown-theme">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">

    <title>login</title>

    <!-- Material design icons CSS -->
    <link rel="stylesheet" href="vendor/materializeicon/material-icons.css">

    <!-- Roboto fonts CSS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Swiper CSS -->
    <link href="vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="row no-gutters vh-100 loader-screen">
        <div class="col align-self-center text-white text-center">
            <img src="img/logo.png" alt="logo">
            <h1><span class="font-weight-light">Go</span>Fruit</h1>
            <div class="laoderhorizontal"><div></div><div></div><div></div><div></div></div>
        </div>
    </div>
    <div class="row no-gutters vh-100 proh bg-template">
        <img src="img/apple.png" alt="logo" class="apple right-image align-self-center">
        <div class="col align-self-center px-3 text-center">
            <img src="img/logo.png" alt="logo" class="logo-small">
            <h2 class="text-white "><span class="font-weight-light">You</span>Shoes</h2>
            <form class="form-signin shadow">
                <div class="form-group float-label">
                    <input type="email" id="inputEmail" class="form-control" required autofocus>
                    <label for="inputEmail" class="form-control-label">아이디를 입력해주세요</label>
                </div>

                <div class="form-group float-label">
                    <input type="password" id="inputPassword" class="form-control" required>
                    <label for="inputPassword" class="form-control-label">비밀번호를 입력해주세요</label>
                </div>

                <div class="form-group my-4 text-left">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="rememberme">
                        <label class="custom-control-label" for="rememberme">아이디 기억하기</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-auto">
                        <a href="pMem/pMem.jsp" class="btn btn-lg btn-default btn-rounded shadow">
                        	<span>로그인</span>
                        	<i class="material-icons">arrow_forward</i>
                        </a>
                    </div>
	                    <div class="social">
	                    <!-- api사용하여 로그인방식 만들기! -->
	            	        <span>[네이버 로그인(api)]</span>
	                	    <span>[구글 로그인(api)]</span>
	                    </div>
                </div>
            </form>
            <p class="text-center text-white">
                <a href="join.jsp">회원가입</a>
            </p>
        </div>
    </div>

    <!-- jquery, popper and bootstrap js -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

    <!-- swiper js -->
    <script src="vendor/swiper/js/swiper.min.js"></script>

    <!-- template custom js -->
    <script src="js/main.js"></script>

</body>

</html>
