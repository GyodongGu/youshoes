<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<script type="text/javascript">
	function openFormClose(n) {
	if(n==1){
		opener.document.frm.idChk.value = 'Checked';
	}else{
		opener.document.frm.pm_id.value="";
		opener.document.frm.pm_id.focus();
	}
		window.close();
	}
</script>
</head>
<body>
	<div align="center">
		<div>
			<c:choose>
				<c:when test="${idOverlapCheck == true }">
					<h1>${pm_id }는 사용할 수 있는 아이디입니다.</h1>
					<div>
						<br />
						<button type="button" onclick="openFormClose(1)">확 인</button>
					</div>
				</c:when>
				<c:otherwise>
					<h1>${pm_id }는 이미 사용중인 아이디입니다.</h1>
					<div>
						<br />
						<button type="button" onclick="openFormClose(0)">확 인</button>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>