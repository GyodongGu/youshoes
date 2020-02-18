<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" class="blue-theme">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>프로필 수정</title>
<link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">
<!-- 부트스트랩 core CSS -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<!-- 내부 내용 전체 감싸는 부분 -->
		<div class="container">
			<!-- 프로필 이미지 사진  -->
			<div class="text-center">
				<div class="figure-profile shadow my-4">
					<figure>
						<img src="../img/user1.png" alt="">
					</figure>
					<div class="btn btn-dark text-white floating-btn">
						<i class="material-icons">camera_alt</i> <input type="file" class="float-file">
					</div>
				</div>
			</div>
			<!-- // 프로필 이미지 사진  -->

			<!-- 안쪽에 프로필 수정하려는 입력 값 받는 곳 -->
			<form action="/profileUpdate.do" method="post" id="profileUpdate" name="profileUpdate">
				<h6 class="subtitle">기본 정보</h6>
				<div class="row">
					<div class="col-12 col-md-6">
						<div class="form-group float-label active">
							<input type="text" class="form-control" id="upId" name="upId" value="${pmDTO.pm_name }"> 
							<label class="form-control-label">이름</label>
							
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="form-group float-label active">
							<input type="email" class="form-control" id="upEmail" name="upEmail"  value="${pmDTO.pm_email }"> 
							<label class="form-control-label">이메일</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12 col-md-6">
						<div class="form-group float-label active">
							<input type="tel" class="form-control" id="upTell" name="upTell" value="${pmDTO.pm_tell }"> 
							<label class="form-control-label">전화번호</label>
						</div>
					</div>
				</div>

				<h6 class="subtitle">주소</h6>

				<!-- 카카오 주소 API -->
				<div class="form-group float-label active">
					<input type="button" onclick="sample3_execDaumPostcode()" class="btn btn-primary" value="우편번호 찾기"> <br>
					<div id="wrap" style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1" onclick="foldDaumPostcode()" alt="접기 버튼">
					</div>
					<br />
					<div class="row">
						<div class="col-6">
							<div class="form-group float-label active">
								<input type="text" class="form-control" id="pm_post" style="width: 100px;"  value="${pmDTO.pm_post }"> 
								<label class="form-control-label">우편 번호</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 col-6">
							<div class="form-group float-label active">
								<input type="text" class="form-control" id="pm_addr1" value="${pmDTO.pm_addr1 }"> 
								<label class="form-control-label">주소</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 col-6">
							<div class="form-group float-label active">
								<input type="text" class="form-control" id="pm_addr2" value="${pmDTO.pm_addr2 }"> 
								<label class="form-control-label">상세주소</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 col-6">
							<div class="form-group float-label active">
								<input type="text" class="form-control" id="pm_addr3" value="${pmDTO.pm_addr3 }">
								<label class="form-control-label">참고항목</label>
							</div>
						</div>
					</div>
				</div>
				<!--//카카오 주소 API  -->
				
				<button type="submit" class="btn btn-lg btn-default text-white btn-block btn-rounded shadow">수정완료</button>
			</form>
		</div>
		<!-- // 안쪽에 프로필 수정하려는 입력 값 받는 곳 -->
	</div>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// 우편번호 찾기 찾기 화면을 넣을 element
		var element_wrap = document.getElementById('wrap');

		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_wrap.style.display = 'none';
		}

		function sample3_execDaumPostcode() {
			// 현재 scroll 위치를 저장해놓는다.
			var currentScroll = Math.max(document.body.scrollTop,
					document.documentElement.scrollTop);
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("pm_addr3").value = extraAddr;

							} else {
								document.getElementById("pm_addr3").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('pm_post').value = data.zonecode;
							document.getElementById("pm_addr1").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("pm_addr2").focus();

							// iframe을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							element_wrap.style.display = 'none';

							// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
							document.body.scrollTop = currentScroll;
						},
						// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
						onresize : function(size) {
							element_wrap.style.height = size.height + 'px';
						},
						width : '100%',
						height : '100%'
					}).embed(element_wrap);

			// iframe을 넣은 element를 보이게 한다.
			element_wrap.style.display = 'block';
		}
	</script>
</body>
</html>
