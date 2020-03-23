<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!doctype html>
<html lang="ko" class="blue-theme">

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- Tab키 스크립트 및 CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- // Tab키 스크립트 및 CSS -->


<!-- 탭 메뉴  로드 실패시 보여줄 스크립트 -->
<script>
	$(function() {
		$("#tabs").tabs({
			beforeLoad : function(event, ui) {
				ui.jqXHR.fail(function() {
					ui.panel.html("값을 올바로 불러오지 못했습니다.");
				});
			}
		});
	});
</script>
<!-- // 탭 메뉴  로드 실패시 보여줄 스크립트 -->

</head>

<body>
	<!-- 프로필 이미지 사진  -->
	<div class="text-center">
		<div class="figure-profile shadow my-4">
			<figure>
				<c:if test="${empty pdto.img_name}">
					<img src="${pageContext.request.contextPath}/view/img/user1.jpg" alt="">
				</c:if>
				<c:if test="${!empty pdto.img_name}">
					<img src="${pageContext.request.contextPath}/view/img/${pdto.img_name}" alt="">
				</c:if>
				
			</figure>
			
		</div>
	</div>
	<!-- // 프로필 이미지 사진  -->

	<!-- 프로필 탭 메뉴 -->
	<div id="tabs" class="ui-tabs ui-corner-all ui-widget ui-widget-content">
		<ul class="ui-tabs-nav ui-corner-all ui-helper-reset ui-helper-clearfix ui-widget-header">
			<li class="ui-tabs-tab ui-corner-top ui-state-default ui-tab ui-tabs-active ui-state-active"><a href="${pageContext.request.contextPath}/myReview.do">내 스토리</a></li>
			<li><a href="${pageContext.request.contextPath}/point.do">내 포인트</a></li>
			<li><a href="${pageContext.request.contextPath}/profileSet.do">설정</a></li>
		</ul>

	</div>
	<!-- // 프로필 탭 메뉴 -->

</body>
</html>
