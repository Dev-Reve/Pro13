<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include1.jsp</title>
</head>
<body>
	안녕하세요. 쇼핑몰 중심 JSP 시작입니다!!!
	<br>
		<%-- include 액션태그 코드를 웹애플리케이션서버가 만나면 page속성에 적은 서버페이지를 재요청해서 보여줍니다. --%>
		<%-- 재요청시 request객체 메모리를 duke_image.jsp에 공유할 수 있기 떄문에 request객체 메모리에 바인딩 후 공유합니다.--%>
		<%-- include 액션태그에 의해 duke_image.jsp재요청시 request객체에 요청하는 값을 추가하여 바인딩할떄 사용되는 태그가
			 jsp:param액션태그이다.
		 --%>
		<jsp:include page="duke_image.jsp" flush="true">		
			<jsp:param value="duke" name="name"/>
			<jsp:param value="duke.png" name="imgName"/>
		</jsp:include>
		
	
	<br>
	안녕하세요. 쇼핑몰 중심 JSP 끝 부분 입니다.
</body>
</html>