<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" class="brown-theme">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">

    <title>join.jsp</title>

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
            <img src="view/img/logo.png" alt="logo">
            <h1><span class="font-weight-light">You</span>Shoes</h1>
            <div class="laoderhorizontal"><div></div><div></div><div></div><div></div></div>
        </div>
    </div>
    <div class="row no-gutters vh-100 proh bg-template">
        <img src="img/apple.png" alt="logo" class="apple right-image align-self-center">
        <div class="col align-self-center px-3  text-center">
            <img src="img/logo.png" alt="logo" class="logo-small">
            <h2 class="text-white"><span class="font-weight-light">회원가입</span></h2>
            <form class="form-signin shadow">
                 <div class="form-group float-label active">
                    <input type="text" id="pm_id" class="form-control" name="pm_id" required autofocus >
                    <label for="pm_id" class="form-control-label">아이디</label>
                </div>
                
                <div class="form-group float-label">
                    <input type="password" id="pm_pw" class="form-control" name="pm_pw" required>
                    <label for="pm_pw" class="form-control-label">비밀번호</label>
                </div>
                
                <div class="form-group float-label">
                    <input type="password" id="pm_pwchk" class="form-control" name="pm_pwchk" required>
                    <label for="pm_pwchk" class="form-control-label">비밀번호 확인</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="text" id="pm_name" class="form-control" name="pm_name" required >
                    <label for="pm_name" class="form-control-label">이름</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="date" id="pm_birth" class="form-control" name="pm_birth" required >
                    <label for="pm_birth" class="form-control-label">생년월일</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="email" id="pm_email" class="form-control" name="pm_email" required >
                    <label for="pm_email" class="form-control-label">이메일</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="tel" id="pm_tell" class="form-control" name="pm_tell" required maxlength="11">
                    <label for="pm_tell" class="form-control-label">전화번호(-는 생략)</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="number" id="pm_post" class="form-control" name="pm_post" placeholder="우편번호" required >
                    <label for="pm_post" class="form-control-label">우편번호(api사용)</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="text" id="pm_adr1" class="form-control" name="pm_adr1" placeholder="주소" required >
                    <label for="pm_adr1" class="form-control-label">주소1(api사용)</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="text" id="pm_addr2" class="form-control" name="pm_addr2" placeholder="상세주소" required >
                    <label for="pm_addr2" class="form-control-label">주소2(api사용)</label>
                </div>

                <div class="form-group my-4 text-left"><!-- 체크가 다됨... -->
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="privacy" name="privacy">
                        <label class="custom-control-label" for="privacy">약관 및 개인정보수집 동의</label><br>
                        <a href="#">구매회원 이용약관</a><br>
                        <a href="#">전자금융서비스 이용약관</a><br>
                        <a href="#">개인정보 수집 및 이용</a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-auto">
                        <a href="login.jsp" class="btn btn-lg btn-default btn-rounded shadow"><span>회원가입</span><i class="material-icons">arrow_forward</i></a>
                    </div>
                </div>
            </form>
            <p class="text-center text-white">
                계정이 있습니까?<br>
                <a href="login.jsp">로그인</a>
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
