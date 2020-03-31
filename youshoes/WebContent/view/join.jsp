<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" class="brown-theme">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">

    <title>회원가입</title>

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
    <!-- 주소 API  -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
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
            }
        }).open();
    }
</script>
    <script>
    
    /* 비밀번호 일치여부 체크 */
    	function isSame(){
    		if(document.getElementById('pm_pw').value !='' && document.getElementById('pm_pwChk').value !=''){
    			if(document.getElementById('pm_pw').value == document.getElementById('pm_pwChk').value){
    				document.getElementById('same').innerHTML = '비밀번호가 같습니다.';
    				document.getElementById('same').style.color = 'blue';
    			}else{
    				document.getElementById('same').innerHTML = '비밀번호가 다릅니다.'; 
    				document.getElementById('same').style.color = 'red';
    			}
    		}
    	}
    /*/비밀번호 일치여부 체크 */
	
    /* 아이디 중복체크 */
    function idCheck() {
	var id = frm.pm_id.value;
	console.log(id);
	if (id == "") {
		alert("아이디값을 입력후 확인하세요.");
		frm.pm_id.focus();
	} else {
		window.open("${pageContext.request.contextPath}/idOverlapOk.do?pm_id=" + id, "idChkAlert", "width=500, height=200, top=50, left=50, scrollbars=no, status=no, toolbar=no, menubar=no, resizeable=no, location=no");
	}
	}
    </script>
    <script>
    function chkjoin(){
    	if(frm.idChk.value=="unCheck"){
			alert("아이디 중복확인 해주세요.");
			frm.idChk.focus();
			return false;
		}
    	if(frm.pm_pw.value != frm.pm_pwChk.value){
			alert("패스워드가 일치하지 않습니다. 다시 확인해주세요.");
			frm.pm_pw.focus();
			return false;
		}
    }
    </script>
	
</head>

<body>
	<!-- id중복체크 창 안뜨고 알림창만 뜨게 -->
	<iframe width=0 height=0 name="idChkAlert" style="display: none;"></iframe>

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
            <form class="form-signin shadow" id="frm" name="frm" action="${pageContext.request.contextPath}/joinOk.do" method="post" onsubmit="return chkjoin()">
                 <div class="form-group float-label">
                    <input type="text" id="pm_id" name="pm_id" class="form-control" required autofocus>
                    <label for="pm_id" class="form-control-label"><font color="red">*</font>아이디
                    <button type="button" id="idChk" name="idChk" value="unCheck" onclick="idCheck()">중복확인</button>
                    </label>
                    
                </div>
                
                <div class="form-group float-label">
                    <input type="password" id="pm_pw" name="pm_pw" class="form-control" onchange="isSame()" required />
                    <label for="pm_pw" class="form-control-label"><font color="red">*</font>비밀번호</label>
                </div>
                
                <div class="form-group float-label">
                    <input type="password" id="pm_pwChk" name="pm_pwChk" class="form-control" onchange="isSame()" required />
                    <label for="pm_pwChk" class="form-control-label"><font color="red">*</font>비밀번호 확인&nbsp;<span id="same"></span></label>
                </div>
                
                <div class="form-group float-label">
                    <input type="text" id="pm_name" name="pm_name" class="form-control" required >
                    <label for="pm_name" class="form-control-label"><font color="red">*</font>이름</label>
                </div>
                
                <div class="form-group float-label active">
                    <input type="date" id="pm_birth" name="pm_birth" class="form-control" required >
                    <label for="pm_birth" class="form-control-label"><font color="red">*</font>생년월일</label>
                </div>
                
                <div class="form-group float-label">
                    <input type="email" id="pm_email" name="pm_email" class="form-control" required>
                    <label for="pm_email" class="form-control-label"><font color="red">*</font>이메일</label>
                </div>
                
                <div class="form-group float-label">
                    <input type="tel" id="pm_tell" name="pm_tell" class="form-control" required maxlength="15" pattern="^[0-9-]{2,20}$">
                    <label for="pm_tell" class="form-control-label"><font color="red">* </font>전화번호 (숫자, -만 입력)</label>
                </div>
                
                <!-- 카카오 주소 API -->
                <div class="form-group float-label active">
                	
                	<br />
                	<div class="form-group float-label">
                    <input type="text" id="pm_post" name="pm_post" class="form-control" placeholder="" required style="width:120px;">
                    <label for="pm_post" class="form-control-label active"><font color="red">*</font>우편번호&nbsp;&nbsp;<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" /></label>
                	</div>
                	<div class="form-group float-label">
                    <input type="text" id="pm_addr1" name="pm_addr1" class="form-control" placeholder="">
                    <label for="pm_addr1" class="form-control-label active"><font color="red">*</font>주소</label>
                	</div>
                	<div class="form-group float-label">
                    <input type="text" id="pm_addr2" name="pm_addr2" class="form-control" placeholder="">
                    <label for="pm_addr2" class="form-control-label active">상세주소</label>
                	</div>
                	<div class="form-group float-label">
                    <input type="text" id="pm_addr3" name="pm_addr3" class="form-control" placeholder="">
                    <label for="pm_addr3" class="form-control-label active">참고항목</label>
                	</div>
                </div>
                <!--//카카오 주소 API  -->

                <div class="row">
                    <div class="col-auto">
                        <button type="submit" class="btn btn-lg btn-default btn-rounded shadow">회원가입<i class="material-icons">arrow_forward</i></button>
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