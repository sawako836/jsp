<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.user.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp-basicLib</title>
<%@ include file="/commonjsp/basicLib.jsp"%>
<script>
// 문서 로딩이 완료되고 나서 
$(document).ready(function(){
	
	// 사용자 정보 클릭시 이벤트 핸들러
	$('.prodTr').on('click', function(){
		
		console.log('prodTr click');
		
		// 클릭된 tr 태그의 자식태그(td)중 첫번째 자식의 텍스트 문자열
		console.log($(this).children().first().text());
		
		// input 태그에 값 설정
		$('#lprod_nm').val($(this).children().first().text());
		
		// form 태그이용 전송
		console.log('serialize : ' + $('#frm').serialize());
		
		$('#frm').submit();
	});
});
</script>
</head>

<body>
	
	<!-- header -->
	<%@ include file="/commonjsp/header.jsp" %>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<!-- left -->
				<%@ include file="/commonjsp/left.jsp" %>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">


				<div class="row">
					<div class="col-sm-8 blog-main">
						<h2 class="sub-header">제품리스트</h2>
						<div class="table-responsive">
							<table class="table table-striped">
								<tr>
									<th>제품그룹명</th>
									<th>제품그룹번호</th>
									<th>바이어이름</th>
									<th>제품아이디</th>
									<th>제품명</th>
									<th>제품가격</th>
								</tr>
								
								<c:forEach items="${prodList }" var="prod">
									<tr class="prodTr">
										<td>${prod.lprod_nm }</td>
										<td>${prod.lprod_gu }</td>
										<td>${prod.buyer_name }</td>
										<td>${prod.prod_id }</td>
										<td>${prod.prod_name }</td>
										<td>${prod.prod_cost }</td>
									</tr>
								</c:forEach>
							</table>
						</div>

						<a class="btn btn-default pull-right">제품 등록</a>

						<div class="text-center">
							<ul class="pagination">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
