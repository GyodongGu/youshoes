<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 포인트</title>
<!-- 아임포트 결제 API -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	function payBtn_click() {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp27275199'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

		IMP.request_pay({
			pg : 'inicis', // version 1.1.0부터 지원.
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '주문명:결제테스트',
			amount : 14000,
			buyer_email : 'iamport@siot.do',
			buyer_name : '구매자이름',
			buyer_tel : '010-1234-5678',
			buyer_addr : '대구 강남구 삼성동',
			buyer_postcode : '123-456',
			m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		}, function(rsp) {
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			} else {
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
	<!-- 구매 회원이 현재 가지고 있는 포인트를 표시해주는 박스 -->
	<div class="card mb-3 border-0 shadow-sm bg-template-light">
		<div class="card-body">
			<div class="row">
				<div class="col">
					<p class="text-secondary small mb-0">현재 포인트</p>
					<h6 class="text-dark my-0">${point}</h6>
				</div>
				<div class="col-auto">
					<button class="btn btn-default button-rounded-36 shadow" onclick="location.href='chargePoint.jsp'">
						<i class="material-icons">add</i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- // 구매 회원이 현재 가지고 있는 포인트를 표시해주는 박스 -->

	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="payBtn_click();">포인트 충전</button>
</body>
</html>