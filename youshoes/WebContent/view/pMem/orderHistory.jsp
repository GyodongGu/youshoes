<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
				<th scope="col">번호</th>
				<th scope="col">주문일자</th>
				<th scope="col">주문금액</th>
				<th scope="col">주문 및 배송상태</th>
				<th scope="col">후기 작성</th>
			</tr>
		</thead>
		<tbody>
			<%-- <c:forEach items="${ordHistory}" var="OrdHistory">
				<tr>
					<td>${OrdHistory.ord_no}</td>
					<td>${OrdHistory.ord_date}</td>
					<td>${OrdHistory.ord_point}</td>
					<td>${OrdHistory.ord_stat_cd}</td>
					<td>
						<button class="mb-2 btn btn-default" onclick="location.href='${pageContext.request.contextPath}/insertReview.do?pdt_no=${OrdHistory.pdt_no }'">작성</button>
					</td>
				</tr>
			</c:forEach> --%>
			<c:forEach items="${olist}" var="history">
				<tr>
					<td>${history.num}</td>
					<td>${history.ord_date}</td>
					<td>${history.ord_point}</td>
					<td>${history.ord_stat_cd}</td>
					<td>
						<button class="mb-2 btn btn-default" onclick="location.href='${pageContext.request.contextPath}/insertReview.do?pdt_no=${history.pdt_no }'">작성</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<c:set var="pager" value="${(param.p == null) ? 1:param.p }"></c:set>
	<c:set var="startNum" value="${pager-(pager-1)%5 }"></c:set>
	<c:set var="lastNum" value="${fn:substringBefore(Math.ceil(count/5),'.') }"></c:set>
	<!-- 페이징 -->
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
</body>
</html>
