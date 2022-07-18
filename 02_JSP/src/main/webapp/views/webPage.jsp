<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹문서상세구조</title>

<link href="https://fonts.googleapis.com/css2?family=Acme&family=Anton&family=Archivo+Black&family=Koulen&family=Oswald:wght@500&family=Roboto+Condensed:wght@700&family=Sriracha&display=swap" rel="stylesheet"><link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/normalize.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">		
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/style-dustu.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/pater.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/testGrid.css" />
		<script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this demo in a modern browser that supports CSS Variables.");</script>		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>

<body>


  <div class="wrap">
		<div class="header">
			<!-- 로그인바 -->
			<div>
				<div class="myPage">
						<p>여기에 로그인바<p>
				</div>
			</div>
			<!-- 메뉴바 -->
			<nav class="demo-dust menu menu--dustu">
					
					<a class="menu__item" href="#">
						<span class="menu__item-name">Restaurant</span>
						<span class="menu__item-label">View all our Restaurant</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Meal Kit</span>
						<span class="menu__item-label">We can get to deliver to your home</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">MZ Pick</span>
						<span class="menu__item-label">Recently popular restaurant of MZ</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Editor Pick</span>
						<span class="menu__item-label">Read what others choice</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Event</span>
						<span class="menu__item-label">Read what others say</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Contact</span>
						<span class="menu__item-label">Get in touch and find us</span>
					</a>
					
			</nav>


			<!-- 공지사항 -->
			<div class="menu-footer_up" style="float: none;">
				<h2 style="font-size: 25px">
					<span class="fas fa-phone"></span>
					<span>1234-5678 </span>
				</h2>
				<p class="font_basic">오전 9시~오후 6시 운영/주말,휴일 휴무</p>

			</div>

			<div class="menu-footer_down font_basic">
				<p>
					- 전화 전 <a href="#">자주 묻는 질문</a>을 확인하세요.
				</p>
				<p>
					- <a href="#">1:1문의</a>를 통해서도 상담이 가능합니다.
				</p>
				<p>- 상품 문의는 각 상품 Q&A를 이용하세요.</p>

				<br> 
				<a href="" class="plain-btn btn">회원후기</a> 
				<a href="" class="plain-btn btn">적립금</a> 
				<a href="" class="plain-btn btn">공지사항</a>
				
			<br><br>
			
			</div>
				
		</div>

		<div class="top-bar">
      <div class="search">
        <form class="search__form">
          <label for="search" class="search__label">Search</label>
          <input type="search" id="search" name="search" class="search__input" placeholder="What do you want?" />
        </form>
      </div>
      <div class="profile">
        <div class="profile__icon">N</div>
      </div>
    </div>
    
    <!-- 메인페이지
     여여기에 담기 -->
    <div class="main" role="main">
      
         
		<div> <!-- 메인 샘플 시작 -->
		<br>
	<h1>피자 주문 페이지<h1>
	
	<h2>오늘의 날짜</h2>

	<form>

      <fieldset>
         <legend>주문자정보</legend>

         <table>
            <tr>
               <th>이름</th>
               <td><input type="text" name="userName" required></td>
            </tr>
            <tr>
               <th>전화번호</th>
               <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
               <th>주소</th>
               <td><input type="text" name="address" required></td>
            </tr>
            <tr>
               <th>요청사항</th>
               <td><textarea name="message"></textarea></td>
            </tr>
         </table>
      </fieldset>
      <br>
      <fieldset>
         <legend>주문정보</legend>

         <table>
            <tr>
               <th>피자</th>
               <td>
                  <select name="pizza">
                     <option>콤비네이션피자</option>
                     <option>치즈피자</option>
                     <option>포테이토피자</option>
                     <option>고구마피자</option>
                     <option>불고기피자</option>
                  </select>
               </td>
            </tr>
            <tr>
               <th>토핑</th>
               <td>
                  <input type="checkbox" name="topping" value="고구마무스"> 고구마무스
                  <input type="checkbox" name="topping" value="콘크림무스"> 콘크림무스
                  <input type="checkbox" name="topping" value="파인애플토핑">파인애플토핑
                  <br>
                  <input type="checkbox" name="topping" value="치즈바이트"> 치즈바이트
                  <input type="checkbox" name="topping" value="치즈크러스트"> 치즈크러스트
                  <input type="checkbox" name="topping" value="치즈토핑">치즈토핑
               </td>
            </tr>
            <tr>
               <th>사이드</th>
               <td>
                  <input type="checkbox" name="side" value="콜라"> 콜라
                  <input type="checkbox" name="side" value="사이다"> 사이다
                  <input type="checkbox" name="side" value="갈릭소스"> 갈릭소스
                  <br>
                  <input type="checkbox" name="side" value="핫소스"> 핫소스
                  <input type="checkbox" name="side" value="피클"> 피클
                  <input type="checkbox" name="side" value="파마산치즈가루"> 파마산치즈가루
               </td>
            </tr>
            <tr>
               <th>결제방식</th>
               <td>
                  <input type="radio" name="payment" value="card" checked> 카드결제 
                  <input type="radio" name="payment" value="cash"> 현금결제
               </td>
            </tr>
         </table>

      </fieldset>

      <br>

      <input type="submit" value="주문"> 
      <input type="reset">

   </form>
   
   </div> <!-- 메인 샘플 끝 -->
   
   		<div> <!-- 메인 샘플 시작 -->
		<br>
	<h1>피자 주문 페이지<h1>
	
	<h2>오늘의 날짜</h2>

	<form>

      <fieldset>
         <legend>주문자정보</legend>

         <table>
            <tr>
               <th>이름</th>
               <td><input type="text" name="userName" required></td>
            </tr>
            <tr>
               <th>전화번호</th>
               <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
               <th>주소</th>
               <td><input type="text" name="address" required></td>
            </tr>
            <tr>
               <th>요청사항</th>
               <td><textarea name="message"></textarea></td>
            </tr>
         </table>
      </fieldset>
      <br>
      <fieldset>
         <legend>주문정보</legend>

         <table>
            <tr>
               <th>피자</th>
               <td>
                  <select name="pizza">
                     <option>콤비네이션피자</option>
                     <option>치즈피자</option>
                     <option>포테이토피자</option>
                     <option>고구마피자</option>
                     <option>불고기피자</option>
                  </select>
               </td>
            </tr>
            <tr>
               <th>토핑</th>
               <td>
                  <input type="checkbox" name="topping" value="고구마무스"> 고구마무스
                  <input type="checkbox" name="topping" value="콘크림무스"> 콘크림무스
                  <input type="checkbox" name="topping" value="파인애플토핑">파인애플토핑
                  <br>
                  <input type="checkbox" name="topping" value="치즈바이트"> 치즈바이트
                  <input type="checkbox" name="topping" value="치즈크러스트"> 치즈크러스트
                  <input type="checkbox" name="topping" value="치즈토핑">치즈토핑
               </td>
            </tr>
            <tr>
               <th>사이드</th>
               <td>
                  <input type="checkbox" name="side" value="콜라"> 콜라
                  <input type="checkbox" name="side" value="사이다"> 사이다
                  <input type="checkbox" name="side" value="갈릭소스"> 갈릭소스
                  <br>
                  <input type="checkbox" name="side" value="핫소스"> 핫소스
                  <input type="checkbox" name="side" value="피클"> 피클
                  <input type="checkbox" name="side" value="파마산치즈가루"> 파마산치즈가루
               </td>
            </tr>
            <tr>
               <th>결제방식</th>
               <td>
                  <input type="radio" name="payment" value="card" checked> 카드결제 
                  <input type="radio" name="payment" value="cash"> 현금결제
               </td>
            </tr>
         </table>

      </fieldset>

      <br>

      <input type="submit" value="주문"> 
      <input type="reset">

   </form>
   
   </div> <!-- 메인 샘플 끝 -->
      		<div> <!-- 메인 샘플 시작 -->
		<br>
	<h1>피자 주문 페이지<h1>
	
	<h2>오늘의 날짜</h2>

	<form>

      <fieldset>
         <legend>주문자정보</legend>

         <table>
            <tr>
               <th>이름</th>
               <td><input type="text" name="userName" required></td>
            </tr>
            <tr>
               <th>전화번호</th>
               <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
               <th>주소</th>
               <td><input type="text" name="address" required></td>
            </tr>
            <tr>
               <th>요청사항</th>
               <td><textarea name="message"></textarea></td>
            </tr>
         </table>
      </fieldset>
      <br>
      <fieldset>
         <legend>주문정보</legend>

         <table>
            <tr>
               <th>피자</th>
               <td>
                  <select name="pizza">
                     <option>콤비네이션피자</option>
                     <option>치즈피자</option>
                     <option>포테이토피자</option>
                     <option>고구마피자</option>
                     <option>불고기피자</option>
                  </select>
               </td>
            </tr>
            <tr>
               <th>토핑</th>
               <td>
                  <input type="checkbox" name="topping" value="고구마무스"> 고구마무스
                  <input type="checkbox" name="topping" value="콘크림무스"> 콘크림무스
                  <input type="checkbox" name="topping" value="파인애플토핑">파인애플토핑
                  <br>
                  <input type="checkbox" name="topping" value="치즈바이트"> 치즈바이트
                  <input type="checkbox" name="topping" value="치즈크러스트"> 치즈크러스트
                  <input type="checkbox" name="topping" value="치즈토핑">치즈토핑
               </td>
            </tr>
            <tr>
               <th>사이드</th>
               <td>
                  <input type="checkbox" name="side" value="콜라"> 콜라
                  <input type="checkbox" name="side" value="사이다"> 사이다
                  <input type="checkbox" name="side" value="갈릭소스"> 갈릭소스
                  <br>
                  <input type="checkbox" name="side" value="핫소스"> 핫소스
                  <input type="checkbox" name="side" value="피클"> 피클
                  <input type="checkbox" name="side" value="파마산치즈가루"> 파마산치즈가루
               </td>
            </tr>
            <tr>
               <th>결제방식</th>
               <td>
                  <input type="radio" name="payment" value="card" checked> 카드결제 
                  <input type="radio" name="payment" value="cash"> 현금결제
               </td>
            </tr>
         </table>

      </fieldset>

      <br>

      <input type="submit" value="주문"> 
      <input type="reset">

   </form>
   
   </div> <!-- 메인 샘플 끝 -->
   		<div> <!-- 메인 샘플 시작 -->
		<br>
	<h1>피자 주문 페이지<h1>
	
	<h2>오늘의 날짜</h2>

	<form>

      <fieldset>
         <legend>주문자정보</legend>

         <table>
            <tr>
               <th>이름</th>
               <td><input type="text" name="userName" required></td>
            </tr>
            <tr>
               <th>전화번호</th>
               <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
               <th>주소</th>
               <td><input type="text" name="address" required></td>
            </tr>
            <tr>
               <th>요청사항</th>
               <td><textarea name="message"></textarea></td>
            </tr>
         </table>
      </fieldset>
      <br>
      <fieldset>
         <legend>주문정보</legend>

         <table>
            <tr>
               <th>피자</th>
               <td>
                  <select name="pizza">
                     <option>콤비네이션피자</option>
                     <option>치즈피자</option>
                     <option>포테이토피자</option>
                     <option>고구마피자</option>
                     <option>불고기피자</option>
                  </select>
               </td>
            </tr>
            <tr>
               <th>토핑</th>
               <td>
                  <input type="checkbox" name="topping" value="고구마무스"> 고구마무스
                  <input type="checkbox" name="topping" value="콘크림무스"> 콘크림무스
                  <input type="checkbox" name="topping" value="파인애플토핑">파인애플토핑
                  <br>
                  <input type="checkbox" name="topping" value="치즈바이트"> 치즈바이트
                  <input type="checkbox" name="topping" value="치즈크러스트"> 치즈크러스트
                  <input type="checkbox" name="topping" value="치즈토핑">치즈토핑
               </td>
            </tr>
            <tr>
               <th>사이드</th>
               <td>
                  <input type="checkbox" name="side" value="콜라"> 콜라
                  <input type="checkbox" name="side" value="사이다"> 사이다
                  <input type="checkbox" name="side" value="갈릭소스"> 갈릭소스
                  <br>
                  <input type="checkbox" name="side" value="핫소스"> 핫소스
                  <input type="checkbox" name="side" value="피클"> 피클
                  <input type="checkbox" name="side" value="파마산치즈가루"> 파마산치즈가루
               </td>
            </tr>
            <tr>
               <th>결제방식</th>
               <td>
                  <input type="radio" name="payment" value="card" checked> 카드결제 
                  <input type="radio" name="payment" value="cash"> 현금결제
               </td>
            </tr>
         </table>

      </fieldset>

      <br>

      <input type="submit" value="주문"> 
      <input type="reset">

   </form>
   
   </div> <!-- 메인 샘플 끝 -->
   
   		<div> <!-- 메인 샘플 시작 -->
		<br>
	<h1>피자 주문 페이지<h1>
	
	<h2>오늘의 날짜</h2>

	<form>

      <fieldset>
         <legend>주문자정보</legend>

         <table>
            <tr>
               <th>이름</th>
               <td><input type="text" name="userName" required></td>
            </tr>
            <tr>
               <th>전화번호</th>
               <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
               <th>주소</th>
               <td><input type="text" name="address" required></td>
            </tr>
            <tr>
               <th>요청사항</th>
               <td><textarea name="message"></textarea></td>
            </tr>
         </table>
      </fieldset>
      <br>
      <fieldset>
         <legend>주문정보</legend>

         <table>
            <tr>
               <th>피자</th>
               <td>
                  <select name="pizza">
                     <option>콤비네이션피자</option>
                     <option>치즈피자</option>
                     <option>포테이토피자</option>
                     <option>고구마피자</option>
                     <option>불고기피자</option>
                  </select>
               </td>
            </tr>
            <tr>
               <th>토핑</th>
               <td>
                  <input type="checkbox" name="topping" value="고구마무스"> 고구마무스
                  <input type="checkbox" name="topping" value="콘크림무스"> 콘크림무스
                  <input type="checkbox" name="topping" value="파인애플토핑">파인애플토핑
                  <br>
                  <input type="checkbox" name="topping" value="치즈바이트"> 치즈바이트
                  <input type="checkbox" name="topping" value="치즈크러스트"> 치즈크러스트
                  <input type="checkbox" name="topping" value="치즈토핑">치즈토핑
               </td>
            </tr>
            <tr>
               <th>사이드</th>
               <td>
                  <input type="checkbox" name="side" value="콜라"> 콜라
                  <input type="checkbox" name="side" value="사이다"> 사이다
                  <input type="checkbox" name="side" value="갈릭소스"> 갈릭소스
                  <br>
                  <input type="checkbox" name="side" value="핫소스"> 핫소스
                  <input type="checkbox" name="side" value="피클"> 피클
                  <input type="checkbox" name="side" value="파마산치즈가루"> 파마산치즈가루
               </td>
            </tr>
            <tr>
               <th>결제방식</th>
               <td>
                  <input type="radio" name="payment" value="card" checked> 카드결제 
                  <input type="radio" name="payment" value="cash"> 현금결제
               </td>
            </tr>
         </table>

      </fieldset>

      <br>

      <input type="submit" value="주문"> 
      <input type="reset">

   </form>
   
   </div> <!-- 메인 샘플 끝 -->
   		<div> <!-- 메인 샘플 시작 -->
		<br>
	<h1>피자 주문 페이지<h1>
	
	<h2>오늘의 날짜</h2>

	<form>

      <fieldset>
         <legend>주문자정보</legend>

         <table>
            <tr>
               <th>이름</th>
               <td><input type="text" name="userName" required></td>
            </tr>
            <tr>
               <th>전화번호</th>
               <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
               <th>주소</th>
               <td><input type="text" name="address" required></td>
            </tr>
            <tr>
               <th>요청사항</th>
               <td><textarea name="message"></textarea></td>
            </tr>
         </table>
      </fieldset>
      <br>
      <fieldset>
         <legend>주문정보</legend>

         <table>
            <tr>
               <th>피자</th>
               <td>
                  <select name="pizza">
                     <option>콤비네이션피자</option>
                     <option>치즈피자</option>
                     <option>포테이토피자</option>
                     <option>고구마피자</option>
                     <option>불고기피자</option>
                  </select>
               </td>
            </tr>
            <tr>
               <th>토핑</th>
               <td>
                  <input type="checkbox" name="topping" value="고구마무스"> 고구마무스
                  <input type="checkbox" name="topping" value="콘크림무스"> 콘크림무스
                  <input type="checkbox" name="topping" value="파인애플토핑">파인애플토핑
                  <br>
                  <input type="checkbox" name="topping" value="치즈바이트"> 치즈바이트
                  <input type="checkbox" name="topping" value="치즈크러스트"> 치즈크러스트
                  <input type="checkbox" name="topping" value="치즈토핑">치즈토핑
               </td>
            </tr>
            <tr>
               <th>사이드</th>
               <td>
                  <input type="checkbox" name="side" value="콜라"> 콜라
                  <input type="checkbox" name="side" value="사이다"> 사이다
                  <input type="checkbox" name="side" value="갈릭소스"> 갈릭소스
                  <br>
                  <input type="checkbox" name="side" value="핫소스"> 핫소스
                  <input type="checkbox" name="side" value="피클"> 피클
                  <input type="checkbox" name="side" value="파마산치즈가루"> 파마산치즈가루
               </td>
            </tr>
            <tr>
               <th>결제방식</th>
               <td>
                  <input type="radio" name="payment" value="card" checked> 카드결제 
                  <input type="radio" name="payment" value="cash"> 현금결제
               </td>
            </tr>
         </table>

      </fieldset>

      <br>

      <input type="submit" value="주문"> 
      <input type="reset">

   </form>
   
   </div> <!-- 메인 샘플 끝 -->
   
    </div> <!-- class="main -->
  </div> <!-- class="wrap" -->
  
  		<script src="<%=contextPath %>/resources/js/demo.js"></script>

</body>

</html>