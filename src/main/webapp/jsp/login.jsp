<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.4.1.min.js"></script>
</head>
<body>
   <!-- 
      서버로 요청을 보낼 때
      1. form 태그 작성
         - action : 요청을 보낼 주소
         - method (get/post)
            .get : 파라미터가 url의 쿼리스트링으로 전송된다.(?파라미터명=파라미터값&파라미터명=파라미터값)
                  url길이가 한정되어 있기 때문에 무한정 파라미터를 전송하는 것이 불가능하다.
                  일반적으로 조회시 사용
                  
            .post : 파라미터가 http request message의 body영역을 통해 전송된다.
                  (url에 파라미터가 노출되지 않는다.)
                  서버의 상태가 바뀔 때(새로운 데이터 입력/수정/삭제시) 주로 사용
      2. input, select, checkbox, radio, textarea
         - 파라미터로 보내기 위해서는 위 태그의 속성중에 name 속성이 반드시 존재해야한다.
         - name 속성의 값이 파라미터 이름
         - value 속성이 파라미터 값
    -->
      
   <form action="<%=request.getContextPath() %>/login" method="post">
      ID : <input type="text" name="userId" value="id1"/><br>
      PW : <input type="password" name="password" value="pw1"><br>
      <input type="submit" value="로그인"/>
   </form>
</body>
</html>