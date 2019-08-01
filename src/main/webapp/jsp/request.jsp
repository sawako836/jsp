<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	// jsp에 내장되어있는 기본 객체가 존재 : request, response]
	
%>
<body>
	request.getLocalAddr() local ip : <%= request.getLocalAddr() %><br>
	request.getRemoteAddr() 클라이언트 ip : <%= request.getRemoteAddr() %><br>
	request.getContentLength() 요청정보길이 : <%= request.getContentLength() %><br>
	request.getCharacterEncoding() 요청정보 인코딩 : <%= request.getCharacterEncoding() %><br>
	request.getContentType() 요청정보 컨텐트 타입 : <%= request.getContentType() %><br>
	request.getProtocol() 요청 프로토콜 : <%= request.getProtocol() %><br>
	request.getMethod() 요청 메서드 : <%= request.getMethod() %><br>
	request.getRequestURI() 요청 URI : <%= request.getRequestURI() %><br>
	request.getContextPath() context path : <%= request.getContextPath() %><br>
	request.getServerName() 서버이름 : <%= request.getServerName() %><br>
	request.getServerPort() 서버포트 : <%= request.getServerPort() %><br>
</body>
</html>