<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <!-- 
  
    두개의 숫자 파라미터를 받아 두 숫자 사이의 모든 숫자의 합을 구하는 jsp

  * 파라미터 받기 연습

  localhost:8081/jsp/jsp/sumJsp.jsp?number=1&number2=10

    화면에 1~10까지 사이에 있는 모든 숫자의 합을 화면 출력 : 55

  * number파라미터는 number2 파라미터보다 항상 작다고 가정

  result : 합의 결과 
  
  -->
  
<%
	String number = request.getParameter("number");
	String number2 = request.getParameter("number2");
	
	int numberInt = Integer.parseInt(number);
	int number2Int = Integer.parseInt(number2);
	
	int sumResult = 0;
	for(int i = numberInt; i <= number2Int; i++)
		sumResult += i;
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