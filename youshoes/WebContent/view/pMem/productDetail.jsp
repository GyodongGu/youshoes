<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
</head>
<body>
<div class="container">

            <!-- Swiper -->
            <div class="swiper-container product-details">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="${pageContext.request.contextPath}/view/img/${pdto.img_name[0].img_name}" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="${pageContext.request.contextPath}/view/img/handmade.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="${pageContext.request.contextPath}/view/img/handmade.jpg" alt="">
                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>

			<h4 class="subtitle">상품명</h4>
            <a href="#" class="text-dark mb-1 mt-2 h6 d-block">${pdto.pdt_name }</a>
            

            <br><br><br>

            <h6 class="subtitle">가격</h6>
            <h6>${pdto.pdt_price }</h6>
            <br><br><br>
			
			
			<h4 class=" subtitle">판매가능여부</h4>
            <c:if test="${pdto.pdt_stat_cd eq 'I' }">
            	<h4 class="subtitle">판매가능</h4>
            </c:if>
            <c:if test="${pdto.pdt_stat_cd eq 'O' }">
            	<h4 class="subtitle">매진</h4>
            </c:if>
			<br><br><br>
			<c:if test="${pdto.pdt_type_cd eq 'C' }">
           	<a class="btn btn-lg btn-default shadow btn-rounded" href="${pageContext.request.contextPath}/Reserv.do?sm_id=${pdto.sm_id}">예약 <i class="material-icons md-18">shopping_cart</i></a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </c:if>
            <c:if test="${pdto.pdt_type_cd eq 'P' }">
            <a class="btn btn-lg btn-default shadow btn-rounded float-right" href="${pageContext.request.contextPath}/ProductOrder.do">주문 <i class="material-icons md-18">shopping_cart</i></a>
            </c:if>
            <br>
            <br>

        </div>
</body>
</html>