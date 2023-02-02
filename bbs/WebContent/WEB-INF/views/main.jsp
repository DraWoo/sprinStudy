<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,user-scalable=yes" />
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!--css추가할때 이런식으로   -->
<%-- <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/resources/css/main.css"> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
	var checkID = $("#title").val();
$.ajax({ 
	type: "post"
	, url: "/main"
	, data: {"no" : 1, "id" : checkID}
	, dataType : "text"
	, success: function(data){
		console.log('통신결과');
		console.log(data);
	}

})
</script>
<body>
	
<%-- <c:import url="/WEB-INF/views/include/top_menu.jsp"/> --%>
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>
<!-- 게시판 미리보기 부분 -->
<input type="hidden" id ="title" name ="title" value="제목입니다"/>
<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">자유게시판</h4>
					<table class="table table-hover" id='board_list'>
						<thead>
							<tr>
								<th class="text-center w-25">글번호</th>
								<th>제목</th>
								<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">5</td>
					
								<th>제목입니다</th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html' id="title">제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
						</tbody>
					</table>
					
					<a href="${root }board/main" class="btn btn-primary">더보기</a>
				</div>
			</div>
		</div>
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">유머게시판</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center w-25">글번호</th>
								<th>제목</th>
								<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
						</tbody>
					</table>
					
					<a href="board_main.html" class="btn btn-primary">더보기</a>
				</div>
			</div>
		
		</div>
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">정치게시판</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center w-25">글번호</th>
								<th>제목</th>
								<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
						</tbody>
					</table>
					
					<a href="board_main.html" class="btn btn-primary">더보기</a>
				</div>
			</div>
		</div>
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">스포츠게시판</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center w-25">글번호</th>
								<th>제목</th>
								<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>제목입니다</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
						</tbody>
					</table>
					
					<a href="board_main.html" class="btn btn-primary">더보기</a>
				</div>
			</div>
		</div>
	</div>
</div>
	 -->
<%-- <c:import url="/WEB-INF/views/include/bottom_info.jsp"/> --%>

</body>
</html>









    