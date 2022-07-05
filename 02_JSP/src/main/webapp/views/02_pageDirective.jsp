<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error500.jsp"%> <!-- 에러가 발생할 경우 보여지는 페이지를 생성하여 입력하기 -->
<%@ page import="java.util.ArrayList, java.util.Date" %> <!-- import속성만 따로 기술하는 page지시어 생성 가능 -->
<!-- 단축키가 안먹으므로 import문은 직접 작성해야함 ','을 통해서 나열 가능 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>page 지시어</h1>
	
	<%
		ArrayList<String> list = new ArrayList<>(); // 기존 : 텅 빈 배열
		list.add("Servlet"); // 0번 인덱스
		list.add("JSP"); // 1번 인덱스
		
		Date today = new Date();
	%>
	
	<p>
		현재 날짜 및 시간 : <%= today %> <br>
		0번 인덱스 : <%= list.get(0) %> <br>
		1번 인덱스 : <%= list.get(1) %> <br>
		리스트 크기 : <%= list.size() %> <br>
		10번 인덱스 : <%= list.get(10) %> <br> <!-- 에러발생 => 에러가 발생할 경우 보여지는 jsp화면 따로 생성하기 -->
	</p>

</body>
</html>