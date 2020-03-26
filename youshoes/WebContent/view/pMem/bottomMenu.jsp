<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 
작성자: 유승우
작성일자 : 2020.02.07
목적 : 하단 메뉴바 통합
 -->
<title>하단에 이동버튼 메뉴바</title>
<body>
	<div class="no-gutters">
		<div class="col-auto mx-auto">
			<div class="row no-gutters justify-content-center">
				<div class="col-auto">
					<a href="${pageContext.request.contextPath}/pMem.do" class="btn btn-link-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="홈"> <i class="material-icons">home</i>
					</a>
				</div>
				<div class="col-auto">
					<a href="${pageContext.request.contextPath}/orderHistory.do" class="btn btn-link-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="결제내역"> <i class="material-icons">insert_chart_outline</i>
					</a>
				</div>
				<div class="col-auto">
					<a href="${pageContext.request.contextPath}/searchShop.do" class="btn btn-default shadow centerbutton" data-toggle="tooltip" data-placement="top" title="" data-original-title="상점"> <i class="material-icons">local_mall</i>
					</a>
				</div>
				<div class="col-auto">
					<a href="${pageContext.request.contextPath}/bookmark.do" class="btn btn-link-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="즐겨찾기"> <i class="material-icons">star</i>
					</a>
				</div>
				<div class="col-auto">
					<a href="${pageContext.request.contextPath}/profile.do" class="btn btn-link-default default" data-toggle="tooltip" data-placement="top" title="" data-original-title="내 정보"> <i class="material-icons">account_circle</i>
					</a>
				</div>
			</div>
		</div>
	</div>
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