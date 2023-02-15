<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%-- <c:url var='root' value="/"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Google -Fonts-->
<link href='https://fonts.googleapis.com/css?family=Sintony:400,700&subset=latin-ext' rel='stylesheet' type='text/css'>
<!--Font-awsome-->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/resources/css/top_menu.css">
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"" type="image/x-icon">
		
<title>Insert title here</title>
</head>
<script type="text/javascript">

$(document).ready(function() {
	//메뉴클릭 햄버거 [모바일 버전]
/* 	$("#menutoggle").click(function() {
		$('.xs-menu').toggleClass('displaynone');

		});
	//add active class on menu[웹 버전]]
	$('ul li').click(function(e) {
		e.preventDefault();
		$('li').removeClass('active');
		$(this).addClass('active');
	}); */
//drop down menu	예제
/* 		$(".drop-down").hover(function() {
			$('.mega-menu').addClass('display-on');
		});
		$(".drop-down").mouseleave(function() {
			$('.mega-menu').removeClass('display-on');
		}); */
// In Settings > Javascript > add jquery file
$(function() {
	var pull = $('#pull');
	menu = $('nav ul');
	menuHeight	= menu.height();
    $(pull).on('click', function(e) {
	    e.preventDefault();
	    menu.slideToggle();
    });
    $(window).resize(function(){
    		var w = $(window).width();
    		if(w > 320 && menu.is(':hidden')) {
    			menu.removeAttr('style');
    		}
  	});
});
});
</script>
<!-- 상단 메뉴 부분 -->
<body>
<header>
    <div style="text-align:center;margin-top:25px;font-weight:bold;texxxt-decoration:none;">
	  			Welcome <a href="https://themeshook.com/" px;target="_blank">to Dragon Blog</a>
			</div>
				<h1>Dragon Blog</h1>
    <div>
    <nav class="clearfix">
      <ul class="clearfix topnav">
        <li><a class="main" href="${root}main">Home</a></il>
      	<c:forEach var="obj" items="${topMenuList}">
      	<!-- 게시판의 구분을 위한 쿼리 파라미터로 idx로 구분자를 넣어준다. -->
        <li><a class="main" href="${root}board/board_main?tb_info_idx=${obj.tb_info_idx}">${obj.tb_info_name}</a></il>
      	</c:forEach>
        <li style="padding-left:110px;font-size:17px">
           <a href="${root}user/lgn">로그인</a>
        </li>
        <li style="font-size:17px">
           <a href="${root}user/join">회원가입</a>
        </li>
        <li style="font-size:17px">
           <a href="${root}user/modify">정보수정</a>
        </li>
        <li style="font-size:17px">
           <a href="${root}user/lgnout">로그아웃</a>
        </li>
      </ul>
      <a href="#" id="pull">&#9776;</a>        
    </nav>
    
  </div>
</header>

</body>
