<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="blue-theme">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">
<title>뒤로가기 있는 상단 메뉴바 </title>
<!-- 
작성자: 유승우
작성일자 : 2020.02.07
목적 : 뒤로가기 상단 메뉴바 통합
 -->
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

</head>
<body>
		<div class="row no-gutters">
			<div class="col-auto">
				<a href="javascript:void(0)" onclick="location.href='pMem.jsp'" class="btn  btn-link text-dark"> <i class="material-icons">navigate_before</i>
				</a>
			</div>
			<div class="col text-center">
				<img src="../img/logo.png" alt="logo" class="header-logo">YouShoes
			</div>
			<div class="col-auto">
				<a href="profile.jsp" class="btn  btn-link text-dark"><i class="material-icons">account_circle</i></a>
			</div>
		</div>
</body>
</html>