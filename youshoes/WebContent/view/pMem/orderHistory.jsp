<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!doctype html>
<html lang="ko" class="brown-theme">
<head>
</head>
<body>
	<p class="h3" align="center">나의 결제내역</p>
	<br>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">주문번호</th>
				<th scope="col">주문일자</th>
				<th scope="col">주문금액</th>
				<th scope="col">주문 및 배송상태</th>
				<th scope="col">후기 작성</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ordHistory}" var="OrdHistory">
				<tr>
					<td>${OrdHistory.ord_no}</td>
					<td>${OrdHistory.ord_date}</td>
					<td>${OrdHistory.ord_point}</td>
					<td>${OrdHistory.ord_stat_cd}</td>
					<td>
						<button class="mb-2 btn btn-default" onclick="location.href='${pageContext.request.contextPath}/insertReview.do?pdt_no=${OrdHistory.pdt_no }'">작성</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- 페이징 -->
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
</body>
</html>
