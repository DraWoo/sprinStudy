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
<script>
	function checkUserIdExist(){
		
		var user_id = $("#user_id").val()
		
		if(user_id.length == 0){
			alert('아이디를 입력해주세요')
			return
		}
		
		$.ajax({
			url : '${root}user/checkUserIdExist/' + user_id,
			type : 'get',
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'true'){
					alert('사용할 수 있는 아이디입니다')
					$("#userIdExist").val('true')
				} else {
					alert('사용할 수 없는 아이디 입니다')
					$("#userIdExist").val('false')
				}
			}
		})
	}
	
	function resetUserIdExist(){
		$("#userIdExist").val('false')
	}
</script>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root }user/join_pro" method='post' modelAttribute="joinTbMember">
						<%-- <form:hidden path="userIdExist"/> --%>
						<div class="form-group">
							<form:label path="user_name">이름</form:label>
							<form:input path="user_name" class='form-control'/>
						</div>
							<form:errors path="user_name" style='color:red'/>
						<div class="form-group">
							<form:label path="user_id">아이디</form:label>
							<div class="input-group">
								<form:input path="user_id" class='form-control' onkeypress="resetUserIdExist()"/>
								<div class="input-group-append">
									<button type="button" class="btn btn-primary" onclick='checkUserIdExist()'>중복확인</button>
								</div>
							</div>
							<form:errors path="user_id" style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_pw">비밀번호</form:label>
						<div class="input-group">
							<form:input path="user_pw" class='form-control' placeholder="비밀번호" />
						</div>
							<form:errors path='user_pw' style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_pwChk">비밀번호 확인</form:label>
						<div class="input-group">
							<form:input path="user_pwChk" class='form-control' placeholder="비밀번호확인" />
						</div>
							<form:errors path='user_pwChk' style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_nick">닉네임</form:label>
						<div class="input-group">
							<form:input path="user_nick" class='form-control' placeholder="닉네임" />
						</div>
							<form:errors path='user_nick' style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_email">이메일</form:label>
						<div class="input-group">
							<form:input path="user_email" class='form-control' placeholder="이메일" />
						</div>
							<form:errors path='user_email' style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_phone">휴대전화번호</form:label>
						<div class="input-group">
							<form:input path="user_phone" class='form-control' placeholder="휴대전화번호" />
						</div>
							<form:errors path='user_phone' style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_gender">성별</form:label>
						<div class="input-group">
							<form:input path="user_gender" class='form-control' placeholder="성별" />
						</div>
							<form:errors path='user_gender' style='color:red'/>
						</div>
						<fmt:parseDate value="${USER_REGDATE}" var="REQUEST_DATE" pattern="yyyyMMdd"/>​
						<fmt:parseDate value="${USER_CREATEDATE}" var="REQUEST_DATE" pattern="yyyyMMdd"/>​
						<div class="form-group">
							<div class="text-right">
								<form:button class='btn btn-primary'>회원가입</form:button>
							</div>
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








    