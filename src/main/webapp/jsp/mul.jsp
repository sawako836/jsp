<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <!-- 
  
    두개의 숫자 파라미터의 곱 구하기

  localhost:8081/jsp/mul.jsp/mul.jsp?number=5&number2=10

  5*10의 곱 결과화면 출력 : 50

  result : 곱 결과 출력 
  
  -->
<%
	String number = request.getParameter("number");
	String number2 = request.getParameter("number2");
	
	int numberInt = Integer.parseInt(number);
	int number2Int = Integer.parseInt(number2);
	
	int sumResult = numberInt * number2Int;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result : <%=sumResult %>
</body>
</html>