<%@page import="kr.or.ddit.user.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.user.repository.IUserDao"%>
<%@page import="kr.or.ddit.user.repository.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!IUserDao dao = new UserDao();%>
    <%!List<User> list = dao.getUserList();%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 1. userdao 선언
		 2. getUserList() 호출
		 3. 호출 결과(List<UserVo>)를 for loop를 통해 tr태그를 반복 생성
	--%>
	<table>
		<tr>
			<th>이름</th>
		</tr>
		<%
			for(User userVo : list){
		%>
			<tr>
				<td><%=userVo.getUserName() %></td>
			</tr>
		<%} %>
		<%-- <%for(int i = 0; i < list.size(); i++){ %>
		<tr>
			<td><%=list.get(i).getUserName() %></td>
		</tr>
		<%} %> --%>
	</table>
</body>
</html>