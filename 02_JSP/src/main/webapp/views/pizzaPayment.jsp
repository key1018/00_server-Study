<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- setAttribute에 담긴 데이터를 getAttribute를 이용해서 바로 뽑기 --> 
    <%
    	String userName = (String)request.getAttribute("userName");
		String phone = (String)request.getAttribute("phone");
		String address = (String)request.getAttribute("address");
		String message = (String)request.getAttribute("message");
		String pizza = (String)request.getAttribute("pizza");
		String[] toppings = (String[])request.getAttribute("toppings");
		String[] sides = (String[])request.getAttribute("sides");
		int price = (int)request.getAttribute("price");
		String payment = (String)request.getAttribute("payment");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	
	<h1>주문 내역</h1>
	
	<h4>[ 주문자 정보 ]</h4>
	
	<p>성함 : <%=userName %></p>
	<p>전화번호 : <%=phone %></p>
	<p>주소 : <%=address %></p>
	
	<% if(message.equals("")) { %>
	<p>요청사항 : 없음 </p>
	<% } else { %>
	<p>요청사항 : <%=message %></p>
	<% } %>	
	
	<hr>
	
	<h4>[ 주문 정보 ]</h4>
	
	<p>피자 : <%=pizza %></p>
	
	<% if(toppings == null) { %>
	<p>토핑 : 없음 </p>
	<% } else { %>
	<p>토핑 : <%= String.join(", ", toppings) %></p>
	<% } %>
	
	<% if(sides == null) { %>
	<p>사이드 : 없음 </p>
	<% } else { %>
	<p>사이드 : <%=String.join(", ", sides) %></p>
	<% } %>
	
	<h2>총 금액 : <%=price %></h2>
	<h2>결제방식 : <%=payment.equals("card") ? "카드" : "현금" %></h2>
	
	<h2 style=color:red;>주문해주셔서 감사합니다. 맛있게 드세요~!</h2>

</body>
</html>