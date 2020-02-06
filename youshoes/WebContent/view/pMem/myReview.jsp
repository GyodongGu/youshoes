<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet">
</head>
<body>
	<p class="h3" align="center">내가 작성한 후기</p>
	<br>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">주문번호</th>
				<th scope="col">주문일자</th>
				<th scope="col">주문금액</th>
				<th scope="col">주문수량</th>
				<th scope="col">배송상태</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>@fat</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>@twitter</td>
			</tr>
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