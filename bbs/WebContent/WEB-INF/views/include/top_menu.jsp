<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
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
	//메뉴클릭
	$("#menutoggle").click(function() {
		$('.xs-menu').toggleClass('displaynone');

		});
	//add active class on menu
	$('ul li').click(function(e) {
		e.preventDefault();
		$('li').removeClass('active');
		$(this).addClass('active');
	});
//drop down menu	
		$(".drop-down").hover(function() {
			$('.mega-menu').addClass('display-on');
		});
		$(".drop-down").mouseleave(function() {
			$('.mega-menu').removeClass('display-on');
		});

});

</script>
<div class="container">
		<header>
	        <div style="text-align:center;margin-top:25px;font-weight:bold;texxxt-decoration:none;">
	  			Welcome <a href="https://themeshook.com/" px;target="_blank">to Dragon Blog</a>
			</div>
				<h1>Dragon Blog</h1>
		</header>
			<div class="xs-menu-cont">
			<a id="menutoggle"><i class="fa fa-align-justify"></i> </a>
				<nav class="xs-menu displaynone">
					<ul>
						<li class="active">
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
			<nav class="menu">
				<ul>
					<li class="active">
						<a href="#">Home</a>
					</li>
					<li class="drop-down">
						<a href="#">Products</a>
					 
						<div class="mega-menu fadeIn animated">
							<div class="mm-6column">
								<span class="left-images">
								<img  src="https://4.bp.blogspot.com/-faF-AemPFUM/U4ryP7pQRsI/AAAAAAAAEvA/fZ-hskCSln4/s1600/Magento%2Bthemes.jpg">
								<p>Most Popular Styles </p>
				</span>
								<span class="categories-list">
							<ul>
							<span>Computer</span>
								<li>Desktops</li>
								<li>Laptops</li>
								<li>Tablets</li>
								<li>Monitors</li>
								<li>Networking Printers</li>
								<li>Scanners</li>
								<li>Jumpers & Cardigans</li>
								<li><a class="mm-view-more" href="#">View more →</a></li>
							</ul>
						</span>
							
							</div>
							<div class="mm-3column">
						<span class="categories-list">
						<ul>
							 <span>TV & Video</span>
								<li>LED TVs
								<li>Plasma TVs
								<li>3D TVs
								<li>DVD & Blu-ray Players
								<li>Home Theater Systems
								<li>Cell Phones
								<li>Apple iPhone
								<li><a class="mm-view-more" href="#">View more →</a></li>
							</ul>
						</span>							
							</div>
							<div class="mm-3column">
								<span class="categories-list">
						<ul>
							<span>Car Electronics</span>
							<li>GPS & Navigation</li>
							<li>In-Dash Stereos</li>
							<li>Speakers</li>
							<li>Subwoofers</li>
							<li>Amplifiers</li>
						    <li>MP3 Players</li>
							<li>iPods</li>
						   	<li><a class="mm-view-more" href="#">View more →</a></li>
						</ul>
					</span>
						</div>
					</div>
			 
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
						<a target="_blank" href="http://www.mywebtricks.com/">Contact</a>
					</li>
         <li style="float:right;">
           <a href="http://www.mywebtricks.com/">Go my Blog</a>
          </li>

				</ul>
			</nav>
		</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<body>

</body>
</html>