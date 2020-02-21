<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en" class="brown-theme">
<head>
<title>구매 회원 메인</title>
</head>
<body>
	<!-- 검색창 부분 -->
	<form name=searchFrm">
	<input type="text" class="form-control form-control-lg search my-3" placeholder="검색">
	</form>
	<!-- 구매 회원 메인 페이지의 가게 -->
	<h6 class="subtitle">
		가게 <a href="searchShop.jsp" class="float-right small">가게 더보기</a>
	</h6>
	<div class="row">
	<c:forEach items="${smfive }" var="sm">
	
		<div class="col-6 col-md-4 col-lg-3 col-xl-2">
			<div class="card shadow-sm border-0 mb-4">
				<div class="card-body">
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/${sm.img_name[0].img_name}" alt="" class="">
					</figure>
					<a href="${pageContext.request.contextPath}/Shop.do?sm_id=${sm.sm_id}" class="text-dark mb-1 mt-2 h6 d-block">${sm.shop_name }</a>
					<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
						<i class="material-icons md-18">shopping_cart</i>
					</button>
				</div>
			</div>
		</div>
		
	</c:forEach>
	</div>
	<!-- // 구매 회원 메인 페이지의 가게 -->
	
	
	<!-- 구매 회원 메인 페이지의 이벤트  -->
	<div class="container-fluid bg-warning text-white my-3" onclick="location.href='${pageContext.request.contextPath}/pMemEvent.do'">
		<div class="row">
			<div class="container">
				<div class="row  py-4 ">
					<div class="col">
						<h1 class="text-uppercase mb-3">이벤트</h1>
						<p class="mb-3">
							20% 할인 쿠폰 지급<br>
						</p>
					</div>
					<div class="col-5 col-md-3 col-lg-2 col-xl-2">
						<img src="${pageContext.request.contextPath}/view/img/shoes18.png" alt="" class="mw-100 mt-3">
					</div>
					<div class="w-100"></div>
					<div class="col">
						<p>지금이 아니면 후회활 기회 !!</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- // 구매 회원 메인 페이지의 이벤트  -->
	
	
	<!-- 이용약관 등 4개 페이지  -->
	<div class="container mb-3">
		<div class="row">
			<div class="col text-center">
				<ul>
					<li><a class="txt2" href="${pageContext.request.contextPath}/view/pMem/serviceTOS.jsp">이용약관</a> <span> | </span> <a class="txt2" href="privacy.jsp">개인정보 처리방침</a> <span> | </span> <a class="txt2" href="sMemInform.jsp">사업자 정보 확인</a> <span> | </span> <a class="txt2" href="privacyInformOther.jsp">개인정보 제 3자 제공 동의</a></li>
					<li></li>
				</ul>
				<p class="text-secondary">
					YouShoes는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. <br>따라서 YouShoes는 상품거래 정보 및 거래에 대한 책임을 지지 않습니다.
				</p>
			</div>
		</div>
	</div>
</body>
</html>
