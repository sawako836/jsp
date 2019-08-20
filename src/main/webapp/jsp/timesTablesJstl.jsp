<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 스크립틀릿, 표현식 --> jstl, el --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	td { border : 1px solid pink;
	}
</style>
</head>
<body>
	<h2>jstl times tables</h2>
	<table border="1">
<c:forEach var="i" begin="1" end="9">
        <tr>
        <c:forEach var="j" begin="2" end="9">
            <td>${j } x ${i } = ${i*j }</td>
        </c:forEach>
        </tr>
</c:forEach>
</table>
</body>
</html>




