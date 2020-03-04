<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!--     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">
 -->
    <title>Product · GoFurniture</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <%--    <!-- Material design icons CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/vendor/materializeicon/material-icons.css">

    <!-- Roboto fonts CSS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/view/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Swiper CSS -->
    <link href="${pageContext.request.contextPath}/view/vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Chosen multiselect CSS -->
    <link href="${pageContext.request.contextPath}/view/vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">

    <!-- nouislider CSS -->
    <link href="${pageContext.request.contextPath}/view/vendor/nouislider/nouislider.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/view/css/style.css" rel="stylesheet"> --%>

    
</head>
<body>
	<div class="wrapper">
		<div class="container">
		<c:forEach items="${list }" var="dto">
			<div class="row bg-white py-3">
				<div class="col-6 mb-3">
					<p>
					<c:forEach var="stars" begin="1" end="${dto.getRw_stars() }">
						<i class="material-icons text-warning md-18 vm">star</i>
					</c:forEach>
					<c:forEach var="stars" begin="1" end="${5- dto.getRw_stars() }">
						<i class="material-icons text-secondary md-18 vm">star</i>
					</c:forEach>
						
					</p>
				</div>
				<div class="col-6 mb-3 text-right">
					<p class="text-muted small">${dto.getRw_date()}</p>
				</div>
				<div class="col-auto align-self-start">
					<figure class="avatar avatar-50">
						<img src="${pageContext.request.contextPath}/view/img/user1.png" alt="">
					</figure>
				</div>
				<div class="col">
					<h6>${dto.getPm_id()}</h6>
					
				</div>
				<div class="col-12">
					<p class="text-secondary small">${dto.getRw_content()}
						</p>
					<img src="${pageContext.request.contextPath}/view/img/${dto.img_name[0].img_name}" height="50%" width="90%">
					<br><br>
					<p style="text-align:center" data-like="${dto.getRw_no() }">
					
					
					<c:choose>
						<c:when test="${empty dto.likeview.pm_id }">
							<button class="btn btn-sm btn-link p-0 btnlike"><font size="5"><strong><i class="material-icons md-18">favorite_outline</i>좋아요</strong></font></button>	
						</c:when>
						<c:otherwise>
							<button class="btn btn-sm btn-link p-0 btnlike"><font size="5"><strong><i class="material-icons md-18">favorite</i>좋아요</strong></font></button>
						</c:otherwise>
					
					</c:choose>
					
<!-- 					<button class="btn btn-sm btn-link p-0"><font size="5"><strong><i class="material-icons md-18">favorite</i>좋아요</strong></font></button>
 -->					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					|
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/ReplyList.do?rw_no=${dto.getRw_no()}"><font size="5" color="gray"><strong>댓글</strong></font></a>
					</p>
					<p class="text-secondary small"></p>
				</div>
			</div>
			</c:forEach>
			
		</div>
	</div>
    
    <script>
    	$(".btnlike").bind("click",funclike);
    
    	function funclike(){
    		var i = this.parentNode.dataset.like;		//부모노드의 data-like속성을 가져온다
    		console.log(i);
    		var thisbtn = $(this);
    		$.ajax({
    			type:"POST",
    			url:"/youshoes/ajax/Like.do",
    			data: {rw_no: i}
    		}).done(function(result){
    			console.log(result);
    			if(result=="true"){
    				thisbtn.find("i").text('favorite_outline');
    			}else{
    				thisbtn.find("i").text('favorite');
    			}
    		})
    		
    	}
    	
    </script>
	
</body>
</html>