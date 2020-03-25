<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 글 작성</title>
<script>
	var sel_file;
	$(document).ready(function(){
		$('#fileupload').on('change',function(e){
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			filesArr.forEach(function(f){
				sel_file=f;
				var reader = new FileReader();
				reader.onload = function(e){
					$('#preview').attr('src',e.target.result);
				}
				reader.readAsDataURL(f);
			});
		})
	})
</script>

</head>
<body>
	<form name="" method="post"
		action="${pageContext.request.contextPath}/insertReviewComplete.do"
		enctype="multipart/form-data">

		<!-- 이미지프로필 사진 -->

		<div class="col-auto align-self-start">
			<figure class="avatar avatar-50">
				<img src="${pageContext.request.contextPath}/view/img/${pmdto.img_name}"
					alt="">
			</figure>
			작성자 : ${pmid }
		</div>

		<br><br>
		<!-- 별점  -->
		<div>
			<p>별점 </p>
			<input type="radio" id="one" name="rw_stars" value="1">1점
			<input type="radio" id="two" name="rw_stars" value="2">2점
			<input type="radio" id="three" name="rw_stars" value="3">3점 
			<input type="radio" id="four" name="rw_stars" value="4">4점 
			<input type="radio" id="five" name="rw_stars" value="5">5점
		</div>
		
		<br><br>
		

		<div class="form-group">
			<!-- 후기 이미지 선택 -->
			<div class="custom-file">
				<input type="file" id="fileupload" name="fileupload">
			</div>
			<!-- // 후기 이미지 선택 -->
			
			<!-- 올린 이미지 표시될 부분 -->

			<img id="preview" src="" alt="신발 사진" width=500 height=300 /><br>

			<!-- // 올린 이미지 표시될 부분 -->
			
			<!-- 후기글 내용 -->
			<textarea class="form-conol" id="rw_content" name="rw_content" rows="3" cols="100">
			</textarea>
			<!-- 후기글 내용 -->
		</div>

		

		<input type="hidden" id="pdtno" name="pdtno" value="${pdtno }">
		<button type="submit" class="btn btn-lg btn-default text-white btn-block">작성</button>

	</form>

	<!-- 	<script>
	 function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				${'#preview'}.at('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	</script>
 -->
</body>
</html>