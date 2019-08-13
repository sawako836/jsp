<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/elScope" method="post">
request : <input type="text" name="req" value="brown"/><br>
session : <input type="text" name="session" value="cony"/><br>
application : <input type="text" name="application" value="sally"/><br>
<input type="submit" value="전송"/>
</form>

<h2>el scope test</h2>
<%
	// pageContext / request / session / application
	pageContext.setAttribute("attr", "page_attr"); // 범위가 가장 작은 속성 순서대로
	request.setAttribute("attr", "request_attr");
	session.setAttribute("attr", "session_attr");
	application.setAttribute("attr", "application_attr");
%>
	pageScope : ${pageScope.attr}<br>
	requestScope : ${requestScope.attr}<br>
	sessionScope : ${sessionScope.attr}<br>
	applicationScope : ${applicationScope.attr}<br><br>

el : ${attr}<br><br>

<%
	pageContext.removeAttribute("attr", pageContext.PAGE_SCOPE);
%>
el : ${attr}<br>

<%
	pageContext.removeAttribute("attr", pageContext.REQUEST_SCOPE);
%>
el : ${attr}<br>

<%
	pageContext.removeAttribute("attr", pageContext.SESSION_SCOPE);
%>
el : ${attr}<br>
</body>
</html>