<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="brown-theme">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 아이디 기억하기 script -->
<script>
	$(document).ready(function() {
		// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
		var userInputId = getCookie("userInputId");
		$("input[name='pm_id']").val(userInputId);

		if ($("input[name='pm_id']").val() != "") { // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
			$("#saveid").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		}

		$("#saveid").change(function() { // 체크박스에 변화가 있다면,
			if ($("#saveid").is(":checked")) { // ID 저장하기 체크했을 때,
				var userInputId = $("input[name='pm_id']").val();
				setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			} else { // ID 저장하기 체크 해제 시,
				deleteCookie("userInputId");
			}
		});

		// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
		$("input[name='pm_id']").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
			if ($("#saveid").is(":checked")) { // ID 저장하기를 체크한 상태라면,
				var userInputId = $("input[name='pm_id']").val();
				setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			}
		});
	});

	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}
</script>
<!-- /아이디 기억하기 script -->
<!-- 카카오 로그인하기 script -->
<script type='text/javascript'>
	//<![CDATA[
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('008ee297ad6a65321153983313058dd3');
	function loginWithKakao() {
		// 로그인 창을 띄웁니다.
		Kakao.Auth.login({
			success : function(authObj) {
				//location.href="${pageContext.request.contextPath}/pMem.do";
				console.log(JSON.stringify(authObj));
				console.log(Kakao.Auth.getAccessToken());
				
				console.log(JSON.stringify(authObj.id));
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});
	};
	//]]>
</script>
<!-- /카카오 로그인하기 script -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">


<title>로그인</title>

<!-- Material design icons CSS -->
<link rel="stylesheet" href="vendor/materializeicon/material-icons.css">

<!-- Roboto fonts CSS -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

<!-- Swiper CSS -->
<link href="vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<!-- 화면바뀔때 로그 크게 -->
	<div class="row no-gutters vh-100 loader-screen">
		<div class="col align-self-center text-white text-center">
			<img src="img/logo.png" alt="logo">
			<h1>
				<span class="font-weight-light">You</span>Shoes
			</h1>
			<div class="laoderhorizontal">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
	</div>

	<div class="row no-gutters vh-100 proh bg-template">
<!-- 		<img src="img/shoes20.png" alt="logo" class="apple right-image align-self-center"> -->
		<div class="col align-self-center px-3 text-center">
			<img src="img/logo.png" alt="logo" class="logo-small">
			<h2 class="text-white ">
				<span class="font-weight-light">You</span>Shoes
			</h2>
			<form class="form-signin shadow" id="frm" name="frm" action="${pageContext.request.contextPath}/loginOk.do" method="post">
				<div class="form-group float-label">
					<input type="text" id="pm_id" name="pm_id" class="form-control" required autofocus> <label for="pm_id" class="form-control-label">아이디를 입력해주세요</label>
				</div>

				<div class="form-group float-label">
					<input type="password" id="pm_pw" name="pm_pw" class="form-control" required> <label for="pm_pw" class="form-control-label">비밀번호를 입력해주세요</label>
				</div>

				<div class="form-group my-4 text-left">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="saveid"> <label class="custom-control-label" for="saveid">아이디 기억하기</label>
					</div>
				</div>

				<div class="row">
					<div class="col-auto">
						<input type=submit value="" style="background-color: transparent; border: 0px transparent solid;"> 
						<a href="javascript:document.frm.submit();" class="btn btn-lg btn-default btn-rounded shadow"> 
						<span>로그인</span><i class="material-icons">arrow_forward</i></a>
						<a id="custom-login-btn" href="javascript:loginWithKakao()">
						<img src="img/kakao_login_btn_medium.png"/></a>
					</div>
				</div>
			</form>
			<p class="text-center text-white">
				<a href="join.jsp">회원가입</a>
			</p>
		</div>
	</div>

	<!-- jquery, popper and bootstrap js -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

	<!-- swiper js -->
	<script src="vendor/swiper/js/swiper.min.js"></script>

	<!-- template custom js -->
	<script src="js/main.js"></script>

</body>

</html>
