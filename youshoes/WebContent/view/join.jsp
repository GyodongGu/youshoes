<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" class="brown-theme">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">

    <title>join.jsp</title>

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
    <div class="row no-gutters vh-100 loader-screen">
        <div class="col align-self-center text-white text-center">
            <img src="img/logo.png" alt="logo">
            <h1><span class="font-weight-light">You</span>Shoes</h1>
            <div class="laoderhorizontal"><div></div><div></div><div></div><div></div></div>
        </div>
    </div>
    <div class="row no-gutters vh-100 proh bg-template">
        <img src="img/shoes20.png" alt="logo" class="apple right-image align-self-center">
        <div class="col align-self-center px-3  text-center">
            <img src="img/logo.png" alt="logo" class="logo-small">
            <h2 class="text-white"><span class="font-weight-light">회원가입</span></h2>
            <form class="form-signin shadow">
                 <div class="form-group float-label active">
                    <input type="text" id="pm_id" class="form-control" name="pm_id" required autofocus >
                    <label for="pm_id" class="form-control-label"><font color="red">*</font>아이디</label>
                </div>
                
                <div class="form-group float-label">
                    <input type="password" id="pm_pw" class="form-control" name="pm_pw" required>
                    <label for="pm_pw" class="form-control-label"><font color="red">*</font>비밀번호</label>
                </div>
                
                <div class="form-group float-label">
                    <input type="password" id="pm_pwchk" class="form-control" name="pm_pwchk" required>
                    <label for="pm_pwchk" class="form-control-label"><font color="red">*</font>비밀번호 확인</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="text" id="pm_name" class="form-control" name="pm_name" required >
                    <label for="pm_name" class="form-control-label"><font color="red">*</font>이름</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="date" id="pm_birth" class="form-control" name="pm_birth" required >
                    <label for="pm_birth" class="form-control-label"><font color="red">*</font>생년월일</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="email" id="pm_email" class="form-control" name="pm_email" required >
                    <label for="pm_email" class="form-control-label"><font color="red">*</font>이메일</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="tel" id="pm_tell" class="form-control" name="pm_tell" required maxlength="11">
                    <label for="pm_tell" class="form-control-label"><font color="red">*</font>전화번호(-는 생략)</label>
                </div>
                
                <!-- 카카오 주소 API -->
                <div class="form-group float-label active">
                	
                	<br />
					<input type="text" id="pm_post" placeholder="우편번호" style="width:160px;" required>
					<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br />
					<input type="text" id="pm_addr1" placeholder="주소" style="width:280px;" required><br />
					<input type="text" id="pm_addr2" placeholder="상세주소" style="width:280px;"><br />
					<input type="text" id="pm_addr3" placeholder="참고항목" style="width:280px;">
					<label for="pm_post" class="form-control-label"><font color="red">*</font>주소(API)</label>
					
					<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
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
					        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
					        new daum.Postcode({
					            oncomplete: function(data) {
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
					                if(data.userSelectedType === 'R'){
					                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
					                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					                        extraAddr += data.bname;
					                    }
					                    // 건물명이 있고, 공동주택일 경우 추가한다.
					                    if(data.buildingName !== '' && data.apartment === 'Y'){
					                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					                    }
					                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					                    if(extraAddr !== ''){
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
					                element_wrap.style.height = size.height+'px';
					            },
					            width : '100%',
					            height : '100%'
					        }).embed(element_wrap);
					
					        // iframe을 넣은 element를 보이게 한다.
					        element_wrap.style.display = 'block';
					    }
					</script>
					
                </div>
                <!--//카카오 주소 API  -->

                <div class="row">
                    <div class="col-auto">
                        <a href="login.jsp" class="btn btn-lg btn-default btn-rounded shadow"><span>회원가입</span><i class="material-icons">arrow_forward</i></a>
                    </div>
                </div>
            </form>
            <p class="text-center text-white">
                계정이 있습니까?<br>
                <a href="login.jsp">로그인</a>
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
