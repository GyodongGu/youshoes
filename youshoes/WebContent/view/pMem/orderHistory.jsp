<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!doctype html>
<html lang="ko" class="blue-theme">
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
				<th scope="col">주문수량</th>
				<th scope="col">주문 및 배송상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${orderHistory}" var="pMemOrdHistory">
				<tr>
					<td>${pMemOrdHistory.ord_no}</td>
					<td>${pMemOrdHistory.ord_date}</td>
					<td>${pMemOrdHistory.ord_point}</td>
					<td>${pMemOrdHistory.ordCnt.order_cnt}</td>
					<td>${pMemOrdHistory.ord_stat_cd}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- 페이징 -->
	<my:paging jsfunc="doList" paging="${paging}"/>
	<script>
	function doList(p) {
		document.searchFrm.p.value = p;
		document.searchFrm.submit();
	}
	</script>
	
	
	
	
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
