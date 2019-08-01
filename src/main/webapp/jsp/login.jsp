<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>get login</h2>
	<!-- 서버로 요청을 보낼때 * 제일 중요함
		1. form태그 작성
			- action 속성 : 요청을 보낼 주소
			- method (get / post) 속성 
		2. input, select, checkbox, radio, textarea
			- 파라미터로 보내기 위해서는 위 태그의 속성중에 name 속성이 존재해야 한다.
			- name 속성의 값이 파라미터 이름
			- value 속성이 파라미터 값 ****
	-->
	<form action="/jsp/getLoginProcess.jsp" method="get">
		user id : <input type="text" name="userId" value="brown"/><br>  <!-- ctrl + alt + 방향키 -->
		user id : <input type="text" name="userId" value="brown"/><br>
		password : <input type="password" name="password" value="brown1234"/><br>
		<input type="submit" value="로그인"/> 
	<h2>post login</h2>
	</form>
</body>
</html>