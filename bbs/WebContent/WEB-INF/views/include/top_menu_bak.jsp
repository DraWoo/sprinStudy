<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/"/>
<%-- <c:url var='root' value="/"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Google -Fonts-->
<link href='https://fonts.googleapis.com/css?family=Sintony:400,700&subset=latin-ext' rel='stylesheet' type='text/css'>
<!--Font-awsome-->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/resources/css/top_menu.css">
		
<title>Insert title here</title>
</head>
<script type="text/javascript">

$(document).ready(function() {
	//메뉴클릭 햄버거 [모바일 버전]
 	$("#menutoggle").click(function() {
		$('.xs-menu').toggleClass('displaynone');

		});
	//add active class on menu[웹 버전]]
	/* $('ul li').click(function(e) {
		e.preventDefault();
		e.stopPropagation();
		$('li').removeClass('active');
		$(this).addClass('active');
	});  */
//drop down menu	예제
/* 		$(".drop-down").hover(function() {
			$('.mega-menu').addClass('display-on');
		});
		$(".drop-down").mouseleave(function() {
			$('.mega-menu').removeClass('display-on');
		}); */

});

</script>
<section class="container">
		<header>
	        <div style="text-align:center;margin-top:25px;font-weight:bold;texxxt-decoration:none;">
	  			Welcome <a href="https://themeshook.com/" px;target="_blank">to Dragon Blog</a>
			</div>
				<h1>Dragon Blog</h1>
		</header>
		<!-- 햄버거 메뉴 start -->
			<div class="xs-menu-cont">
			<a id="menutoggle"><i class="fa fa-align-justify"></i> </a>
				<nav class="xs-menu displaynone">
					<ul>
						<li>
							<a href="#">Home</a>
						</li>
						<li>
							<a href="#">About</a>
						</li>
						<li>
							<a href="#">Services</a>
						</li>
						<li>
							<a href="#">Team</a>
						</li>
						<li>
							<a href="#">Portfolio</a>
						</li>
						<li>
							<a href="#">Blog</a>
						</li>
						<li>
							<a href="#">Contact</a>
						</li>
					</ul>
				</nav>
			</div>
		<!-- 햄버거 메뉴 end -->
		<!-- web menu start -->
			<nav class="menu">
				<ul>
					<li>
					<!-- class="nav-link" 부트스트랩에서는 페이지이동을 위해 해당 클래스를 추가 -->
						<a href="${root}index" class="nav-link">Home</a>
					</li>
					<li>
						 <a href="${root}board/board_main" class="nav-link">Products</a> 
					</li>
					<li>
						<a href="#" >Services</a>
					</li>
					<li>
						<a href="#" >Team</a>
					</li>
					<li>
						<a href="#" >Portfolio</a>
					</li>
					<li>
						<a href="#" >Blog</a>

					</li>
					<li>
						<a target="_blank" href="http://www.mywebtricks.com/">Contact</a>
					</li>
         <li style="float:right;">
           <a href="${root}user/lgn" class="nav-link">Sign In</a>
          </li>
		</ul>
	</nav>
<!-- web menu end -->
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

</html>