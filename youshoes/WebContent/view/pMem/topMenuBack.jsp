<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">
<!-- 
작성자: 유승우
작성일자 : 2020.02.07
목적 : 뒤로가기 상단 메뉴바 통합
 -->
<title>뒤로가기 있는 상단 메뉴바 </title>
<link rel="stylesheet" href="../vendor/materializeicon/material-icons.css">  <!-- Meterial 디자인 아이콘 CSS (상단 메뉴바 필수) -->
<link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">  <!-- 부트스트랩 core CSS (상단 메뉴바 필수) -->
<link href="../css/style.css" rel="stylesheet">    <!-- 구매 회원 템플릿에 CSS -->
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