<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function pm_execDaumPostcode() {
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
                    document.getElementById("pm_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("pm_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('pm_postcode').value = data.zonecode;
                document.getElementById("pm_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("pm_detailAddress").focus();
            }
        }).open();
    }
    
  function selecting() {
	  var state =  $("#remarkSelect").val();
	   if(state == 'D04') {
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
	<form action="${pageContext.request.contextPath}/OrderPayment.do" id="frm" name="frm" onsubmit="return payment()">
		<h6 class="subtitle"><b>배송 주소</b></h6> 
		<div class="card shadow-sm border-0 mb-4">
		<div class="card-body">
		<div class="row">
			<div class="col-12 col-md-6">
				<div class="form-group float-label active"> 
					<input type="text" class="form-control"  id="pm_postcode" name="pm_postcode" placeholder="" value="우편번호">
					 <label class="form-control-label">우편번호</label> <br>
					 <span><button type="button" class="mb-2 btn btn-sm btn-default" onclick="pm_execDaumPostcode()" value="우편번호 찾기">우편번호찾기</button></span> 
				</div>  
			</div>  
			<div class="col-12 col-md-6">  
				<div class="form-group float-label active" style="margin-bottom: 0px"> 
				<label class="form-control-label">주소입력</label>  
				<input type="text" class="form-control" id="pm_address" name = "pm_address" placeholder="" value="주소">    
					<label class="form-control-label"></label> 
					</div> 
					<div class="form-group float-label"  style="padding-top:0px"> 
					 <input type="text" class="form-control" id="pm_detailAddress" name="pm_detailAddress" placeholder="" value="상세주소"> 
					 <label class="form-control-label"></label>  
					 <input type="text" class="form-control" id="pm_extraAddress" name="pm_extraAddress" placeholder="" value="참고항목" >
					<select class="form-control" id="remarkSelect" name="remarkSelect" onchange="selecting()">   
						<option value="" selected="selected">배송시 요청사항 (선택사항)</option>  
						<option value="D01">배송전, 연락바랍니다.</option>
						<option value="D02">부재시, 전화 또는 문자 주세요.</option> 
						<option value="D03">부재시, 경비실에 맡겨주세요.</option> 
						<option value="D04">직접 입력</option> 
                        </select>
                        <input type="hidden" class="form-control" id="etc" name="etc" value="(직접입력)" />
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
					<input type="text" class="form-control" id="pm_name" name = "pm_name" required="" value="입력"> 
					<label class="form-control-label">Name</label>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-6">
				<div class="form-group float-label active">
					<input type="text" class="form-control" id="pm_tell" name="pm_tell" required="" value="입력"> 
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
					<input type="text" class="form-control" id="res_date" name="res_date" required="" value="${resdate}"> 
				</div>   
				 
			</div>
		</div>
		</div>
		</div> 
		</c:if> 
		<h6 class="subtitle"><b>선택하신 제품사양</b></h6>
		<div class="card shadow-sm border-0 mb-4">
		<div class="card-body">
				<c:if test="${pdto.pdt_type_cd eq 'P' }">
				<c:forEach var="i" begin="0" end="${fn:length(ocolor)-1 }">
                            <div class="row"> 
                                <div class="col-3 col-md-2 col-lg-2 align-self-center">
                                    <figure class="product-image"><img src="${pageContext.request.contextPath}/view/img/${pdto.img_name[0].img_name}" alt="" class=""></figure>
                                </div> 
                                <div class="col">  
                                    <a href="" class="text-dark mb-1 h6 d-block"><b>${pdto.pdt_name }</b></a> <!-- 하이퍼링크에 제품 링크 걸어도 됨  -->
                                    <p class="text-secondary small mb-2">주문제작</p>
                                    <h5 class="text-success font-weight-normal mb-0">금액 : ￦ ${odpoint[i+1] }
                                    <input type="hidden" class = "ord_detail_point" id="ord_detail_point" name="ord_detail_point" value="${odpoint[i+1] }">
                                       <!--  <span class="badge badge-success d-inline-block ml-2"><small>10% off</small></span> -->
                                    </h5>
                                    <p class="text-secondary small text-mute mb-0">사이즈 : ${osize[i+1] }</p>
                                    <input type="hidden" id="ord_size" name="ord_size" value="${osize[i+1] }">
                                    <p class="text-secondary small text-mute mb-0">색상 : ${ocolor[i] } ${oname[i] }</p>
                                    <input type="hidden" id="ord_color" name="ord_color" value="${ocolor[i] }">
                                    <p class="text-secondary small text-mute mb-0">수량 : ${ocnt[i+1] }ea</p>
                                    <input type="hidden" id="ord_cnt" name="ord_cnt" value="${ocnt[i+1] }">  
                                     
                                </div>
                            </div>
                </c:forEach>
                </c:if>
                <c:if test="${pdto.pdt_type_cd eq 'C' }">
                			<div class="row">
                				<div class="col-3 col-md-2 col-lg-2 align-self-center">
                					<figure class="product-image"><img src="${pageContext.request.contextPath}/view/img/${pdto.img_name[0].img_name}" alt="" class=""></figure>
                				</div>
                				<div class="col">
                					<p class="text-dark mb-1 h6 d-block">${pdto.pdt_name }</p>
                					<p class="text-secondary small mb-2">맞춤제작</p>
                					<p class="text-secondary small text-mute mb-0">가격 : ${pdto.pdt_price }</p>
                					<input type="hidden" class = "ord_detail_point" id="ord_detail_point" name="ord_detail_point" value="${pdto.pdt_price }">
                					<p class="text-secondary small text-mute mb-0">예약 방문 시 사이즈와 색상을 선택할 수 있습니다.</p>
                					<input type="hidden" id="sm_id" name="sm_id" value="${pdto.sm_id }">
                                     
                				</div>
                			</div>
                </c:if>
                            </div>
                            </div>
         <div class="card-body">
         	<p class="text-dark mb-1 h6 d-block">현재 보유 포인트</p>
         	<p class="text-dark mb-1 h4 d-block" id="nowpoint">${pmdto.point_now }</p>
         	<p class="text-dark mb-1 h6 d-block">결제 될 총 포인트</p>
         	<p class="text-dark mb-1 h4 d-block" id="total"></p>
         	<p class="text-dark mb-1 h6 d-block">결제 후 잔여 포인트</p>
         	<p class="text-dark mb-1 h4 d-block" id="resultpoint"></p>
         	<input type="hidden" id = "pm_no" name="pm_no" value="${pmdto.pm_no }" >
         	<input type="hidden" id = "pdt_no" name="pdt_no" value="${pdto.pdt_no }" >
         	<input type="hidden" id = "ord_point" name="ord_point" value="">
         	<input type="hidden" id = "point_now" name="point_now" value="">
         </div>
          <!-- <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button> -->
 		<br>
		<button type="submit" class="btn btn-lg btn-default text-white btn-block btn-rounded shadow" id="btn" name="btn"><span>결제하기</span>
		<i class="material-icons">arrow_forward</i></button> <br>
	</form>	

<script>

		var odp = document.getElementsByClassName("ord_detail_point");	//각 세부제품
		
		var cnt=0;
		
 		for(i=0; i<odp.length; i++){
			cnt=cnt+(odp[i].value*1);
		}
		
 		//제품 가격 총합
 		var total=document.getElementById("total");
 		total.innerHTML=cnt;
 		
 		//주문테이블 총합 포인트 등록용
		var ordp = document.getElementById("ord_point");
		ordp.value=cnt;
		
		
		var result = document.getElementById("resultpoint");
		
		result.innerHTML = ${pmdto.point_now } - cnt;
		
		var nowpoint = document.getElementById("point_now");
		nowpoint.value=result.innerHTML;
		
		
		function payment(){
			if(document.getElementById("point_now").value < 0){
				alert("보유 포인트가 부족합니다.");
				return false;
			}else{
				var result = confirm("결제 하시겠습니까?");
				if(result){
					return true;
				}else{
					return false;	
				}
			} 
		}
			  
	
</script>


</body>
</html>