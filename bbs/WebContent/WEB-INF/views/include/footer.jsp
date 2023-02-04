<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Google -Fonts-->
<link
	href='https://fonts.googleapis.com/css?family=Sintony:400,700&subset=latin-ext'
	rel='stylesheet' type='text/css'>
<!--Font-awsome-->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/footer.css">

<title>Insert title here</title>
</head>
<body>
    <!-- ==============================================
    FOOTER
    =============================================== --> 
    
    <footer id="main-footer" class="add-padding border-top-color2">
    
      <div class="container">

        <p><a href="${pageContext.request.contextPath}/view/main.jsp" target="_blank">Welcome To My Blog</a></p><br>
      
        <ul class="social-links text-center">
          <li><a href="https://twitter.com/korenlc" target="_blank"><i class="fa fa-twitter fa-fw"></i></a></li>
          <li><a href="https://plus.google.com/u/0/+KLCohen/posts/p/pub" target="_blank"><i class="fa fa-google-plus fa-fw"></i></a></li>
          <li><a href="https://www.linkedin.com/in/korenlesliecohen" target="_blank"><i class="fa fa-linkedin fa-fw"></i></a></li>
        </ul>
      
        <p class="text-center">&copy; 2023 - DragonWoo Blog</p>
      
      </div>
      
    </footer>
</body>
</html>