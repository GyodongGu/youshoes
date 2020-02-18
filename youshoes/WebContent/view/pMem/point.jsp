<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 포인트</title>
<!-- 아임포트 결제 API 라이브러리 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- // 아임포트 결제 API 라이브러리 -->
<script>
	function payBtn_click() {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp27275199'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

		IMP
				.request_pay(
						{
							pg : 'inicis', // version 1.1.0부터 지원.
							pay_method : 'card', // 충전 유형
							merchant_uid : 'merchant_' + new Date().getTime(), // 고유 주문 번호
							name : '포인트 충전 : 테스트', // 주문 명

							amount : 1000, // 결제 금액
							// 충전 금액

							buyer_email : '${pmDTO.pm_email}', // 구매자의 이메일 받아와야함
							buyer_name : '${pmDTO.pm_name}', // 구매자의 이름 받아와야함
							m_redirect_url : 'http://localhost:8096/youshoes/view/pMem/profile.jsp' // 모바일 결제 후 이동될 주소
						}, function(rsp) { // callback(결제가 완료 후 실행되는 함수)
							if (rsp.success) { // 결제 성공 시  로직
								var msg = '결제가 완료되었습니다.';
								msg += '고유ID : ' + rsp.imp_uid;
								msg += '상점 거래ID : ' + rsp.merchant_uid;
								msg += '결제 금액 : ' + rsp.paid_amount;
								msg += '카드 승인번호 : ' + rsp.apply_num;

								// 테이블에 구매 유저 현재 금액 업데이트

							} else { // 결제 실패 시  로직
								var msg = '결제에 실패하였습니다.';
								msg += '에러내용 : ' + rsp.error_msg;
							}
							alert(msg);
						});
	}
</script>
<!-- // 아임포트 결제 API -->
</head>
<body>

	<form>
		<!-- 구매 회원이 현재 가지고 있는 포인트를 표시해주는 박스 -->
		<div class="card mb-3 border-0 shadow-sm bg-template-light">
			<div class="card-body">
				<div class="row">
					<div class="col">
						<p class="text-secondary small mb-0">현재 포인트</p>
						<h3 class="text-dark my-0">${pmDTO.point_now}</h3>
					</div>
				</div>
			</div>
		</div>
		<!-- // 구매 회원이 현재 가지고 있는 포인트를 표시해주는 박스 -->


		<select class="form-control form-control-lg">
			<option value="notPick">충전할 금액을 선택해주세요</option>
			<option>1000</option>
			<option>10000</option>
			<option>30000</option>
			<option>50000</option>
			<option>1000000</option>
			<option>2000000</option>
		</select>
		<br>
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick="payBtn_click();">포인트 충전</button>
	</form>

	<script>
		$("select option[value='notPick']").prop('disabled', true); // select의 value가 notPick인 것의 선택을 막음
	</script>
</body>
</html>