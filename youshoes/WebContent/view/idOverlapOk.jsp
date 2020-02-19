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
				<c:when test="${idCheck == true }">
					<script>
						alert('${pm_id }는 사용할 수 있는 아이디입니다.');
						location.href = 'openFormClose(1)';
						window.close();
					</script>
				</c:when>
				<c:otherwise>
					<script>
						alert('${pm_id }는 이미 사용중인 아이디입니다.');
						location.href = 'openFormClose(0)';
						window.close();
					</script>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<script>window.close();</script>
</body>
</html>