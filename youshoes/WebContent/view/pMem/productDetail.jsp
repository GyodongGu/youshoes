<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
<script>
	$(window).on('load', function() {
		var swiper = new Swiper('.product-details ', {
			slidesPerView : 1,
			spaceBetween : 0,
			pagination : {
				el : '.swiper-pagination'
			}
		});

	});
</script>


</head>
<body>
	<div class="swiper-container product-details">
		<div class="swiper-wrapper">
			<div class="swiper-slide" style="padding: 0px">
				<img
					src="${pageContext.request.contextPath}/view/img/${pdto.img_name[0].img_name}"
					alt="">
			</div>
			<div class="swiper-slide">
				<img
					src="${pageContext.request.contextPath}/view/img/${pdto.img_name[1].img_name}"
					alt="">
			</div>
			<div class="swiper-slide">
				<img
					src="${pageContext.request.contextPath}/view/img/${pdto.img_name[2].img_name}"
					alt="">
			</div>
		</div>
		<!-- 가게 사진 이미지의 pagination -->
		<div class="swiper-pagination"></div>
	</div>
	
	<div class="row">
		<p class="text-secondary my-1">즐겨찾기</p>&nbsp;
		<p data-like="${pdto.pdt_no }">
		<c:choose>
		<c:when test="${pdto.bookmark.pdt_no==0 }">
		<button class="btn btn-sm btn-link p-0 bookmark"><i class="material-icons text-secondary md-18 vm">star</i></button>
		</c:when>
		<c:otherwise>
		<button class="btn btn-sm btn-link p-0 bookmark"><i class="material-icons text-warning md-18 vm">star</i></button>
		</c:otherwise>
		</c:choose>
		</p>
	</div>

	<div class="subtitle h6">
		<div class="d-inline-block">
			제품 상세정보<br><br>
			<p class="text-secondary my-1">제품명</p>
			<h5 class="mb-0">&nbsp;&nbsp;${pdto.pdt_name }</h5><br>
			<p class="text-secondary my-1">사이즈</p>
			<h5 class="mb-0">
				<c:forEach items="${pdto.optlist }" var="op">
					&nbsp;&nbsp;${op.pdt_size_cd }
				</c:forEach>
			</h5><br>
			<p class="text-secondary my-1">제품가격</p>
			<h5 class="mb-0">&nbsp;&nbsp;
				<fmt:formatNumber value="${pdto.pdt_price }" pattern="#,###"/>point
			</h5>
			<p class="text-secondary my-1">제품 설명</p>
			<h5 class="mb-0">&nbsp;&nbsp;${pdto.pdt_remark }</h5>
		</div>
	</div>
	<br>
	<div class="row" id="sizediv">
		<div class="col-12 px-0">
			<div class="form-group">
			<c:if test="${pdto.pdt_type_cd eq 'P' }">
				<label>Size(color)</label> 
				<select	class="form-control form-control-lg" id="selectsize">
					<option value="">사이즈선택</option>
					<c:forEach items="${pdto.optlist }" var="op">
						<option value="${op.pdt_size_cd }">${op.pdt_size_cd }</option>
					</c:forEach>
				</select>
			</c:if>	
				<c:forEach items="${pdto.optlist }" var="op">
					<datalist id="colorlist${op.pdt_size_cd }">
						<c:forEach items="${op.pdt_color_cd.split(',') }" var="c">
							<c:if test="${c eq 'C04' }">
								<option value="C04">와인</option>
							</c:if>
							<c:if test="${c eq 'C03' }">
								<option value="C03">화이트</option>
							</c:if>
							<c:if test="${c eq 'C02' }">
								<option value="C02">브라운</option>
							</c:if>
							<c:if test="${c eq 'C01' }">
								<option value="C01">블랙</option>
							</c:if>
						</c:forEach>
					</datalist>
				</c:forEach>
			</div>
		</div>
	</div>
	<form action="" id="frm" name="frm">
		<div class="row">
			<div class="col-12 px-0">
				<ul class="list-group list-group-flush mb-4 pbox">
					<li class="list-group-item cntbox " style="display: none">
						<div class="row">
							<div class="col-auto align-self-center">
								<button class="btn btn-sm btn-link p-0 float-right circle">
									<i class="material-icons">remove_circle</i>
								</button>
							</div>
							<div class="col-2 pl-0 align-self-center">
								<figure class="product-image h-auto">
									<img
										src="${pageContext.request.contextPath}/view/img/${pdto.img_name[0].img_name}"
										alt="" class="vm">
								</figure>
							</div>
							<div class="col px-0">
								<a href="#" class="text-dark mb-1 h6 d-block">${pdto.pdt_name }</a>
								<h5 class="text-success font-weight-normal mb-0">${pdto.pdt_price }P</h5>
								<p class="text-secondary small text-mute mb-0 size" id="size">size
									${pdto.optlist[0].pdt_size_cd }</p>
								<input type="hidden" class="text-secondary small text-mute mb-0 size"
								 id="ord_size" name="ord_size" value="${pdto.optlist[0].pdt_size_cd }">
								<input type="hidden" class="text-secondary small text-mute mb-0 price"
								 id="ord_detail_point" name="ord_detail_point" value="${pdto.pdt_price }">

							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect1">색상</label> <select
									class="form-control color" id="ord_color"
									name="ord_color">
								</select>
							</div>

							<div class="col-auto align-self-center prodcnt">
								<div class="input-group input-group-sm ">
									<div class="input-group-prepend">
										<button class="btn btn-light-grey px-1 remove" type="button"
											id="remove" name="remove">
											<i class="material-icons">remove</i>
										</button>
									</div>
									<input type="text" class="form-control w-35 pcnt" id="ord_cnt"
										name="ord_cnt" placeholder="" value="1">
									<div class="input-group-append">
										<button class="btn btn-light-grey px-1 add" type="button"
											id="add" name="add">
											<i class="material-icons">add</i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>




		
				<%-- <p class="text-secondary my-1">총 수량</p>
				<h3 class="mb-0" id="totalcnt" name="totalcnt">1</h3>
				<p class="text-secondary my-1">결제해야할 포인트</p>
				<h3 class="mb-0" id="point" name="point">${pdto.pdt_price }P</h3> --%>
				<input type="hidden" id="sm_id" name="sm_id" value="${pdto.sm_id}">
				<input type="hidden" id="pdt_no" name="pdt_no" value="${pdto.pdt_no }">
				
				<br>
				<c:if test="${pdto.pdt_type_cd eq 'C' }">
					<button type="button"	class="btn btn-lg btn-default text-white btn-block btn-rounded shadow reservation">
						<span>예약</span><i class="material-icons">arrow_forward</i>
					</button>
				</c:if>
				<c:if test="${pdto.pdt_type_cd eq 'P' }">
					<button type="button" class="btn btn-lg btn-default text-white btn-block btn-rounded shadow order">
						<span>주문</span><i class="material-icons">arrow_forward</i>
					</button>
				</c:if>

			
	</form>

	<script>
		/*==================
		수량 플러스 버튼
		===================*/
		$('.pbox').on("click", '.add', function() {

			var num = $(this).parent().prev().val();
			$(this).parent().prev().val(num * 1 + 1);
			/* $('#totalcnt').text(num * 1 + 1); */
			$(this).closest('.prodcnt').prev().prev().find('.price').val(${pdto.pdt_price }*(num*1+1));
		});
		/*==================
		수량 마이너스 버튼
		===================*/

		$('.pbox').on("click", '.remove', function() {

			var num = $(this).parent().next().val();
			if (num > 1) {
				$(this).parent().next().val(num * 1 - 1);
				/* $('#totalcnt').text(num * 1 - 1); */
				$(this).closest('.prodcnt').prev().prev().find('.price').val(${pdto.pdt_price }*(num*1-1));
			}

		});
	</script>

	<script>
		/*==================
		사이즈 선택 시 해당 제품 추가
		===================*/

		$('#selectsize').bind(
				"change",
				function() {
					//alert($('#selectsize option:selected').val());

					//$('.pbox').append($('.cntbox').eq(0).clone()).css("display","block");		//ul태그 안에 li태그 복사해서 붙여넣기
					//$('.cntbox').css("display","block");
					if ($(this).val()=="")
						return
					var newbox = $('.cntbox').eq(0).clone(); //clone 생성

					newbox.appendTo($('.pbox')).css("display", "block"); //생성된 clone의 display 변경
					
					newbox.find('.size').text($(this).val());	//size에 선택된 값 보여주기
					newbox.find('.size').val($(this).val()); 	//전송될 size값

					newbox.find('.color').append(
							$('#colorlist' + $(this).val()).html()); //clone에 색상선택 datalist를 append
					$(this).val("");
				});

		/*====================
		마이너스 버튼 클릭시 해당 제품 삭제
		===================*/
		$('.pbox').on("click", '.circle', function() {
			$(this).closest("li").remove();
		});
	</script>

	<script>
	 $('.reservation').click(function(){
		 $('form').attr("action","${pageContext.request.contextPath}/Reserv.do");
		 frm.submit();
	 })
	 $('.order').click(function(){
		 if($('.cntbox').length==1){
			 alert("사이즈를 선택하시오");
		 }else{
			 $('form').attr("action","${pageContext.request.contextPath}/ProductOrder.do");
			 frm.submit();
		 }
		 
	 })
	</script>
	<script>
	$(".bookmark").bind("click",funcbook);
	
	function funcbook(){
		var i = this.parentNode.dataset.like;
		console.log(i);
		var thisbtn=$(this);
		$.ajax({
			type:"POST",
			url:"/youshoes/ajax/BookmarkCheck.do",
			data:{pdt_no : i}
		}).done(function(result){
			console.log(result);
			if(result=="true"){
				thisbtn.find("i").attr('class','material-icons text-secondary md-18 vm');
			}else{
				thisbtn.find("i").attr('class','material-icons text-warning md-18 vm')
			}
		})
	}
	
	</script>


</body>
</html>