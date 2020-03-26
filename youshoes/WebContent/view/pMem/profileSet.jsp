<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 설정</title>
<script>
	$(document).ready(function(){
		$('.deleteu').on('click',function(){
			var result = confirm('회원탈퇴입니다. 정말 탈퇴하시겠습니까?');
			if(result){
				return true;
			}else{
				return false;
			}
			
		})
	})
</script>
</head>
<body>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/profileUpdateForm.do'" class="btn btn-lg btn-default text-white btn-block">프로필 수정</button>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/pMemEvent.do'" class="btn btn-lg btn-default text-white btn-block">이벤트</button>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/bookmark.do'" class="btn btn-lg btn-default text-white btn-block">즐겨찾기</button>
	<a href="${pageContext.request.contextPath}/deletePm.do" class="btn btn-lg btn-default text-white btn-block deleteu">회원탈퇴</a>
</body>

</html>