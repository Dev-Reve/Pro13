<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
</head>
<body>

	<%
		//상황1. 최초로 login2.jsp를 요청하면 request영역에는 null값이 저장되어 있으므로 판단해서 경고메세지를 보여주지 말자
		//상황2. login2.jsp화면에서 id를 입력하지 않고 result2.jsp로 갔다가 다시 login2.jsp로 재요청해서 오는 상황
		//		이 상황에서는 경고메세지 <jsp:param name = "msg" value = "경고메세지" /> 
		//      액션태그에 설정한 경고메세지 값을 request에 꺼내서 사용
		String msg = (String)session.getAttribute("msg");//"아이디를 입력하지 않았습니다. 아이디를 입력해주세요.";
		
		if( msg!= null){
			out.println("<h1>" + msg + "</h1>");	
		}
	%>
	<%-- 로그인 요청 화면에서 ID와 비밀번호를 입력한 후 <form>태그의 acttion속성에 로그인요청할 result.jsp주소를 작성해서 요청. --%>
	<form action="result3.jsp" method = "post">
		이이디 : <input type = "text" name = "userID"><br>
		비밀번호 : <input type = "password" name = "userPW"><br>
		
		<%-- 전송 버튼으로 만들 수 있는 경우  --%>
		<input type = "submit" value = "로그인">
<!-- 		<button>로그인</button> -->
<!-- 		<input type = "image" src="s.png"/> -->
		
		<input type = "reset" value = "다시 입력">
	
	</form>
</body>
</html>