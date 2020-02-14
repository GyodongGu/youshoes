<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<c:choose>
						<c:when test="${empty dto.likeview.pm_id }">
							<button class="btn btn-sm btn-link p-0 btnlike">
								<i class="material-icons md-18">star</i>
							</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-sm btn-link p-0 btnlike">
								<i class="material-icons md-18">star</i>
							</button>
						</c:otherwise>
					</c:choose>
					<figure class="product-image">
						<img src="${pageContext.request.contextPath}/view/img/shoes01.png" alt="" class="">
					</figure>
					<a href="#" class="text-dark mb-1 mt-2 h6 d-block">남성 수제</a>
				</div>
			</div>
		</div>
		<!-- // 내부 내용 흰색 네모 1 -->
	</div>
</body>
</html>
