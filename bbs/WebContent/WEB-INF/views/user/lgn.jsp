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
   <!--Google -Fonts-->
<link href='https://fonts.googleapis.com/css?family=Sintony:400,700&subset=latin-ext' rel='stylesheet' type='text/css'>
	 <!-- fontawesome 링크 아이콘 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"" type="image/x-icon">
	<script src="https://kit.fontawesome.com/9f5e62a6ef.js" crossorigin="anonymous"></script>
<title>DragonBBS</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<div class="alert alert-danger">
						<h3>로그인 실패</h3>
						<p>아이디 비밀번호를 확인해주세요</p>
					</div>
					<form:form action="${root }user/lgn_pro" method='post' modelAttribute="joinTbMember">
						<div class="form-group">
							<form:label path="user_id">아이디</form:label>
							<form:input path="user_id" class='form-control'/>
							<form:errors path='user_id' style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_pw">비밀번호</form:label>
							<form:password path="user_pw" class='form-control'/>
							<form:errors path='user_pw' style='color:red'/>
						</div>
						<div class="form-group text-right">
							<form:button class='btn btn-primary'>로그인</form:button>
							<a href="${root }user/join" class="btn btn-danger">회원가입</a>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>

</body>
</html>








    