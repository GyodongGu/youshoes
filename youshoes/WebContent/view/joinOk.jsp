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
			<c:choose>
				<c:when test="${pass == 0 }">
					<script>
						alert('회원가입이 되지 않았습니다.');
						location.href = 'view/join.jsp';
					</script>
				</c:when>
				<c:otherwise>
					<script>
						alert('회원가입이 완료되었습니다.');
						location.href = 'view/login.jsp';
					</script>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>