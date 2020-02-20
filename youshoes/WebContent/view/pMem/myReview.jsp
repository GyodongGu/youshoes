<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/style.css" rel="stylesheet">
</head>
<body>
	<c:forEach items="${list }" var="ord">
	<h6 class="subtitle"><b>주문 상세 내역</b></h6>
	<div class="card mb-3 border-0 shadow-sm bg-template-light">
		<div class="card-body">
			<div class="row">
				<div class="col-12 col-md-6">
					<div class="form-group float-label active">
						<input type="text" class="form-control" required="" value="${ord.ord_no }" disabled="disabled">
						<label class="form-control-label"><h6><b>주문번호</b></h6></label>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-3 col-md-2 col-lg-2 align-self-center">
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/shoes05.png" alt="" class="">
					</figure>
				</div>
				<div class="col">
					<a href="" class="text-dark mb-1 h6 d-block"><b>여성용 구두</b></a>
					<!-- 하이퍼링크에 제품 링크 걸어도 됨  --> 
					<p class="text-secondary small mb-2">주문제작</p> 
					<h5 class="text-success font-weight-normal mb-0"> 
						금액 : ￦ 70,000
						<!--  <span class="badge badge-success d-inline-block ml-2"><small>10% off</small></span> -->
					</h5>
					<p class="text-secondary small text-mute mb-0">사이즈 : 230</p>
					<p class="text-secondary small text-mute mb-0">색상 : 검정</p>
					<p class="text-secondary small text-mute mb-0">수량 : 1ea</p>
				</div>
			</div>
		
			<br>
			<div class="row">
				<div class="col-12 col-md-6"> 
					<div class="form-group float-label active"> 
					<label class="form-control-label"><h6><b>주문고객정보</b></h6></label>
						<input type="text" class="form-control" required="" value="주문고객 : " disabled="disabled">
						<input type="text" class="form-control" required="" value="받으실분 : " disabled="disabled"> 
						<input type="text" class="form-control" required="" value="연락처 : " disabled="disabled"> 
						<input type="text" class="form-control" required="" value="배송주소 : " disabled="disabled">
						<input type="text" class="form-control" required="" value="최종결제금액 : " disabled="disabled"> 
						<input type="text" class="form-control" required="" value="제작현황 : " disabled="disabled">
						<input type="text" class="form-control" required="" value="배송현황 : " disabled="disabled">
						<a href="https://tracker.delivery/#/kr.epost/${ord.invoice_no }" target="_blank"> 배송조회</a>
					</div>
				</div>
			</div>
		</div>
	</div>
			</c:forEach>
</body>
</html>