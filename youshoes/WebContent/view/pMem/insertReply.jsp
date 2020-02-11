<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
  <style>
  #inbtn{
  	position:fixed;
  	bottom:0;
  	left:0;
  }	
  
  </style>
  
</head>
<body>
	<div>
		<!--상단 이전페이지 이동  -->
		<h3>
			<a href="${pageContext.request.contextPath}/Shop.do">←</a> 댓글
		</h3>
		<hr>
		
		<!--댓글 리스트  -->
		<div>
			<c:forEach items="${reply }" var="rep">
				<div>
					<font color="orange">${rep.reply_member }</font> ${rep.reply_content }
				</div>
	
			</c:forEach>
		</div>


		<!--댓글 입력 창 (맨 밑 하단)  -->
		<form action="ReplyInsert.do" id="reply" name="reply">
			<div class="input-group mb-3" id="inbtn">
				<input type="text" class="form-control" placeholder="Search" id="Reply_content" name="Reply_content">
				<div class="input-group-append">
					<button class="btn btn-success" type="submit">확인</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>