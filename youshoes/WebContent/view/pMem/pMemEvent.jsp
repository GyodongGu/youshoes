<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<th scope="col">이벤트 번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pmemEvent}" var="pMemEvent">
						<tr>
							<td>${pMemEvent.notice_no}</td>
							<td>${pMemEvent.notice_title}</td>
							<td>${pMemEvent.notice_date}</td>
							<td>${pMemEvent.notice_content}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- paginatnion -->
			<nav aria-label="Page navigation example" class="text-center">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
				</ul>
			</nav>
			<!-- // paginatnion -->
		</div>
	</div>
</html>
