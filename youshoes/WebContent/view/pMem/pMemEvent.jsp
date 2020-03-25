<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en" class="brown-theme">

<head>
<title>구매 회원이 보는 이벤트</title>
<link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

<!-- 아코디언 설정 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#accordion" ).accordion({
      collapsible: true,
      active: false
    });
  } );
</script>
<style>
	.num{
	display: inline-block;
	width: 50px;
	}
	.title{
	display: inline-block;
	width: 500px;
	}
	.date{
	display: inline-block;
	width: 150px;
	}
</style>
<!-- /아코디언 설정 -->

<!-- 부트스트랩 CSS -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>

	<div class="wrapper">
		<div class="container">
			<p class="h3" align="center">공지사항 및 이벤트</p>
			<br>
			<!-- 아코디언 -->
			<div id="accordion">
				<c:forEach items="${pmemEvent}" var="pMemEvent">
					<div>
						<span class="num">${pMemEvent.num}</span> <span class="title">${pMemEvent.notice_title}</span> <span class="date">${pMemEvent.notice_date}</span>
					</div>
					  <div>
					    <p>${pMemEvent.notice_content}</p>
					  </div>
				 </c:forEach>
			</div>
			<br>
			
			<c:set var="pager" value="${(param.p == null) ? 1:param.p }"></c:set>
			<c:set var="startNum" value="${pager-(pager-1)%5 }"></c:set>
			<c:set var="lastNum" value="${fn:substringBefore(Math.ceil(count/5),'.') }"></c:set>
			<!-- paginatnion -->
			<nav aria-label="Page navigation example" class="text-center">
				<ul class="pagination">
					<c:if test="${startNum-1>1 }">
						<li class="page-item"><a class="page-link" href="?p=${startNum-1 }" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a></li>
					</c:if>
					<c:if test="${startNum-1<=1 }">
						<li class="page-item"><a class="page-link" onclick="alert('이전 페이지가 없습니다.')" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a></li>
					</c:if>
					<c:forEach var="i" begin="0" end="4">
						<c:if test="${(startNum+i)<= lastNum }">
							<li class="page-item"><a class="page-link" href="?p=${startNum+i }">${startNum+i }</a></li>
						</c:if>	
					</c:forEach>
					<c:if test="${startNum+4<lastNum }">
						<li class="page-item"><a class="page-link" href="?p=${startNum+5 }" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
					</c:if>
					<c:if test="${startNum+4>=lastNum }">
						<li class="page-item"><a class="page-link" onclick="alert('다음 페이지가 없습니다.')" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
					</c:if>
				</ul>
			</nav>
			<!-- // paginatnion -->
		</div>
	</div>

</html>
