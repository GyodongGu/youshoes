<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/style.css" rel="stylesheet">
</head>
<body>
	
	<div class="card mb-3 border-0 shadow-sm bg-template-light">
		<div class="card-body">
			<div class="row">
				<div class="col-12 col-md-6">
					<div class="form-group float-label active">
						<input type="text" class="form-control" required="" value="${ddto.ord_no }" disabled="disabled">
						<label class="form-control-label"><h6><b>주문번호</b></h6></label>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-3 col-md-2 col-lg-2 align-self-center">
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/${ddto.imgDetail[0].img_name}" alt="" class="">
					</figure>
				</div>
				<div class="col">
					<a href="" class="text-dark mb-1 h6 d-block"><b>여성용 구두</b></a>
					<!-- 하이퍼링크에 제품 링크 걸어도 됨  --> 
					<c:if test="${ddto.ordDetail[0].ord_size == 0 }">
						<p class="text-secondary small mb-2">맞춤화</p> 
					</c:if>
					<c:if test="${ddto.ordDetail[0].ord_size != 0 }">
						<p class="text-secondary small mb-2">기성화</p>
					</c:if>
					
					<h5 class="text-success font-weight-normal mb-0"> 
						
						<c:if test="${ddto.ordDetail[0].ord_cnt != 0 }">
							
							<fmt:formatNumber value="${ddto.ordDetail[0].ord_detail_point div ddto.ordDetail[0].ord_cnt}" type="number"></fmt:formatNumber>
						</c:if>
						<c:if test="${ddto.ordDetail[0].ord_cnt == 0 }">
							<fmt:formatNumber value="${ddto.ordDetail[0].ord_detail_point div 1}" type="number"></fmt:formatNumber>
							
						</c:if>	
						<!--  <span class="badge badge-success d-inline-block ml-2"><small>10% off</small></span> -->
					</h5>
					<c:forEach items="${ddto.ordDetail }" var="detail">
					<c:if test="${detail.ord_size!=0 }">
						<span class="text-secondary small text-mute mb-0">사이즈 : ${detail.ord_size }</span>&nbsp;&nbsp;
						<span class="text-secondary small text-mute mb-0">색상 : ${detail.ord_color }</span>&nbsp;&nbsp;
						<span class="text-secondary small text-mute mb-0">수량 : ${detail.ord_cnt }</span>&nbsp;&nbsp;
						<br>
					</c:if>
						
					</c:forEach>
					
				</div>
			</div>
			<c:forEach items="${ddto.ordDetail }" var="price" varStatus="status">
							<c:set var="total" value="${total + price.ord_detail_point }"></c:set>
			</c:forEach>
		
			<br>
			<div class="row">
				<div class="col"> 
					<div class="form-group float-label active"> 
					<label class="form-control-label"><h6><b>주문고객정보</b></h6></label>
						<input type="text" class="form-control" required="" value="받으실분 : ${ddto.dlvy_name }" disabled="disabled"> 
						<input type="text" class="form-control" required="" value="연락처 : ${ddto.dlvy_tell }" disabled="disabled"> 
						<input type="text" class="form-control" required="" value="배송주소 : ${ddto.dlvy_addr1 } ${ddto.dlvy_addr2 } ${ddto.dlvy_addr3 }" disabled="disabled">
						<input type="text" class="form-control" required="" value="최종결제금액 : <fmt:formatNumber value="${total }" pattern="#,###"/> point" disabled="disabled"> 
						
						<!-- <input type="text" class="form-control" required="" value="제작현황 : " disabled="disabled"> -->
						
						<%-- <a href="https://tracker.delivery/#/kr.epost/${ord.invoice_no }" target="_blank"> 배송조회</a> --%>
						<a href="https://tracker.delivery/#/kr.cjlogistics/${ddto.invoice_no }" target="_blank">배송조회</a>
						<!-- <a href="https://tracker.delivery/#/kr.cjlogistics/629611906695" target="_blank">배송조회</a> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:set var="total" value="0"></c:set>
	
</body>
</html>