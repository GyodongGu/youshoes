<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">

    <title>Product · GoFurniture</title>

    <!-- Material design icons CSS -->
    <link rel="stylesheet" href="${requestScope.request.contextPath}/youshoes/view/vendor/materializeicon/material-icons.css">

    <!-- Roboto fonts CSS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="${requestScope.request.contextPath}/youshoes/view/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Swiper CSS -->
    <link href="${requestScope.request.contextPath}/youshoes/view/vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Chosen multiselect CSS -->
    <link href="${requestScope.request.contextPath}/youshoes/view/vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">

    <!-- nouislider CSS -->
    <link href="${requestScope.request.contextPath}/youshoes/view/vendor/nouislider/nouislider.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${requestScope.request.contextPath}/youshoes/view/css/style.css" rel="stylesheet">
</head>
<body>
	<div class="wrapper">
		<div class="container">
		<c:forEach items="${list }" var="dto">
			<div class="row bg-white py-3">
				<div class="col-6 mb-3">
					<p>
						<i class="material-icons text-warning md-18 vm">star</i> <i
							class="material-icons text-warning md-18 vm">star</i> <i
							class="material-icons text-warning md-18 vm">star</i> <i
							class="material-icons text-secondary md-18 vm">star</i> <i
							class="material-icons text-secondary md-18 vm">star</i>
					</p>
				</div>
				<div class="col-6 mb-3 text-right">
					<p class="text-muted small">${dto.getRw_date()}</p>
				</div>
				<div class="col-auto align-self-start">
					<figure class="avatar avatar-50">
						<img src="${requestScope.request.contextPath}/youshoes/view/img/user1.png" alt="">
					</figure>
				</div>
				<div class="col">
					<h6>${dto.getPm_id()}</h6>
					
				</div>
				<div class="col-12">
					<p class="text-secondary small">${dto.getRw_content()}
						</p>
					<img src="img/handmade.jpg" height="50%" width="90%">
					<br><br>
					<p style="text-align:center">
					<button class="btn btn-sm btn-link p-0"><font size="5"><strong><i class="material-icons md-18">favorite_outline</i>좋아요</strong></font></button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					|
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="pMem/insertReply.jsp"><font size="5" color="gray"><strong>댓글</strong></font></a>
					</p>
				</div>
			</div>
			</c:forEach>
			
		</div>
	</div>

	
</body>
</html>