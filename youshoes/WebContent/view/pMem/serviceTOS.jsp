<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>이용약관</title>
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
		<div class="container">
			<!-- 내용입력 -->
			<div id="tabs">
				<h3 align="center">유슈즈 구매회원 약관</h3>
				<br/>
제1장 총칙<br/>
제1조 (목적)<br/>
이 약관은 유쥬즈(이하 “회사”라 함)가 운영하는 “YouShoes” 인터넷 오픈마켓 사이트 (www.Youshoes.co.kr, 이하 “유슈즈”라 함)와 스마트폰 등 이동통신기기를 통해 제공되는 ‘유슈즈’ 모바일 애플리케이션(이하 “모바일유슈즈”이라고 합니다)을 통해서 제공하는 전자상거래 관련 서비스 및 기타 서비스 (이하 “서비스”라 함)를 이용하는 자간의 권리, 의무를 확정하고 이를 이행함으로써 상호 발전을 도모하는 것을 그 목적으로 합니다.<br/>
<br/>
제2조(약관의 명시, 효력과 개정)<br/>
1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편주소 등)등과 함께 회원이 확인할 수 있도록 “유슈즈” 초기 서비스화면 또는 연결화면에 게시합니다.<br/>
2. 회사는 약관의규제에관한법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률, 전자금융거래법 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.<br/>
3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 초기화면에 그 적용일자 14일 이전부터 적용일자 전일까지 공지합니다.다만, 변경 내용이 중대하거나 구매회원에게 불리한 경우에는 그 적용일자 30일 이전부터 적용일자 전일까지 공지하고 구매회원에게 개별 통지합니다.변경된 약관은 그 적용일자 이전으로 소급하여 적용되지 아니합니다<br/>
<br/>
제3조 (용어의 정의)<br/>
1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br/>
1) 회원: 회사에 개인정보를 제공하여 회원등록을 한 개인 또는 법인으로서, 다음과 같이 일반회원과 판매회원으로 구분이 됩니다.<br/>
① 구매회원(구매자): 회사에서 제공하는 구매서비스를 이용할 수 있는 14세 이상의 개인이나 법인<br/>
② 판매회원(판매자): 회사에서 제공하는 구매서비스 및 판매서비스를 이용할 수 있는 14세 이상의 개인이나 법인<br/>
2) 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 문자와 숫자의 조합을 말합니다.<br/>
3) 비밀번호: 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.<br/>
4) 관리자: 회사가 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.<br/>
5) 구매안전서비스: 회사가 구매자의 결제대금의 보호를 위하여 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.<br/>
6) 제휴사 포인트 : 회사와 제휴관계가 있는 제3자가 제공하는 각종 포인트를 말합니다.<br/>
7) 아이템할인: 판매자가 회사의 서비스를 통하여 물품을 판매할 때 회사와의 합의에 따라 서비스이용료 범위 내에서 특정물품의 판매가격을 할인하는 것을 말합니다. 회사는 아이템할인으로 인한 특정물품 판매가격 할인액을 해당 서비스 화면에 게재합니다.<br/>
<br/>
2. 제1항에서 정의되지 않은 이 약관상의 용어의 의미는 일반적인 거래관행에 의합니다.<br/>
<br/>
제4조 (서비스의 종류)<br/>
1. 회사가 제공하는 서비스는 다음과 같습니다.<br/>
1) E-Commerce Platform 개발 및 운영서비스<br/>
① 판매관련 업무지원서비스<br/>
② 구매관련 지원서비스<br/>
③ 매매계약체결 관련 서비스<br/>
④ 상품 정보검색 서비스<br/>
⑤ 기타 전자상거래 관련 서비스<br/>
2) 광고 집행 및 프로모션 서비스<br/>
2. 회사가 제공하는 전항의 서비스는 회원이 재화 등을 거래할 수 있도록 사이버몰의 이용을 허락하거나, 통신판매를 알선하는 것을 목적으로 하며, 개별 판매회원(판매자)이 G마켓과 모바일G마켓에 등록한 상품과 관련해서는 일체의 책임을 지지 않습니다.<br/>
<br/>
제5조 (대리행위의 부인)<br/>
회사는 통신판매중개자로서 효율적인 서비스를 위한 시스템 운영 및 관리 책임만을 부담하며, 재화 또는 용역의 거래와 관련하여 구매자 또는 판매자를 대리하지 아니하고, 회원 사이에 성립된 거래 및 회원이 제공하고 등록한 정보에 대해서는 해당 회원이 그에 대한 직접적인 책임을 부담하여야 합니다.<br/>
<br/>
제6조 (보증의 부인)<br/>
회사는 회사가 제공하는 시스템을 통하여 이루어지는 구매자와 판매자 간의 거래와 관련하여 판매의사 또는 구매의사의 존부 및 진정성, 등록물품의 품질, 완전성, 안정성, 적법성 및 타인의 권리에 대한 비침해성, 구매자 또는 판매자가 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 또는 적법성 등 일체에 대하여 보증하지 아니하며, 이와 관련한 일체의 위험과 책임은 해당 회원이 전적으로 부담합니다.<br/>
<br/>
제2장 이용계약 및 정보보호<br/>
제7조 (구매 서비스 이용계약의 성립)<br/>
1. 구매 서비스 이용계약(이하 "이용계약"이라고 합니다)은 회사가 제공하는 구매 서비스를 이용하고자 하는 자의 이용신청에 대하여 회사가 이를 승낙함으로써 성립합니다. 회사는 이용승낙의 의사표시를 해당 서비스화면에 게시하거나 email 또는 기타 방법으로 통지합니다.<br/>
2. 구매 서비스를 이용하고자 하는 자는 이 약관에 동의하고 , 회사가 정하는 회원 가입 신청 양식에 따라 필요한 사항을 기입합니다.<br/>
3. 회원가입은 만 14세 이상의 개인 또는 사업자(개인사업자 및 법인사업자)가 할 수 있으며, 이용신청자는 실명으로 가입신청을 해야 하며, 실명이 아니거나 타인의 정보를 도용하는 경우 서비스이용이 제한되거나 관련 법령에 의거 처벌받을 수 있습니다.<br/>
4. 이용신청의 처리는 신청순서에 의하며, 회원가입의 성립시기는 회사의 승낙이 회원에게 도달한 시점으로 합니다.<br/>
5. 회사는 다음과 같은 사유가 발생한 경우 이용신청에 대한 승낙을 거부하거나 유보할 수 있습니다.<br/>
1) 회사의 실명확인절차에서 실명가입신청이 아님이 확인된 경우<br/>
2) 이미 가입된 회원과 이름 및 주민등록번호(또는 사업자등록번호)가 동일한 경우<br/>
3) 회사에 의하여 이용계약이 해지된 날로부터 2개월 이내에 재이용신청을 하는 경우<br/>
4) 회사로부터 회원자격 정지 조치 등을 받은 회원이 그 조치기간 중에 이용계약을 임의 해지하고 재이용신청을 하는 경우<br/>
5) 설비에 여유가 없거나 기술상 지장이 있는 경우<br/>
6) 기타 이 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우 및 회사가 합리적인 판단에 의하여 필요하다고 인정하는 경우<br/>
<br/>
제8조 (개인정보의 변경, 보호)<br/>
1. 회원은 이용신청 시 허위의 정보를 제공하여서는 아니 되며, 기재한 사항이 변경되었을 경우에는 즉시 변경사항을 최신의 정보로 수정하여야 합니다. 이름, ID, 주민등록번호 등은 수정할 수 없으나 법령에 의한 경우는 예외적으로 수정 가능합니다.<br/>
2. 회사의 회원에 대한 통지는 회원이 제공한 주소 또는 e-mail주소에 도달함으로써 통지된 것으로 보며, 수정하지 않은 정보로 인하여 발생하는 손해는 당해 회원이 전적으로 부담하며, 회사는 이에 대하여 아무런 책임을 지지 않습니다.<br/>
3. 회사는 이용계약을 위하여 회원이 제공한 정보를 회원이 동의한 회사 서비스 운영을 위한 목적 이외의 용도로 사용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해 회원에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.<br/>
4. 회사는 개인정보의 수집·이용·제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 구매서비스를 이용하고자 하는 자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.<br/>
5. 회사는 회원의 개인정보를 보호하기 위해 제3자에게 구매회원의 개인정보를 제공할 필요가 있는 경우에는 실제 청약시에 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용목적 및 보유·이용기간 등을 명시하여 구매회원의 동의를 받고, 개인정보를 위탁하는 경우에는 관련 법령이 정하는 바에 따라 "개인정보처리방침"을 수립하고 개인정보 보호 책임자를 지정하여 이를 게시하고 운영합니다.<br/>
<br/>
제9조 (아이디 및 비밀번호의 관리)<br/>
1. 아이디(ID) 및 비밀번호에 대한 관리책임은 회원에게 있으며, 회원은 어떠한 경우에도 본인의 아이디(ID) 또는 비밀번호를 타인에게 양도하거나 대여할 수 없습니다.<br/>
2. 회사의 귀책사유 없이 아이디(ID) 또는 비밀번호의 유출, 양도, 대여로 인하여 발생하는 손실이나 손해에 대하여는 회원 및 이용자 본인이 그에 대한 책임을 부담합니다.<br/>
3. 회원은 아이디(ID) 또는 비밀번호를 도난당하거나 제3자가 무단으로 이를 사용하고 있음을 인지한 경우, 이를 즉시 회사에 통보하여야 하고 회사는 이에 대한 신속한 처리를 위하여 최선의 노력을 다하여야 합니다.<br/>
<br/>
제10조 (이용계약의 종료)<br/>
1. 회원의 해지<br/>
1) 회원은 언제든지 해당 서비스화면을 통하여 회사에게 해지의사를 통지함으로써 이용계약을 해지할 수 있습니다. 다만, 회원은 해지의사를 통지하기 최소한 7일 전에 모든 거래를 완결시키는데 필요한 조치를 취하여야만 합니다.<br/>
2) 전호의 기간 내에 회원이 발한 의사표시로 인해 발생한 불이익에 대한 책임은 회원 본인이 부담하여야 하며, 이용계약이 종료되면 회사는 회원에게 부가적으로 제공한 각종 혜택을 회수할 수 있습니다.<br/>
3) 회원의 의사로 이용계약을 해지한 후, 추후 재이용을 희망할 경우에는 재이용 의사가 회사에 통지되고, 이에 대한 회사의 승낙이 있는 경우에만 서비스 재이용이 가능합니다.<br/>
2. 회사의 해지<br/>
1) 회사는 다음과 같은 사유가 발생하거나 확인된 경우 이용계약을 해지할 수 있습니다<br/>
① 다른 회원 또는 타인의 권리나 명예, 신용 기타 정당한 이익을 침해하거나 대한민국 법령 또는 공서양속에 위배되는 행위를 한 경우<br/>
② 회사가 제공하는 서비스의 원활한 진행을 방해하는 행위를 하거나 시도한 경우<br/>
③ 제7조 제5항의 승낙거부사유가 있음이 확인된 경우<br/>
④ 기타 회사가 합리적인 판단에 기하여 서비스의 제공을 거부할 필요가 있다고 인정할 경우<br/>
2) 회사가 해지를 하는 경우 회사는 회원에게 e-mail, 전화, 기타의 방법을 통하여 해지사유를 밝혀 해지의사를 통지합니다. 이용계약은 회사의 해지의사를 회원에게 통지한 시점에 종료됩니다.<br/>
3) 본 항에 의하여 회사가 이용계약을 해지하더라도, 해지 이전에 이미 체결된 매매계약의 완결과 관련해서는 이 약관이 계속 적용됩니다.<br/>
4) 본 항에서 정한 바에 따라 이용계약이 종료될 시에는 회사는 회원에게 부가적으로 제공한 각종 혜택을 회수할 수 있습니다.<br/>
5) 본 항에서 정한 바에 따라 이용계약이 종료된 경우에는, 회원의 재이용신청에 대하여 회사는 이에 대한 승낙을 거절할 수 있습니다.<br/>
<br/>
제11조 (서비스기간과 중단)<br/>
1. 본 약관에 따른 서비스 기간은 서비스 신청일로부터 이용계약의 해지 시까지 입니다.<br/>
2. 회사는 컴퓨터 등 정보통신설비의 보수, 점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. 이 경우 서비스 일시 중단 사실과 그 사유를 G마켓 초기화면에 통지합니다.<br/>
3. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스의 제공을 제한하거나 일시 중단할 수 있습니다.<br/>
<br/>
제12조 (서비스 이용료)<br/>
회사는 회원 간의 자유로운 전자상거래에 있어서 필요로 하는 각종 서비스를 제공하고 회사의 내부 정책에 따라 그에 대한 이용료(서비스 이용료)를 부과할 수 있습니다.<br/>
<br/>
제3장 유슈즈 구매서비스의 이용<br/>
제13조 (매매계약의 체결 및 대금 결제)<br/>
1. 상품의 매매계약은 회원이 판매자가 제시한 상품의 판매 조건에 응하여 청약의 의사표시를 하고 이에 대하여 판매자가 승낙의 의사표시를 함으로써 체결됩니다.<br/>
2. 회사는 회원이 현금, 카드 기타의 방법으로 매매 대금을 결제할 수 있는 방법을 제공합니다.<br/>
3. 매매 대금의 결제와 관련하여 구매자가 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 전적으로 구매자가 부담하여야 합니다.<br/>
4. 상품을 주문한 후 일정 기간 내에 매매대금을 결제하지 않을 경우 회사는 당해 주문을 회원의 동의 없이 취소할 수 있습니다.<br/>
5. 회사는 구매자의 상품 매매계약 체결 내용을 나의 쇼핑 내역을 통해 확인할 수 있도록 조치하며, 매매계약의 취소 방법 및 절차를 안내합니다.<br/>
6. 회사는 구매자가 매매대금 결제 시 사용한 결제수단에 대해 정당한 사용권한을 가지고 있는지의 여부를 확인할 수 있으며, 이에 대한 확인이 완료될 때까지 거래진행을 중지하거나, 확인이 불가한 해당거래를 취소할 수 있습니다.<br/>
7. 구매자가 실제로 결제하는 금액은 판매자가 정한 공급원가, 기본이용료, 상품에 적용된 할인쿠폰, 배송비, 옵션상품의 옵션내역 등이 적용된 금액(실구매액)이며 구매자에게 발행되는 구매증빙서(현금영수증, 세금계산서, 신용카드매출전표 등)는 실구매액으로 발행됩니다.<br/>
<br/>
제14조 (배송)<br/>
1. 배송 소요기간은 입금 또는 대금결제 확인일의 익일을 기산일로 하여 배송이 완료되기까지의 기간을 말합니다.<br/>
2. 회사는 판매자에게 회사로부터 구매자의 입금 또는 대금결제에 대한 확인통지를 받은 후 3영업일 이내에 배송에 필요한 조치를 취하도록 안내합니다.<br/>
3. 천재지변 등 불가항력적인 사유가 발생한 경우 그 해당기간은 배송 소요기간에서 제외됩니다.<br/>
4. 회사는 배송과 관련하여 판매자와 구매자, 배송업체, 금융기관 등과의 사이에 발생한 분쟁은 당사자들 간의 해결을 원칙으로 하며, 회사는 어떠한 책임도 부담하지 않습니다.<br/>
5. 판매자의 발송확인 처리 이후에 구매자가 수취확인을 하지 않아 배송중 상태가 지연될 경우, 회사는 발송확인일로부터 2주 이내에 수취확인요청 안내를 할 수 있습니다. 회사의 안내 이후에도 구매자의 수취확인이 이루어지지 않을 경우 3일이 경과한 시점에 자동으로 배송완료로 전환될 수 있으며 이 경우 실제 구매자가 상품을 수령하지 못한 경우에 구매자는 미수취신고를 할 수 있습니다.<br/>
<br/>
제15조 (취소)<br/>
1. 회원은 구매한 상품이 발송되기 전까지 구매를 취소할 수 있으며, 배송중인 경우에는 취소가 아닌 반품절차에 따라 처리됩니다.<br/>
2. 판매자가 회원의 입금 또는 대금결제에 대한 통지를 수령한 후 ESM PLUS 서비스 화면에서 에누리쿠폰(구매쿠폰)의 적용을 승인하지 않는 의사표시를 한 경우, 해당 체결 건은 자동적으로 취소되고 입금된 대금은 회원에게 환불됩니다.<br/>
3. 회원이 결제를 완료한 후 배송대기, 배송요청 상태에서는 취소신청 접수 시 특별한 사정이 없는 한 즉시 취소처리가 완료됩니다.<br/>
4. 배송준비 상태에서 취소신청한 때에 이미 상품이 발송이 된 경우에는 발송된 상품의 왕복배송비를 구매자가 부담하는 것을 원칙으로 하며, 취소가 아닌 반품절차에 따라 처리됩니다..<br/>
5. 취소처리에 따른 환불은 카드결제의 경우 취소절차가 완료된 즉시 결제가 취소되며, 현금결제의 경우에는 3영업일 이내에 Smile Cash로 환불됩니다.<br/>
<br/>
제16조 (반품)<br/>
1. 회원은 판매자의 상품 발송 시로부터 배송완료일 후 7일 이내까지 관계법령에 의거하여 반품을 신청할 수 있습니다.<br/>
2. 반품에 관한 일반적인 사항은 전자상거래등에서의소비자보호에관한법률 등 관련법령이 판매자가 제시한 조건보다 우선합니다.<br/>
3. 반품에 소요되는 비용은 반품에 대한 귀책사유가 있는 자에게 일반적으로 귀속됩니다. (예를 들어, 단순변심 : 구매자부담, 상품하자 : 판매자부담 등)<br/>
4. 반품 신청 시 반품송장번호를 미기재하거나 반품사유에 관하여 판매자에게 정확히 통보(구두 또는 서면으로)하지 않을 시 반품처리 및 환불이 지연될 수 있습니다.<br/>
5. 반품에 따른 환불은 반품 상품이 판매자에게 도착되고 반품사유 및 반품배송비 부담자가 확인된 이후에 현금결제의 경우에는 3영업일 이내에 Smile Cash로 환불되고, 카드 결제의 경우 즉시 결제가 취소됩니다. 다만, 회사는 거래의 종류와 규모, 구매자의 신용도 등을 고려하여 구매회원이 반품을 위해 상품을 발송한 사실이 확인되면 판매회원이 반품수령확인을 하기 전이라도 구매회원에게 신속하게 환불하는 서비스('빠른환불서비스')를 제공할 수 있습니다. 이 경우 구매회원이 반품에 정당한 사유가 없음에도 빠른환불서비스를 이용하여 환불을 받은 것으로 확인되면, 회사는 구매회원에게 환불액의 반환을 청구하거나 스마일캐시 등 구매회원의 예치금에서 환불액을 차감할 수 있고, 사위 기타 부정하게 환불을 받은 구매회원에 대해서는 제31조에서 정하는 조치를 취할 수 있습니다. 회사는 빠른환불서비스의 구체적 내용에 대하여 별도의 [서비스화면]을 통하여 공지합니다.<br/>
6. 반품배송비를 구매자가 부담하여야 하는 경우 반품배송비의 추가 결제가 이루어지지 않으면 환불이 지연될 수 있습니다.<br/>
<br/>
제17조 (교환)<br/>
1. 회원은 판매자의 상품 발송 시로부터 배송완료일 후 7일이내까지 관계법령에 의거하여 교환을 신청할 수 있습니다.<br/>
2. 교환신청을 하더라도 판매자에게 교환할 물품의 재고가 없는 경우에는 교환이 불가능하며, 이 경우에 해당 교환신청은 반품으로 처리됩니다.<br/>
3. 교환에 소요되는 비용은 물품하자의 경우에는 판매자가 왕복배송비를 부담하나 구매자의 변심에 의한 경우에는 구매자가 부담합니다.<br/>
<br/>
제18조 (환불)<br/>
1. 회사는 구매자의 취소 또는 반품에 의하여 환불사유가 발생할 시 현금결제의 경우에는 3영업일 이내에 구매자의 포인트로 해당금액을 환불하고 카드결제의 경우에는 즉시 결제가 취소됩니다.<br/>
2. 카드결제를 통한 구매건의 환불은 원칙적으로 카드결제 취소를 통해서만 가능합니다.<br/>
<br/>
<br/>
제19조 (반품/교환/환불의 적용 배제)<br/>
구매자는 다음 각 호의 경우에는 환불 또는 교환을 요청할 수 없습니다.<br/>
1) 구매자의 귀책사유로 말미암아 상품이 멸실·훼손된 경우<br/>
2) 구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우<br/>
3) 시간의 경과에 의하여 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우<br/>
4) 복제가 가능한 상품의 포장을 훼손한 경우<br/>
5) 주문에 따라 개별적으로 생산되는 물품 등 판매자에게 회복할 수 없는 중대한 피해가 예상되는 경우로서 사전에 해당 거래에 대하여 별도로 그 사실을 고지하고 구매자의 서면(전자문서를 포함)에 의한 동의를 받은 경우<br/>
<br/>
제20조 (구매안전 서비스)<br/>
1. 회사는 선지급식 통신판매에 있어서 구매자가 지급하는 결제대금을 예치하고 배송이 완료된 후 재화 또는 용역의 대금을 판매자에게 지급함으로써 구매자의 안전을 도모합니다.<br/>
2. 회사는 구매자에게 상품을 공급받은 사실을 재화 등을 공급받은 날(배송완료일)로부터 3영업일 이내에 통보하여 주도록 요청합니다.<br/>
3. 회사는 구매자가 재화 등을 공급받고 [구매결정]항목을 클릭할 경우 그 익일(토요일, 공휴일 제외)에 판매회원에게 결제대금을 지급하고, 배송완료일로부터 7일 이내에 [구매결정]을 클릭하지 않는 경우에는 7일이 경과한 날로부터 2영업일 이내에 판매회원에게 결제대금을 지급할 수 있습니다. 다만, 회사가 판매회원에게 결제대금을 지급하기 이전에 구매자가 취소, 반품, 교환 또는 환불의 의사를 표시한 경우에는 그 지급을 보류합니다.<br/>
<br/>
<br/>
제36조 (금지행위)<br/>
1. 직거래 1) 회사가 제공하는 구매안전서비스를 이용하지 않고 판매자와 구매자간에 직접적으로 거래하는 직거래는 거래의 안전을 위하여 금지되고, 직거래를 통하여 발생한 제반 문제에 대한 책임은 거래 당사자에게 있으며 회사는 이로 인하여 발생된 문제에 대하여 어떠한 책임도 지지 않습니다.<br/>
2) 직거래를 하거나 이를 유도한 것으로 확인된 판매자는 판매서비스 이용계약이 해지될 수 있으며, 회원은 직거래를 하거나 유도한 판매자를 회사가 운영하는 안전거래센터에 신고할 수 있습니다.<br/>
2. 경매 부정행위<br/>
1) 회사는 공정한 경매의 진행을 위하여 허위입찰이나 상습적인 낙찰취소, 경매 물품 구매 후 반품, 입찰방해, 낙찰가격 조작 등 일체의 불공정한 경매 부정행위를 금합니다.<br/>
2) 회사는 경매 부정행위가 확인된 경우 입찰취소 처리를 할 수 있으며 경우에 따라 입찰제한, 이용계약의 해지 등의 조치를 할 수 있습니다.<br/>
3. 시스템 부정행위<br/>
1) 회사가 제공하는 서비스 이용방법에 의하지 아니하고 비정상적인 방법으로 서비스를 이용하거나 시스템에 접근하는 행위는 금지됩니다.<br/>
2) 회사는 시스템 부정행위가 확인된 경우 해당 회원에 대하여 회사가 부가적으로 제공한 혜택의 일부 또는 전부의 회수, 특정서비스의 이용제한, 이용계약의 해지 등의 조치를 할 수 있으며 이로 인하여 발생한 손해가 있을 시 이의 배상을 청구할 수 있습니다.<br/>
4. 결제 부정행위<br/>
1) 타인의 명의나 카드정보, 계좌정보 등을 도용하여 회사가 제공하는 구매서비스를 이용하는 행위는 금지됩니다.<br/>
2) 물품판매 또는 용역제공을 가장하여 자금을 융통하는 것과 같이 여신전문금융업법 등 법령에 의하여 금지된 방법으로 비정상적인 결제를 하는 것은 금지되며, 해당 내용이 확인된 경우 회사는 이용계약을 해지하거나 회원의 거래를 중지시키고 관련기관에 통보할 수 있습니다.<br/>
3) 실제 상품의 배송이 없는 등 상품의 실질적인 구매의사가 없이 구매행위를 하는 것은 금지되며, 해당 내용이 확인된 경우 회사는 당해 거래를 취소할 수 있으며 경우에 따라 제재 조치를 취할 수 있습니다.<br/>
5. 재판매 목적의 거래행위<br/>
1) 다른 오픈마켓이나 인터넷쇼핑몰 등에 임의로 최저가를 등록하는 등으로 G마켓 할인쿠폰 발행을 유도한 후 해당 쿠폰을 적용한 조건으로 구매를 신청한 제3의 구매자에게 재판매하기 위한 목적으로 구매를 신청하는 행위는 금지됩니다.<br/>
2) 회사는 재판매 목적의 거래행위가 확인된 경우 해당 회원에 대하여 [ 1차 경고, 2차 일정 기간 이용 정지, 3차 영구 이용 정지 ] 등의 조치를 할 수 있으며, 이러한 행위로 인한 손해가 있을 경우 배상을 청구할 수 있습니다.<br/>
6. 기타 금지행위<br/>
1) 회원은 회사가 제공하는 할인율 등을 이용하여 비정상적인 다수의 거래를 체결시킴으로써 회사에 손실을 발생시키고 공정한 시장 환경 조성에 방해가 되는 행위 등을 하여서는 아니 되며, 해당 내용이 확인된 경우 회사는 당해 거래를 취소할 수 있으며 경우에 따라 거래 중지 등의 제재 조치를 가할 수 있습니다.<br/>
2) 회사는 회원이 다음 각목의 하나에 해당하는 경우 회원자격을 정지하거나 서비스 제공을 거부 또는 제한할 수 있으며, 그 밖에 법령준수, 타인의 권리보호, 사이트의 안전 확보 등을 위하여 필요한 조치를 취할 수 있습니다.<br/>
① 수출 관리 법령과 게시된 규칙, 제한을 위반하여 모바일G마켓이나 툴을 수출 또는 재수출하는 경우<br/>
② 모바일G마켓이나 모바일G마켓과 관련된 정보나 소프트웨어를 상업화하는 경우<br/>
<br/>
제6장 기타<br/>
제37조 (약관 외 준칙 및 관련 법령과의 관계)<br/>
1. 이 약관에 명시되지 않은 사항은 전자상거래등에서의소비자보호에관한법률 등 관련 법령의 규정과 일반 상관례에 의합니다.<br/>
2. 회사가 제공하는 구매 서비스를 통하여 거래한 경우, 전자상거래등에서의소비자보호에관한법률 등 관련 법령이 해당 거래 당사자에게 우선적으로 적용되고, 거래 당사자는 이 약관의 규정을 들어 거래 상대방에 대하여 면책을 주장할 수 없습니다.<br/>
3. 회사는 필요한 경우 특정 서비스에 관하여 적용될 사항(이하 “개별약관”이라고 합니다)을 정하여 이를 회사 홈페이지 등을 통해 미리 공지할 수 있습니다.<br/>
4. 회사는 전항의 개별약관에 변경이 있을 경우, 시행 14일 이전에 해당 변경사항을 공지합니다.<br/>
5. 회원은 이 약관 및 개별약관의 내용에 변경이 있는지 여부를 주시하여야 하며, 변경사항의 공지가 있을 시에는 이를 확인하여야 합니다.<br/>
<br/>
제38조 (회사의 면책)<br/>
1. 회사는 통신판매중개자로서 G마켓과 모바일G마켓을 기반으로 한 거래시스템만을 제공할 뿐이며, G마켓과 모바일G마켓의 거래시스템을 이용한 거래 내용에 관한 모든 분쟁에 대해서는 당해 거래 당사자가 책임을 져야 합니다.<br/>
2. 제11조 2항의 사유로 인하여 서비스를 일시적으로 중단하는 경우 회사는 이로 인하여 회원 또는 제3자가 입은 손해에 대하여 책임지지 않습니다. 단, 회사의 고의 또는 중과실로 인한 경우에는 그러하지 아니합니다.<br/>
3. 제11조 3항의 사유로 인하여 서비스를 제한하거나 중단하는 경우 회사는 불가항력을 이유로 그 책임을 면합니다.<br/>
4. 회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.<br/>
5. 회원이 자신의 개인정보를 타인에게 유출 또는 제공함으로써, 발생하는 피해에 대해서 회사는 일체의 책임을 지지 않습니다.<br/>
6. 모바일G마켓에서의 거래는 실시간으로 진행되지 않을 수도 있습니다. 모바일G마켓에서의 거래는 회원의 현재 소재지와 회원이 이용하는 무선 데이터 서비스 제공자의 네트웤 등의 이유로 제한, 지연될 수 있습니다.<br/>
<br/>
제39조 (관할법원)<br/>
이 약관과 이용계약 및 회원 상호간의 분쟁에 대해 회사를 당사자로 하는 소송이 제기될 경우에는 회사의 본사 소재지를 관할하는 법원을 합의관할법원으로 정합니다.<br/>
<br/>
제40조 (기타조항)<br/>
1. 회사는 필요한 경우 특정 서비스(혹은 그 일부)를 회사 홈페이지를 통하여 미리 공지한 후, 일시적 또는 영구적으로 수정하거나 중단할 수 있습니다.<br/>
2. 회사와 회원은 상대방의 명백한 동의 없이 이 약관상의 권리와 의무를 제3자에게 양도 할 수 없습니다.<br/>
3. 이 약관과 관련하여 당사자 간의 합의에 의하여 추가로 작성된 계약서, 협정서, 통보서 등과 회사의 정책변경, 법령의 제정·개정 또는 공공기관의 고시·지침 등에 의하여 회사가 G마켓을 통해 회원에게 공지하는 내용도 본 약관의 일부를 구성합니다.<br/>
<br/>
<br/>
부칙<br/>
제1조 (적용일자)<br/>
이 약관은 2020.02.02일부터 적용됩니다.<br/>
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
