<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 글 작성</title>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				${'#preview'}.attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

</head>
<body>
	<form name="" method="post" action="${pageContext.request.contextPath}/insertReview.do" enctype="multipart/form-data">
		<table style="width: 100%;">
			<tr>
				<td>
					<i class="material-icons text-warning md-18 vm">star</i>
					<i class="material-icons text-warning md-18 vm">star</i> 
					<i class="material-icons text-warning md-18 vm">star</i> 
					<i class="material-icons text-warning md-18 vm">star</i> 
					<i class="material-icons text-warning md-18 vm">star</i>
				</td>
				<td align="right">작성일자</td>
			</tr>
			<tr>
				<!-- 이미지프로필 사진 -->
				<td colspan="2">

					<div class="col-auto align-self-start">
						<figure class="avatar avatar-50">
							<img src="${pageContext.request.contextPath}/view/img/user1.png" alt="">
						</figure>
						작성자
					</div>
				</td>
				<!-- // 이미지프로필 사진 -->
			</tr>
			<tr>
				<td colspan="2">
					<div class="form-group">
						<!-- 후기 이미지 선택 -->
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="customFile" name="imageFileName" onchange="readURL(this);" /> 
							<label class="custom-file-label" for="customFile">이미지 선택</label>
						</div>
						<!-- // 후기 이미지 선택 -->
						<!-- 후기글 내용 -->
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="3">
						</textarea>
						<!-- 후기글 내용 -->
					</div>
				</td>
			</tr>
			<tr>
				<!-- 올린 이미지 표시될 부분 -->
				<td colspan="2" align="center">
					<img id="preview" src="#" alt="신발 사진" width=500 height=300 />
				</td>
				<!-- // 올린 이미지 표시될 부분 -->
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-lg btn-default text-white btn-block">작성</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>