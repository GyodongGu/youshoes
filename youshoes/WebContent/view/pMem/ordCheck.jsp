<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/style.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function(){
		$('.update').on('click',function(){
			var ordno = $(this).attr('name');
			var result = confirm('제품을 수령하셨습니까?');
			if(result){
				location.href='${pageContext.request.contextPath}/ordCheck.do?ord_no='+ordno;
			}else{
				return false;
			}
		})
	})
</script>
</head>
<body>
	<p class="h3" align="center">나의 결제내역</p>
	<br>
	<table class="table">
		<thead>
			<tr>
				
				<th scope="col">주문 날짜</th>
				<th scope="col">결제 포인트</th>
				<th scope="col">제품이름</th>
				<th scope="col">제품수령확인</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="chk">
			<tr>
				
				<td>${chk.ord_date }</td>
				<td>${chk.ord_point }</td>
				<td>${chk.pdt_name }</td>
				<td>
					<button type="button" class="mb-2 btn btn-default update" name = "${chk.ord_no }">확인</button>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
	
	
</body>
</html>