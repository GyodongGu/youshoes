<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko" class="blue-theme">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>프로필</title>
<!-- Tab키 스크립트 및 CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- // Tab키 스크립트 및 CSS -->
<!-- 탭 메뉴를 위한 스크립트 -->
<script>
	$(function() {
		$("#tabs")
				.tabs(
						{
							beforeLoad : function(event, ui) {
								ui.jqXHR
										.fail(function() {
											ui.panel
													.html("Couldn't load this tab. We'll try to fix this as soon as possible. "
															+ "If this wouldn't be a demo.");
										});
							}
						});
	});
</script>
</head>

<body>
	<div class="wrapper">
		<!-- 상단에 뒤로가기 버튼 있는 따라다니는 줄 -->
		<div class="header">
			<diV><jsp:include page="topMenuBack.jsp"></jsp:include></div>
		</div>
		<!-- // 상단에 뒤로가기 버튼 있는 따라다니는 줄 -->


		<!-- 내부 내용 전체 감싸는 부분 -->
		<div class="container">
			<!-- 프로필 이미지 사진  -->
			<div class="text-center">
				<div class="figure-profile shadow my-4">
					<figure>
						<img src="${pageContext.request.contextPath}/view/img/user1.png" alt="">
					</figure>
					<div class="btn btn-dark text-white floating-btn">
						<i class="material-icons">camera_alt</i> <input type="file" class="float-file">
					</div>
				</div>
			</div>
			<!-- // 프로필 이미지 사진  -->

			<!-- 프로필 탭 메뉴 -->
			<div id="tabs">
				<ul>
					<li><a href="${pageContext.request.contextPath}/myReview.do">내 스토리</a></li>
					<li><a href="${pageContext.request.contextPath}/point.do">내 포인트</a></li>
					<li><a href="${pageContext.request.contextPath}/profileSet.do">설정</a></li>
				</ul>

			</div>
			<!-- // 프로필 탭 메뉴 -->


			<!-- 하단에 아이콘 버튼 이동 부분 -->
			<div class="footer">
				<diV><jsp:include page="bottomMenu.jsp"></jsp:include></div>
			</div>
			<!-- // 하단에 아이콘 버튼 이동 부분 -->
		</div>
	</div>
</body>
</html>
