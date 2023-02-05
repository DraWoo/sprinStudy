<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로 지정해주는 el tag-0 --> 
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<script>
	if(confirm("로그아웃을 하시겠습니까?")){
		location.href = "${root}user/lgn";
	}else{
		location.href = "${root}index";
	}

</script>