<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>프로필 수정</title>
<link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet"> <!-- 부트스트랩 core CSS -->
<link href="../css/style.css" rel="stylesheet">
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
			<h6 class="subtitle">기본 정보</h6>
			<div class="row">
				<div class="col-12 col-md-6">
					<div class="form-group float-label active">
						<input type="text" class="form-control" required="" value="wow"> <label class="form-control-label">이름</label>
					</div>
				</div>
				<div class="col-12 col-md-6">
					<div class="form-group float-label active">
						<input type="email" class="form-control" required="" value="wow@gmail.com"> <label class="form-control-label">이메일</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-6">
					<div class="form-group float-label active">
						<input type="tel" class="form-control" required="" value="010-1234-5678"> <label class="form-control-label">전화번호</label>
					</div>
				</div>
			</div>

			<h6 class="subtitle">주소</h6>

			<div class="row">
				<div class="col-12 col-md-6">
					<div class="form-group float-label active">
						<input type="text" class="form-control" required="" value="58, 어딘가"> <label class="form-control-label">주소 1</label>
					</div>
				</div>
				<div class="col-12 col-md-6">
					<div class="form-group float-label active">
						<input type="text" class="form-control" value="중구 어딘가"> <label class="form-control-label">주소 2</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="form-group float-label active">
						<input type="tel" class="form-control" required="" value="25468"> <label class="form-control-label">우편 번호</label>
					</div>
				</div>
			</div>

			<a href="profile.jsp" class="btn btn-lg btn-default text-white btn-block btn-rounded shadow"> <span>수정 완료</span> <i class="material-icons">arrow_forward</i>
			</a> <br>
		</div>
		<!-- // 안쪽에 프로필 수정하려는 입력 값 받는 곳 -->

		<!-- 하단에 아이콘 버튼 이동 부분 -->
		<div class="footer">
			<diV><jsp:include page="bottomMenu.jsp"></jsp:include></div>
		</div>
		<!-- // 하단에 아이콘 버튼 이동 부분 -->
	</div>


</body>

</html>
