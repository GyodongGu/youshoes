<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 볼 수 있는 상단 메뉴바</title>
<!-- 
작성자: 유승우
작성일자 : 2020.02.07
목적 : 뒤로가기 상단 메뉴바 통합
 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/materializeicon/material-icons.css">  <!-- Meterial 디자인 아이콘 CSS (상단 메뉴바 필수) -->
<link href="${pageContext.request.contextPath}/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">  <!-- 부트스트랩 core CSS (상단 메뉴바 필수) -->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">    <!-- 구매 회원 템플릿에 CSS -->

</head>
<body>
	<div class="row no-gutters">
		<div class="col-auto">
			<button class="btn  btn-link text-dark menu-btn">
				<img src="${pageContext.request.contextPath}/view/img/menu.png" alt=""> 
				<span class="new-notification"></span>
			</button>
		</div>
		<div class="col text-center">
			<img src="${pageContext.request.contextPath}/view/img/logo.png" alt="logo" class="header-logo"> YouShoes
		</div>
		<div class="col-auto">
			<a href="profile.jsp" class="btn  btn-link text-dark">
				<i class="material-icons">account_circle</i>
			</a>
		</div>
	</div>

</body>
</html>