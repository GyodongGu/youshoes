<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<br><br><br>
			
           	<a class="btn btn-lg btn-default shadow btn-rounded" href="#">예약 <i class="material-icons md-18">shopping_cart</i></a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a class="btn btn-lg btn-default shadow btn-rounded float-right" href="#">주문 <i class="material-icons md-18">shopping_cart</i></a>
            
            <br>
            <br>

        </div>
</body>
</html>