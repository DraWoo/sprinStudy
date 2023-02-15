<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- 절대경로 지정해주는 el tag-0 --> 
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--css링크-->
    <link href="${root}resources/css/login.css" rel="stylesheet" type="text/css">
   <!--Google -Fonts-->
<link href='https://fonts.googleapis.com/css?family=Sintony:400,700&subset=latin-ext' rel='stylesheet' type='text/css'>
	 <!-- fontawesome 링크 아이콘 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"" type="image/x-icon">
	<script src="https://kit.fontawesome.com/9f5e62a6ef.js" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"/>
    <title>Document</title>
</head>
<script type="text/javascript">
$(document).ready(function() {
	$("#fn_reset")[0].reset();
	
});
</script>

<body>
    <h1>Dragon Blog</h1>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form:form action="${root}user/join_pro" method="post" modelAttribute="joinTbMember">
			<h1>Create Account</h1>
			<form:input path="user_id" placeholder="아이디" />
			<form:input path="user_pw" placeholder="비밀번호" />
			<form:input path="user_pwChk" placeholder="비밀번호확인" />
			<form:input path="user_nick" placeholder="닉네임" />
			<form:input path="user_email" placeholder="이메일" />
			<form:input path="user_phone" placeholder="휴대전화번호" />
			<form:input path="user_gender" placeholder="성별" />
			<fmt:parseDate value="${USER_REGDATE}" var="REQUEST_DATE" pattern="yyyyMMdd"/>​
			<fmt:parseDate value="${USER_CREATEDATE}" var="REQUEST_DATE" pattern="yyyyMMdd"/>​
			<button id="signUpReset">Sign Up</button>
		</form:form>
	</div>
	<div class="form-container sign-in-container">
		<form:form action="${root}user/lgn" method="post" modelAttribute="joinTbMember">
			<h1>Sign in</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>or use your account</span>
			<form:input path="user_id" id="user_name" value="" placeholder="ID" />
			<form:errors path="user_id" style="color:red"/>
			<form:password path="user_pw" id="pw" value="" placeholder="Password" />
			<form:errors path="user_pw" style="color:red"/>
			<a href="#">Forgot your password?</a>
			<button id="signInReset" onclick="fn_reset">Sign In</button>
		</form:form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>

</body>
<script type="text/javascript" src="${root}resources/js/login.js"></script>
</html>
</html>