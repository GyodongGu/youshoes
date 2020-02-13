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