<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>개인정보 제3자 제공동의</title>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 없으면 감싸고 있는 흰색 부분 사라짐 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 없으면 감싸고 있는 흰색 부분 사라짐 -->
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
				<h3>개인정보 제3자 제공동의</h3>
				<br/>
				<table border="1" class="table">
					<thead class="thead-dark"> 
					<tr>
					<th scope="col" width="100">공유받는 자</th>
					<th scope="col">목적</th>
					<th scope="col">항목</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
					<th scope="row" colspan="3" class="imp_txt"><strong>보유 및 이용기간 : 구매 서비스 종료 후 1개월</strong></th>
					</tr>
				</tfoot>
				<tbody>
					<tr> 
						<th class="imp_txt"><strong>판매자</strong></th>
						<td class="imp_txt"><strong>상품 및 경품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서비스제공계약 및<br>전자상거래(통신판매)계약의 이행을 위해 필요한 업무의 처리</strong></td> 
						<td><span>ID</span>, 성명, 전화번호, 휴대폰번호, 배송지 주소, 이메일주소<br>(선택시), 통관고유부호(선택시), 생년월일(선택시)</td> 
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
