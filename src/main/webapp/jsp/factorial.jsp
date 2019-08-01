<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 선언부 : 메서드나 변수를 선언 -->
<%!
	public int factorial(int fac){ // 입력받은 변수
		if(fac == 0){ // fac이 0이면 1이 나온다.
			return 1;
		}
		return factorial(fac-1) * fac; //
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%for(int i = 0; i <= 8; i++){ %>
		factorial(<%=i %>) : <%=factorial(i) %><br>
	<%} %>
</body>
</html>