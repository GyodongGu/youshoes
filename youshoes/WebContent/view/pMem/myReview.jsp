<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 작성한 후기</title>
<link href="../css/style.css" rel="stylesheet">
</head>
<body>
	<p class="h3" align="center">내가 작성한 후기</p>
	<br>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">글 번호</th>
				<th scope="col">후기글 내용</th>
				<th scope="col">작성자</th>
				<th scope="col">작성 일자</th>
			</tr>
		</thead>
		<tbody>
				<C:forEach items="${userReviews}" var="pmReview" >
				<tr>
					<th align="center" width="50">${pmReview.rw_no}</th>
					<td align="center" width="200">${pmReview.rw_content}</td>
					<td align="center" width="70">${pmReview.pm_id}</td>
					<td align="center" width="100">${pmReview.rw_date}</td>
				</tr>
				</C:forEach>
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
</body>
</html>