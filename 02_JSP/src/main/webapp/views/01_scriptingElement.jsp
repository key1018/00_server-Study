<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>스트립팅 원소</h1>
	
	<%
		// 스트립틀릿 : 일반적인 자바 코드 작성 (변수 선언 및 초기화, 제어문 등등)
		int sum = 0; 
		for(int i = 0; i <= 100; i++){
			sum += i;
		}
		
		System.out.println("sum의 결과 : " + sum);
	%>
	
	<p>
		화면에 출력하고자 한다면 
		스트립틀릿 및 표현식(출력식)을 이용해서 출력 가능 <br>
		스트립틀릿 : <% out.print(sum);%> <br>
		표현식(출력식) : <%=sum %>
	</p>
	
	<%
		// 스트립틀립
		String[] arr = {"홍길동", "김자식", "이말순", "문상훈"};
	%>
	
	<!-- 
		&lt;%= 자바코드 %&gt; 의 경우 
	 	내부적으로  &lt;% out.println(name.length) %&gt; 로 만들어짐  
	 -->
	 
	 <h5>배열의 길이 : <%=arr.length %></h5>
	 <h5>배열에 담긴 값 : <%=String.join(", ", arr) %></h5>
	 
	 <h4>반복문을 이용해서 html요소를 만들어보기</h4>
	 
	 <ol>
	 	<% for(int i = 0; i<arr.length; i++) { %>
	 	<li> <%=arr[i] %> </li>
	 	<% } %>
	 </ol>
	 
	 <%! // 선언문을 통해서 메소드 생성 가능
	 	public void test(){
	 		}
	  %>
	  
	  <%test(); %>
	  
</body>
</html>