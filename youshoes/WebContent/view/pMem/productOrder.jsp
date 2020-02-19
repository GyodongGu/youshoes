<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    
  function selecting() {
	  var state =  $("#exampleFormControlSelect1").val();
	   if(state == 'op4') {
		   var change = document.getElementById("etc");
			change.type = "text";
	   }else {
		   var change = document.getElementById("etc");
			change.type = "hidden";
	   } 
}
	
</script>
</head>
<body> 
		<h6 class="subtitle"><b>배송 주소</b></h6> 
		<div class="card shadow-sm border-0 mb-4">
		<div class="card-body">
		<div class="row">
			<div class="col-12 col-md-6">
				<div class="form-group float-label active"> 
					<input type="text" class="form-control"  id="sample6_postcode" placeholder="" value="우편번호">
					 <label class="form-control-label">우편번호</label> <br>
					 <span><button type="button" class="mb-2 btn btn-sm btn-default" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">우편번호찾기</button></span> 
				</div>  
			</div>  
			<div class="col-12 col-md-6">  
				<div class="form-group float-label active" style="margin-bottom: 0px"> 
				<label class="form-control-label">주소입력</label>  
				<input type="text" class="form-control" id="sample6_address" placeholder="" value="주소">    
					<label class="form-control-label"></label> 
					</div> 
					<div class="form-group float-label"  style="padding-top:0px"> 
					 <input type="text" class="form-control" id="sample6_detailAddress" placeholder="" value="상세주소"> 
					 <label class="form-control-label"></label>  
					 <input type="hidden" class="form-control" id="sample6_extraAddress" placeholder="" value="참고항목" >
					<select class="form-control" id="exampleFormControlSelect1" onchange="selecting()">   
						<option value="" selected="selected">배송시 요청사항 (선택사항)</option>  
						<option value="op1">배송전, 연락바랍니다.</option>
						<option value="op2">부재시, 전화 또는 문자 주세요.</option> 
						<option value="op3">부재시, 경비실에 맡겨주세요.</option> 
						<option value="op4">직접 입력</option> 
                        </select>
                        <input type="hidden" class="form-control" id="etc" value="(직접입력)" />
				 </div> 
			</div>
		</div>
		</div>
		</div>
		
		<h6 class="subtitle"><b>주문자 정보</b></h6>
		<div class="card shadow-sm border-0 mb-4">
		<div class="card-body">
		<div class="row">
			<div class="col-12 col-md-6"> 
				<div class="form-group float-label active">
					<input type="text" class="form-control" required="" value="입력"> 
					<label class="form-control-label">Name</label>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-6">
				<div class="form-group float-label active">
					<input type="text" class="form-control" required="" value="입력"> 
					<label class="form-control-label">핸드폰 번호</label>
				</div>
			</div>
		</div>
		</div>
		</div>
	 	<c:if test="${pdt_type eq 'C'}"> 
		<h6 class="subtitle"><b>선택하신 예약날짜 및 예약번호</b></h6> 
		<div class="card shadow-sm border-0 mb-4">
		<div class="card-body">
		<div class="row">
			<div class="col-12 col-md-6">  
				<div class="form-group float-label active">
				<label class="form-control-label">예약일</label>
					<input type="text" class="form-control" required="" value="${res_date}" disabled="disabled"> 
				</div>   
				<div class="form-group float-label active"> 
				<label class="form-control-label">예약번호</label>
					<input type="text" class="form-control" required="" value="'${ dto.res_no}번'" disabled="disabled"> 
				</div>  
			</div>
		</div>
		</div>
		</div> 
		</c:if> 
		<h6 class="subtitle"><b>선택하신 제품사양</b></h6>
		<div class="card shadow-sm border-0 mb-4">
		<div class="card-body">
                            <div class="row"> 
                                <div class="col-3 col-md-2 col-lg-2 align-self-center">
                                    <figure class="product-image"><img src="${pageContext.request.contextPath}/view/img/shoes05.png" alt="" class=""></figure>
                                </div> 
                                <div class="col">  
                                    <a href="" class="text-dark mb-1 h6 d-block"><b>여성용 구두</b></a> <!-- 하이퍼링크에 제품 링크 걸어도 됨  -->
                                    <p class="text-secondary small mb-2">주문제작</p>
                                    <h5 class="text-success font-weight-normal mb-0">금액 : ￦ 70,000
                                       <!--  <span class="badge badge-success d-inline-block ml-2"><small>10% off</small></span> -->
                                    </h5>
                                    <p class="text-secondary small text-mute mb-0">사이즈 : 230</p>
                                    <p class="text-secondary small text-mute mb-0">색상 : 검정</p>
                                     <p class="text-secondary small text-mute mb-0">수량 : 1ea</p> 
                                     
                                </div>
                            </div>
                            </div>
                            </div>
          <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
 		<br>
		<a href="profile-edit.html" class="btn btn-lg btn-default text-white btn-block btn-rounded shadow"><span>결제하기</span>
		<i class="material-icons">arrow_forward</i></a> <br>


</body>
</html>