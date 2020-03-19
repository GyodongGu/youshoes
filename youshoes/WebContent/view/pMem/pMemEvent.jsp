<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en" class="brown-theme">
<head>
<title>구매 회원이 보는 이벤트</title>
<link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">
<!-- 부트스트랩 CSS -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<div class="container">
			<p class="h3" align="center">공지사항 및 이벤트</p>
			<br>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성일자</th>
						<th scope="col">내용</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pmemEvent}" var="pMemEvent">
						<tr>
							<td>${pMemEvent.num}</td>
							<td>${pMemEvent.notice_title}</td>
							<td>${pMemEvent.notice_date}</td>
							<td>${pMemEvent.notice_content}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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
