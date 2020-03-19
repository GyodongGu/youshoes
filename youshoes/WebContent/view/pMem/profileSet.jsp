<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 설정</title>
</head>
<body>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/profileUpdateForm.do'" class="btn btn-lg btn-default text-white btn-block">프로필 수정</button>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/pMemEvent.do'" class="btn btn-lg btn-default text-white btn-block">이벤트</button>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/bookmark.do'" class="btn btn-lg btn-default text-white btn-block">즐겨찾기</button>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/logout.do'" class="btn btn-lg btn-default text-white btn-block">로그아웃</button>
</body>
</html>