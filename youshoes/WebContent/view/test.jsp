<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Custom Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type='text/javascript'>
	$(document).ready(function() {
						Kakao.init('008ee297ad6a65321153983313058dd3');
						function getKakaotalkUserProfile() {
							Kakao.API.request({
										url : '/v1/user/me',
										success : function(res) {
											$("#kakao-profile").append(res.properties.nickname);
											$("#kakao-profile").append($("<img/>",{"src" : res.properties.profile_image, "alt" : res.properties.nickname+"님의 프로필 사진"})	);
										},
										fail : function(error) {
											console.log(error);
										}
									});
						}
						function createKakaotalkLogin() {
							$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
							var loginBtn = $("<a/>", {"class" : "kakao-login-btn","text" : "로그인"});
							loginBtn.click(function() {
								Kakao.Auth.login({
									persistAccessToken : true,
									persistRefreshToken : true,
									success : function(authObj) {
										getKakaotalkUserProfile();
										createKakaotalkLogout();
									},
									fail : function(err) {
										console.log(err);
									}
								});
							});
							$("#kakao-logged-group").prepend(loginBtn)
						}
						function createKakaotalkLogout() {
							$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
							var logoutBtn = $("<a/>", {"class" : "kakao-logout-btn","text" : "로그아웃"});
							logoutBtn.click(function() {
								Kakao.Auth.logout();
								createKakaotalkLogin();
								$("#kakao-profile").text("");
							});
							$("#kakao-logged-group").prepend(logoutBtn);
						}
						if (Kakao.Auth.getRefreshToken() != undefined&& Kakao.Auth.getRefreshToken().replace(/ /gi,"") != "") {
							createKakaotalkLogout();
							getKakaotalkUserProfile();
						} else {
							createKakaotalkLogin();
						}
					});
</script>
</head>
<body>
<!-- <a id="custom-login-btn" href="javascript:loginWithKakao()">
<img src="img/kakao_login_btn_medium.png"/></a> -->
	<div id="kakao-logged-group"></div>
	<div id="kakao-profile"></div>
</body>
</html>