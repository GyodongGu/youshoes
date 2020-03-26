<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="ko" class="brown-theme">
<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/view/vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	
	$(document).ready(function(){
		var dialog=$('#modal').dialog({
			autoOpen: false,
			height:600,
			width:900,
			modal:true
		}); 
			$('.detail').on("click",function(){
				var ordno = $(this).attr('name');
				var url = '${pageContext.request.contextPath}/myReview.do?ord_no='+ordno;
				$('#modal').load(url,function(){
					dialog.dialog('open');
				})
			})
			
			
			
		$('.delete').on('click',function(){
			var no = $(this).attr('name');
			var result = confirm('정말 주문을 취소하시겠습니까?');
			if(result){
				location.href='${pageContext.request.contextPath}/deleteOrd.do?ord_no='+no;
			}else{
				return false;
			}
		})
		function insertrefund(){
				frm.submit();
			}
		
		var refund=$('#refundForm').dialog({
			autoOpen: false,
			height:400,
			width:900,
			modal:true,
			buttons:{
				"환불신청":insertrefund,
				Cancel:function(){
					$(this).dialog('close');
				}
			}
			
		})
		
		$('.refund').on('click',function(){
			var no = $(this).attr('name');
			$('#ord_no').attr('value',no);
			var result = confirm('환불하시겠습니까?');
			if(result){
				refund.dialog('open');
			}else{
				return false;
			}
		})
		$('#close').on('click',function(){
			refund.dialog('close');
		})
		
		$('.disreview').on('click',function(){
			alert('제품 수령 완료시 버튼이 활성화됩니다.');
		})
		
				
	});
</script>
</head>
<body>
	<div id = "modal" title="주문 상세 내역">
	
	</div>
	
	<div id = "refundForm" title="환불요청">
		<form id="frm" name="frm" action="${pageContext.request.contextPath}/insertRefund.do">
			<input type="hidden" id="ord_no" name="ord_no" value="">
			<label for="refund_reason">환불사유</label>
			<textarea rows="10" cols="100" id="refund_reason" name="refund_reason"></textarea>
			
			<!-- <button type="submit">환불</button>
			<button type="button" id="close">닫기</button> -->
		</form>
	</div>

	<p class="h3" align="center">나의 결제내역</p>
	<br>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">주문일자</th>
				<th scope="col">상태</th>
				<th scope="col">주문 상세정보</th>
				<th scope="col">취소 및 환불</th>
				<th scope="col">후기 작성</th>
			</tr>
		</thead>
		<tbody>
			<%-- <c:forEach items="${ordHistory}" var="OrdHistory">
				<tr>
					<td>${OrdHistory.ord_no}</td>
					<td>${OrdHistory.ord_date}</td>
					<td>${OrdHistory.ord_point}</td>
					<td>${OrdHistory.ord_stat_cd}</td>
					<td>
						<button class="mb-2 btn btn-default" onclick="location.href='${pageContext.request.contextPath}/insertReview.do?pdt_no=${OrdHistory.pdt_no }'">작성</button>
					</td>
				</tr>
			</c:forEach> --%>
			<c:forEach items="${olist}" var="history">
				<tr>
					<td>${history.num}</td>
					<td>${history.ord_date}</td>
					<td>${history.ord_stat_cd}</td>
					<%-- <td>${history.pdt_type_cd}</td> --%>
					<td><button class="mb-2 btn btn-default detail" name="${history.ord_no}">정보</button></td>
					<td>
						<c:choose>
							<c:when test="${history.ord_stat_cd eq '주문접수' }">
								<button class="mb-2 btn btn-default delete" name="${history.ord_no}">취소</button>
							</c:when>
							<c:when test="${history.ord_stat_cd eq '제작발송' }">
								<button class="mb-2 btn btn-default delete" name="${history.ord_no}" disabled="disabled">취소불가</button>
							</c:when>
							<c:otherwise>
								<c:if test="${history.refund ==1 }">
									<button class="mb-2 btn btn-default refund" name="${history.ord_no}" disabled="disabled">환불완료</button>
								</c:if>
								<c:if test="${history.refund ==0 }">
									<button class="mb-2 btn btn-default refund" name="${history.ord_no}">환불</button>
								</c:if>
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<c:choose>
							<c:when test="${history.ord_stat_cd eq '도착'}">
								<button class="mb-2 btn btn-default review" onclick="location.href='${pageContext.request.contextPath}/insertReview.do?pdt_no=${history.pdt_no }'" data-toggle="tooltip" data-placement="top" title="" data-original-title="제품 수령 완료 시 활성화됩니다.">작성</button>
							</c:when>
							<c:otherwise>
								<button class="mb-2 btn btn-default review disreview" onclick="location.href='${pageContext.request.contextPath}/insertReview.do?pdt_no=${history.pdt_no }'"
								data-toggle="tooltip" data-placement="top" title="" data-original-title="제품 수령 완료 시 활성화됩니다." disabled="disabled">작성</button>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<c:set var="pager" value="${(param.p == null) ? 1:param.p }"></c:set>
	<c:set var="startNum" value="${pager-(pager-1)%5 }"></c:set>
	<c:set var="lastNum" value="${fn:substringBefore(Math.ceil(count/5),'.') }"></c:set>
	<!-- 페이징 -->
	<nav aria-label="Page navigation example" class="text-center">
		<ul class="pagination">
			<c:if test="${startNum-1>1 }">
				<li class="page-item"><a class="page-link" href="?p=${startNum-1 }" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a></li>
			</c:if>
			<c:if test="${startNum-1<=1 }">
				<li class="page-item"><a class="page-link" onclick="alert('이전 페이지가 없습니다.')" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a></li>
			</c:if>
			
			<c:forEach var="i" begin="0" end="4">
				<c:if test="${(startNum+i)<= lastNum }">
					<li class="page-item"><a class="page-link" href="?p=${startNum+i }">${startNum+i }</a></li>
				</c:if>				
			</c:forEach>
			<c:if test="${startNum+4<lastNum }">
				<li class="page-item"><a class="page-link" href="?p=${startNum+5 }" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
			</c:if>
			<c:if test="${startNum+4>=lastNum }">
				<li class="page-item"><a class="page-link" onclick="alert('다음 페이지가 없습니다.')" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
			</c:if>
		</ul>
	</nav>
	<!-- page level script -->
    <script>
        $(window).on('load', function() {
            $(function() {
                $('[data-toggle="tooltip"]').tooltip()
            })
        });

    </script>
</body>
</html>
