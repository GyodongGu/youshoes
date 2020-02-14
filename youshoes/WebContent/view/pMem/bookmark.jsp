<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!doctype html>
<html lang="en" class="blue-theme">
<head>
<title>즐겨찾기</title>
</head>
<body>
	<!-- 내부 내용 -->
	<div class="subtitle h6">
		<div class="d-inline-block">
			찜한 상품<br>
			<p class="small text-mute">4개의 상품</p>
		</div>
		<div class="float-right">
			<div class="btn-group " role="group" aria-label="Basic example"></div>
		</div>
	</div>
	<div class="row">
		<!-- 내부 내용 흰색 네모 1 -->
		<div class="col-6 col-md-4 col-lg-3 col-xl-2">
			<div class="card shadow-sm border-0 mb-4">
				<div class="card-body">
					<button class="btn btn-sm btn-link p-0">
						<a href="${pageContext.request.contextPath}/view/pMem/bookmark.jsp" class="btn btn-link-default"> <i class="material-icons">star</i>
						</a> <i id="starIcon" class="material-icons md-18">star_border</i>
					</button>
					<!-- <script>
								function chageStar() {
									document.getElementById("starIcon") = "star";
								}
							</script> -->

					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/shoes01.png" alt="" class="">
					</figure>


					<a href="#" class="text-dark mb-1 mt-2 h6 d-block">남성 수제</a>
					<h5 class="text-success font-weight-normal mb-0">
						$ 120<sup>.00</sup>
					</h5>
					<button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right">
						<i class="material-icons md-18">shopping_cart</i>
					</button>
				</div>
			</div>
		</div>
		<!-- // 내부 내용 흰색 네모 1 -->

	</div>
</body>

</html>
