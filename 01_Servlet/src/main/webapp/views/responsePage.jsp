<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h2{color:red}
	#name{color:orange}
	#age{color:blue}
	#city{color:yellow}
	#height{color:purple}
	#gender{color:green}
</style>
</head>
<body>
	<!-- 3. 응답데이터 받아서 전달받은 값 보여주기 -->
	
	<!-- 
		응답페이지 : attribute
		request.setAttribute를 통해 전달받은 값을 담는 메소드 생성
		스트립틀릿을 통해 자바코드를 사용할 수 있는 영역을 생성하여 request.getAttribute를 통해 전달받은 값을 꺼내오기
	 -->
	 
	 <%
		// 스크립틀릿 == html문서 내에서 자바코드를 쓸 수 있는 영역
		// request.getAttribute("키") : Object (그에 해당하는 value값)
		String name = (String)request.getAttribute("name"); // 강제형변환을 통해 object값을 String 변수에 담기
		int age = (int)request.getAttribute("age");
		String city = (String)request.getAttribute("city");
		String gender = (String)request.getAttribute("gender");
		String[] foods = (String[])request.getAttribute("foods");
	%>
	
	<h2>개인정보 응답화면 - POST</h2>
	
	<span id="name"><%=name %></span>님은 
	<span id="age"><%=age %></span>살이며,
	<span id="city"><%=city %></span>에 사는
	<span id="height"><%= (double)request.getAttribute("height") %></span>cm 이고 <br>
	
	성별은
		<% if(gender == null) { %>
		선택하지 않았습니다. <br> <!-- case1 -->
		<% } else if (gender.equals("M")) { %>
		<span id="gender">남자</span>입니다. <br> <!-- case2 -->
		<% } else { %>
		<span id="gender">여자</span>입니다. <br> <!-- case3 -->
		<% } %>
	
	좋아하는 음식은
		<% if(foods == null) { %>
			없습니다. <br> <!-- case1 -->	 
		<% } else { %> <!-- case2 --> 
			<ul>
			<% for(int i = 0; i < foods.length; i++) { %>
			<li> <%= foods[i] %> </li>
			<% } %>
			</ul>
		<% } %>
		
</body>
</html>