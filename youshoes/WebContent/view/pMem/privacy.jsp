<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>개인정보 처리방침</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 없으면 감싸고 있는 흰색 부분 사라짐 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 없으면 감싸고 있는 흰색 부분 사라짐 -->
	<script>
		$(function() {
			$("#tabs")
				.tabs({	beforeLoad : function(event, ui) {
					ui.jqXHR.fail(function() {
						ui.panel.html("Couldn't load this tab. We'll try to fix this as soon as possible. "
									+ "If this wouldn't be a demo.");
					});
				}
			});
		});
	</script>
	<!-- // 없으면 감싸고 있는 흰색 부분 사라짐 -->

</head>

<body>
	<div class="wrapper">
		<!-- 상단에 뒤로가기 버튼 있는 따라다니는 줄 -->
		<div class="header">
			<diV><jsp:include page="topMenuBack.jsp"></jsp:include></div>
		</div>
		<!-- // 상단에 뒤로가기 버튼 있는 따라다니는 줄 -->
		
		<!-- 내부 내용 전체 감싸는 부분 -->
		<div class="container" align="center">
			<!-- 내용입력 -->
			<div id="tabs">
				<h3>개인정보 처리방침</h3>
				<br/>
				<table border="1" class="table">
					<thead class="thead-dark">
						<tr>
						<th scope="col">목적</th>
						<th scope="col">항목</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
						<th scope="row" colspan="2" class="imp_txt"><strong>보유기간 : 회원탈퇴 후 5일 이내 또는 법령에 따른 보존기간 (단, 부정거래 확인 시 회원탈퇴 후 6개월)</strong></th>
						</tr>
					</tfoot>
					<tbody>   
						<tr> 
							<td>본인여부 확인</td> 
							<td>이름, 아이디, 비밀번호, 휴대폰번호, 이메일주소</td> 
						</tr>
						<tr> 
							<td>계약이행 및 약관변경 등의 고지를 위한 연락, 본인의사<br />확인및 민원 등의 고객불만처리
							</td> 
							<td>이름, 아이디, 휴대폰번호, 이메일주소, 전화번호, 주소</td> 
						</tr>
						<tr> 
							<td>부정이용방지, 비인가사용방지, 서비스 제공 및 계약의 <br />이행
							</td> 
							<td>방문일시, 서비스 이용 기록 및 기기정보</td> 
						</tr>
						<tr> 
							<td>부정거래의 배제 (가입 후 부정거래가 확인된 경우만)</td> 
							<td><span>ID</span>, 휴대폰번호, 이메일주소, 전화번호, 생년월일, 부정거<br>래사유, 탈퇴 시 회원 상태값</td> 
						</tr>
					</tbody>
				</table>
			</div>
			<!-- // 내용입력 -->

			<!-- 하단에 아이콘 버튼 이동 부분 -->
			<div class="footer">
				<diV><jsp:include page="bottomMenu.jsp"></jsp:include></div>
			</div>
			<!-- // 하단에 아이콘 버튼 이동 부분 -->
		</div>
	</div>

	
</body>

</html>
