<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입여부</title>
</head>
<body>
<div align="center">
		<div>
			<br />
			<c:choose>
				<c:when test="${pass == 0 }">
					<h1>회원가입 실패</h1>
					<button type="button" onclick="location.href='join.jsp'">확 인</button>
				</c:when>
				<c:otherwise>
					<h1>회원가입 성공</h1>
					<button type="button" onclick="location.href='login.jsp'">확 인</button>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>