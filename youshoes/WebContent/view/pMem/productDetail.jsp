<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
</head>
<body>
	
		<div class="subtitle h6">
			<div class="d-inline-block">
				제품 상세정보<br>

			</div>
		</div>
		<div class="row" id="sizediv">
			<div class="col-12 px-0">
				<div class="form-group">
					<label>Size</label> <select class="form-control form-control-lg" id="selectsize">
						<c:forEach items="${pdto.optlist }" var="op">
							<option value="${op.pdt_size_cd }">${op.pdt_size_cd }</option>
						</c:forEach>
					</select>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-12 px-0">
				<ul class="list-group list-group-flush mb-4">
					<li class="list-group-item">
						<div class="row">
							<div class="col-auto align-self-center">
								<button class="btn btn-sm btn-link p-0 float-right">
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
								<p class="text-secondary small text-mute mb-0" id="size">size</p>

							</div>
							<div class="col-auto align-self-center">
								<div class="input-group input-group-sm">
									<div class="input-group-prepend">
										<button class="btn btn-light-grey px-1" type="button"
											id="remove" name="remove">
											<i class="material-icons">remove</i>
										</button>
									</div>
									<input type="text" class="form-control w-35" id="pcnt"
										name="pcnt" placeholder="" value="1">
									<div class="input-group-append">
										<button class="btn btn-light-grey px-1" type="button" id="add"
											name="add">
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




		<div class="card mb-4 border-0 shadow-sm border-top-dashed">
			<div class="card-body text-center">
				<p class="text-secondary my-1">결제해야할 포인트</p>
				<h3 class="mb-0" id="point" name="point">${pdto.pdt_price }P</h3>
				<br>
				<c:if test="${pdto.pdt_type_cd eq 'C' }">
					<a
						href="${pageContext.request.contextPath}/Reserv.do?sm_id=${pdto.sm_id}"
						class="btn btn-lg btn-default text-white btn-block btn-rounded shadow"><span>예약</span><i
						class="material-icons">arrow_forward</i></a>
				</c:if>
				<c:if test="${pdto.pdt_type_cd eq 'P' }">
					<a href="${pageContext.request.contextPath}/ProductOrder.do"
						class="btn btn-lg btn-default text-white btn-block btn-rounded shadow"><span>주문</span><i
						class="material-icons">arrow_forward</i></a>
				</c:if>

			</div>
		</div>
	
	<script>
        	let btn=document.getElementById("add");
        	btn.addEventListener("click", function(){
        		
        		var cnt = document.getElementById("pcnt").value++;
        		document.getElementById("point").innerHTML=${pdto.pdt_price}*(cnt+1)+"P";
        	
        	});
        </script>
	<script>
        	let btn1=document.getElementById("remove");
        	btn1.addEventListener("click", function(){
        		if(document.getElementById("pcnt").value>1){
        			var cnt1= document.getElementById("pcnt").value--;
        			document.getElementById("point").innerHTML=${pdto.pdt_price}*(cnt1-1)+"P";
        		}
        		
        	});
        </script>
        
    <script>
    	$('#selectsize').change("click",function(){
    		alert($('#selectsize option:selected').val());
    		
    		$('.row').append('<p class="row">wjrdswkljelkfj qwklj feklwqef</p>');

    	})
    
    </script>


</body>
</html>