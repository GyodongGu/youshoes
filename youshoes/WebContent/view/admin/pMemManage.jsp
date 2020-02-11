<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<br />
		<h1>회원 목록(일단구현해둠..)</h1>
		<table border="1">
			<tr>
				<th>회원번호</th>
				<th>id</th>
				<th>이 름</th>
				<th>가입일자</th>
				<th>이메일</th>
				<th>주 소</th>
				<th>연 락 처</th>
				<th>포인트</th>
			</tr>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.pm_no }</td>
				<td>${dto.pm_id }</td>
				<td>${dto.pm_name }</td>
				<td>${dto.pm_date }</td>
				<td>${dto.pm_email }</td>
				<td>${dto.pm_addr1 }</td>
				<td>${dto.pm_tell }</td>
				<td>${dto.point_now }</td>
			</tr>				
			</c:forEach>
		</table>
		
	</div>
</body>
</html>