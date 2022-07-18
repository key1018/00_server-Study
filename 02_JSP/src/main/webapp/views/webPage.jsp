<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹문서상세구조</title>

    <link rel="stylesheet" href="../화면구조잡기/css/00_최종웹페이지스타일.css">
</head>

<body>

 <div class="wrap"> <!-- 웹사이트를 전체 다 감싸는 구조 -->

    <div id="header">
        <div id="header-1"></div>
        <div id="header-2">

            <!-- id="header-2" 요소 붙여넣기 -->
            <form action="search.do" id="search-form">
                <input type="text" name="keyword" id="search-text">
                <input type="submit" value="검색" id="search-btn">
            </form>

        </div>
        <div id="header-3"></div>
    </div>
    <div id="navigator">

	
	
    </div>
    <div id="content">
        <div id="content-1">


        </div>
        <div id="content-2">

        </div>
        <div id="content-3">

         <!-- 로그인 정보를 전달하는 form 생성 -->
        <form action="login.me" id="login-form">

            <!-- ID/PWD입력하는 input 생성-->
            <div id="login-input">

                <input type="text" id="userId" name="userId" placeholder="아이디 입력" required>
                <input type="password" id="userPwd" name="userPwd" placeholder="비밀번호 입력" required>

            </div>

            <!-- 로그인 정보 전달하는 div 생성 -->
            <div id="login-btn">

                <input type="submit" value="로그인">

            </div>

        </form>

        <!-- 회원가입, ID/PWD생성하는 링크영역 div 생성 -->
        <div id="login-form-etc">
            <a href="#">회원가입</a>
            <a href="#">ID/PWD 찾기</a>
        </div>


        </div>
    </div>
    <div id="footer">

                <!-- 이용약관 등 링크 이동하는 div -->
                <div id="footer-1">

                    <a href="#">이용약관</a> |
                    <a href="#">개인정보취급방침</a> |
                    <a href="#">인재채용</a> | 
                    <a href="#">고객채용</a>
        
                </div>
        
                <div id="footer-2">
        
                    <!-- 홈페이지 정보가 들어가있는 div -->
                    <div id="info">
                        · 상호명 : EunYoung Academy <br>
                        · 대표자 : 김은영 <br>
                        · 전화 : 02-1234-5678 <br>
                        · 주소 : 서울시 사랑구 우정동 하늘로
                    </div>
        
                    <!-- 저작권 정보가 들어가있는 div -->
                    <div id="copyright">
                        Copyright ⓒ EunYoung Academy. All rights reserved.
                    </div>

    </div>

 </div>

</body>

</html>