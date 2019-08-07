<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>파라미터 사이의 값을 합으로 계산</h2>
<form action="<%=request.getContextPath() %>/sumCalculation" method="post">
start : <input type="text" name="start" value="1"/><br>
end : <input type="text" name="end" value="5"/><br>
<input type="submit" value="전송"/>
</form>
</body>
</html>