<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>include 지시어</h1>
	
	<p>
		매페이지마다 공통적으로 존재해야되는 요소들을 별도의 jsp로 만들고 <br>
		매페이지마다 include지시어를 이용해서 포함시켜서 보여지도록 설정	
	</p>
	
		1부터 100까지의 총 합계 : &lt;%=sum %> <br>
	 	배열에 담긴 값 : &lt;%=String.join(", ", arr) %> <br>
	 	=> include로 포함 전 위치에 입력했으므로 오류 발생함 <br>
	
	<!-- include 지시어 만들기 -->
	
	<%@ include file="01_scriptingElement.jsp" %>
	<!-- 
		include 지시어를 입력하는 순간 해당 파일에 있는 전체 html요소들이 복제되되어서 include 지시어 자리를 차지하게됨
		페이지마다 동일하게 보여져야하는 menu바, Header바, footer바 같은 경우 include 지시어를 활용하면 됨
	 -->
	 
	 <p>
	 	현재 포함하고 있는 JSP상에 존재하는 변수를 현재 이 페이지에서 쓸 수 있음 <br>
	 	단, 포함한 후의 위치에 표시해야됨 => 포함 전 위치에 사용하면 오류 발생 <br><br>
	 	
	 	1부터 100까지의 총 합계 : <%=sum %> <br>
	 	배열에 담긴 값 : <%=String.join(", ", arr) %>
	 </p>

</body>
</html>