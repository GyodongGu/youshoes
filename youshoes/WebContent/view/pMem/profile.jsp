<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">

    <title>프로필</title>

    <!-- Material design icons CSS -->
    <link rel="stylesheet" href="../vendor/materializeicon/material-icons.css">

    <!-- Roboto fonts CSS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Swiper CSS -->
    <link href="../vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Chosen multiselect CSS -->
    <link href="../vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">

    <!-- nouislider CSS -->
    <link href="../vendor/nouislider/nouislider.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>
    <div class="wrapper">
        <div class="header">
            <div class="row no-gutters">
                <div class="col-auto">
                    <a href="javascript:void(0)" onClick="javascript:history.go(-1)" class="btn  btn-link text-dark"><i class="material-icons">navigate_before</i></a>
                </div>
                <div class="col text-center"><img src="img/logo-header.png" alt="" class="header-logo"></div>
                <div class="col-auto">
                    <a href="profile.html" class="btn  btn-link text-dark"><i class="material-icons">account_circle</i></a>
                </div>
            </div>
        </div>
        
        <div class="container">
        	<!-- 프로필 이미지 사진  -->
            <div class="text-center">
                <div class="figure-profile shadow my-4">
                    <figure><img src="../img/user1.png" alt=""></figure>
                    <div class="btn btn-dark text-white floating-btn">
                        <i class="material-icons">camera_alt</i>
                        <input type="file" class="float-file">
                    </div>
                </div>
            </div>
			<!-- // 프로필 이미지 사진  -->
			
            
		
		<!-- 하단에 아이콘 버튼 이동 부분 -->
        <div class="footer">
            <div class="no-gutters">
                <div class="col-auto mx-auto">
                    <div class="row no-gutters justify-content-center">
                        <div class="col-auto">
                            <a href="index.html" class="btn btn-link-default ">
                                <i class="material-icons">store_mall_directory</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href=".html" class="btn btn-link-default">
                                <i class="material-icons">insert_chart_outline</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="cart.html" class="btn btn-default shadow centerbutton">
                                <i class="material-icons">local_mall</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="favorite-products.html" class="btn btn-link-default">
                                <i class="material-icons">favorite</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="profile.html" class="btn btn-link-default active">
                                <i class="material-icons">account_circle</i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // 하단에 아이콘 버튼 이동 부분 -->
    </div>


    <!-- jquery, popper and bootstrap js -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

    <!-- swiper js -->
    <script src="vendor/swiper/js/swiper.min.js"></script>

    <!-- nouislider js -->
    <script src="vendor/nouislider/nouislider.min.js"></script>

    <!-- chart js -->
    <script src="vendor/chartjs/Chart.min.js"></script>
    <script src="vendor/chartjs/utils.js"></script>

    <!-- chosen multiselect js -->
    <script src="vendor/chosen_v1.8.7/chosen.jquery.min.js"></script>

    <!-- template custom js -->
    <script src="js/main.js"></script>

    <!-- page level script -->
    <script>
        $(window).on('load', function() {});

    </script>

</body>

</html>
