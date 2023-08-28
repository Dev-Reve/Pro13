<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//1. 한글처리 (request객체 메모리 영역)
		request.setCharacterEncoding("UTF-8");
	%>
	
	<%!
		//Login2.jsp로 전달할 오류 메세지를 선언 합니다.
		String msg = "아이디를 입력하지 않았습니다. 아이디를 입력해주세요.";
	%>
	
	<%
		session.setAttribute("msg", "아이디를 입력하지 않았습니다. 아이디를 입력해주세요.");
		//2. 요청한 값 받아오기
		String userID = request.getParameter("userID");
		
		//3. 요청한 값을 조건식에서 작성하여 판단 후 응답
		//아이디를 입력하지 않았다면?
		if( userID.length() == 0 ){
	%>
			<%-- ID를 입력하지 않았다면 다시 login.jsp를 재요청(포워딩)
				forward액션태그
			 --%>
<%-- 			 <jsp:forward page="login3.jsp"> --%>
<%-- 			 	<jsp:param value="<%=msg%>" name="msg"/>			  --%>
<%-- 			 </jsp:forward> --%>
	RequestDispatcher dispatcher = request.getRequestDispatcher("login3.jsp");
							  dispatcher.forward(request, response);
			 

	<%
		}
	%>
	<h1>환영 합니다. <%=userID%>님</h1>
</body>
</html>