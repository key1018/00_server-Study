<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>* JSP(Java Server Page)</h1>
	
	<p>
		jsp란? html내에서 자바코드를 쓸 수 있는 "자바언어"로 <br>
		Servlet(자바코드내)에서 응답화면을 구현했던 복잡함을 보다 간단하게 해결 가능 <br>
		=> JSP의 가장 큰 장점은 Servlet에서는 요청처리(비즈니스로직)에만 집중하고 <br>
		응답화면 만들기(프레젠테이션로직)는 jsp에서 집중하게끔 분리할 수 있는 것 <br>
	</p>
	
	<hr>
	
	<h2>* JSP Element 표현법</h2>
	
	<h3>1. JSP 스트립팅 원소(Scripting Element)</h3>
	<p> jsp페이지내에서 자바코드를 기술할 수 있게 해주는 기술 </p>

	<ol>
		<li>
			선언문 : &lt;%! 자바코드 %&gt;<br>
			멤버변수와 메소드 정의시 사용 
		</li>
		<li>
			스크립틀릿 :&lt;% 자바코드 %&gt;<
			JSP에서 자바코드를 기술하기 위한 제일 기본적인 표현법
		</li>
		<li>
			표현식(출력식) : &lt;%= 자바코드 %&gt; <br>
			자바에서의 값(변수 또는 메소드 호출)을 화면상에 출력하기 위해서 사용
		</li> 
	</ol>	
	
	<a href="views/01_scriptingElement.jsp">views</a>
	
	<h3>
		2. 지시어 (Directive) <br>
		&lt;%@ 	 page|include|taglib 속성="속성값" 속성="속성값" %&gt; 
	</h3>
	
	<p>
	해당 jsp페이지 전체에 영향을 미치는 정보들 기술 할 때 쓰임
	</p>
	
	<ol>
		<li> page 지시어 : 현재 jsp페이지를 처리하는데 필요한 각종 속성들을 기술 <br>
			- language : 사용할 언어 유형을 지정 <br>
			- contentType : 해당 페이지의 형식, 문자셋 지정 <br>
			- pageEncoding : jsp 페이지내에 기록된 자바코드의 인코딩 방식 지정("UTF-8") <br>
			- import : 자바에서의 import와 동일 <br>
			- errorPage : 해당 jsp에서 오류 발생했을 경우 보여줄 에러페이지 경로 지정 <br><br>
			
			<a href="views/02_pageDirective.jsp">View detail</a>
		</li>
		<li>include 지시어 : 현재 jsp에 또다른 jsp를 포함시키고자 할 떄 사용하는 지시어 <br>
			<a href="views/03_includeDirective.jsp">View detail</a>
			
		</li>
		<li>taglib 지시어 : jsp 기능을 좀 더 확장시킬 수 있는 추가적인 라이브러리를 등록하는 구문</li>	
	</ol>
	
	<hr>
	
	<h2>피자주문페이지(jsp) --> 주문요청 --> 주문요청을 받아서 처리해주는 Servlet --> 피자결제페이지(응답jsp)</h2>
	<a href="views/pizzaOrderForm.jsp">피자 주문 페이지</a>
	
	<h2>피자주문페이지(jsp) --> 주문요청 --> 주문요청을 받아서 처리해주는 Servlet --> 피자결제페이지(응답jsp)</h2>
	<a href="views/pizzaPayment.jsp">피자 주문 페이지</a>
	
	<h2>메뉴파 샘플 페이지1</h2>
	<a href="views/menubar.jsp">메뉴파 샘플 페이지1</a>
	
	<h2>메뉴파 샘플 페이지2</h2>
	<a href="views/menubar2.jsp">메뉴파 샘플 페이지2</a>
	
	<h2>메뉴파 샘플 페이지2</h2>
	<a href="views/test_menubar.jsp">메뉴파 샘플 페이지2</a>
		
	<h2>오픈페이지 샘플1</h2>
	<a href="views/openPage1.jsp">오픈페이지 샘플1</a>
			
	<h2>오픈페이지 샘플2</h2>
	<a href="views/openPage2.jsp">오픈페이지 샘플2</a>
			
	<h2>오픈페이지 샘플3</h2>
	<a href="views/openPage3.jsp">오픈페이지 샘플3</a>
	
	<h2>웹페이지 샘플</h2>
	<a href="views/webPage.jsp">웹페이지 샘플</a>
	
</body>
</html>