<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Inspiration for Menu Hover Effects | Demo: Dustu | Codrops</title>
		<meta name="description" content="Inspiration for modern menu hover effects." />
		<meta name="keywords" content="menu, navigation, hover, effect, animation, javascript, css, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Acme&family=Anton&family=Archivo+Black&family=Koulen&family=Oswald:wght@500&family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Roboto:400,700|Alegreya+Sans:900" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
*,
*::after,
*::before {
	box-sizing: border-box;
}

html {
	background: #fff;
}

body {
	font-family: 'Archivo Black', sans-serif;
	min-height: 100vh;
	color: #57585c;
	color: var(--color-text);
	background-color: #fff;
	background-color: var(--color-background);
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

/* Color schemes */
.demo-adsila {
	--color-text: #57585c;
	--color-background: #fff;
	--color-link: #5d93d8;
	--color-link-hover: #423c2b;
}

.demo-tsula {
	--color-text: #fafae5;
	--color-background: #222328;
	--color-link: #4f515a;
	--color-link-hover: #fafae5;
}

.demo-inola {
	--color-text: #8c8c8c;
	--color-background: #1f1e1e;
	--color-link: #e5d338;
	--color-link-hover: #8c8c8c;
}

.demo-ama {
	--color-text: #9a9da7;
	--color-background: #fff;
	--color-link: #32343c;
	--color-link-hover: #9a9da7;
}

.demo-yona {
	--color-text: #000;
	--color-background: #4520f3;
	--color-link: #fff;
	--color-link-hover: #000;
}

.demo-salal {
	--color-text: #b5b5b5;
	--color-background: #222325;
	--color-link: #515152;
	--color-link-hover: #fff;
}

.demo-dustu {
	--color-text: #fff;
	--color-background: #161616;
	--color-link: #565656;
	--color-link-hover: #fff;
}

.demo-mohe {
	--color-text: #171754;
	--color-background: #2b34f5;
	--color-link: #9ad6fc;
	--color-link-hover: #171754;
}

/* Fade effect */
.js body {
	opacity: 0;
	transition: opacity 0.3s;
}

.js body.render {
	opacity: 1;
}

a {
	text-decoration: none;
	color: #5d93d8;
	color: var(--color-link);
	outline: none;
}

a:hover,
a:focus {
	color: #423c2b;
	color: var(--color-link-hover);
	outline: none;
}

.hidden {
	position: absolute;
	overflow: hidden;
	width: 0;
	height: 0;
	pointer-events: none;
}

/* Icons */
.icon {
	display: block;
	width: 1.5em;
	height: 1.5em;
	margin: 0 auto;
	fill: currentColor;
}

.icon--keyboard {
	display: none;
}

main {
	position: relative;
	width: 100%;
}

.content {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0 auto;
	padding: 3em 2em;
}

.content--fixed {
	position: fixed;
	z-index: 100;
	top: 0;
	left: 0;
	display: grid;
	align-content: space-between;
	width: 100%;
	max-width: none;
	height: 100vh;
	padding: 1.5em;
	pointer-events: none;
	grid-template-columns: 50% 50%;
	grid-template-rows: auto auto 4em;
	grid-template-areas: 'header ...'
	'... ...'
	'github demos';
}

.content--fixed a {
	pointer-events: auto;
}

/* Header */
.codrops-header {
	position: relative;
	z-index: 100;
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	align-items: center;
	align-self: start;
	grid-area: header;
	justify-self: start;
}

.codrops-header__title {
	font-size: 1em;
	font-weight: normal;
	margin: 0;
	padding: 0.75em 0;
}

.info {
	margin: 0 0 0 1.25em;
	color: var(--color-link-hover);
}

.github {
	display: block;
	align-self: end;
	grid-area: github;
	justify-self: start;
}

.demos {
	position: relative;
	display: block;
	align-self: end;
	text-align: center;
	grid-area: demos;
}

.demo {
	margin: 0 0.15em;
}

.demo span {
	white-space: nowrap;
	letter-spacing: 0.1em;
	text-transform: lowercase;
	pointer-events: none;
}

.demo span::before {
	content: '#';
}

a.demo--current {
	pointer-events: none;
	border: 1px solid;
}

/* Top Navigation Style */
.codrops-links {
	position: relative;
	display: flex;
	justify-content: center;
	margin: 0 1em 0 0;
	text-align: center;
	white-space: nowrap;
}

.codrops-icon {
	display: inline-block;
	margin: 0.15em;
	padding: 0.25em;
}

/* Common styles for the menus */
.menu {
	position: relative;
	z-index: 10;
}

.menu__item {
	line-height: 1;
	position: relative;
	display: block;
	margin: 1em 0;
	outline: none;
}

.menu__item-name,
.menu__item-label {
	position: relative;
	display: inline-block;
}

.menu__item-name {
	font-size: 2em;
}

.menu__item-label {
	margin: 0 0 0 0.5em;
}

@media screen and (min-width: 50em) {
	.icon--keyboard {
		position: absolute;
		right: 0.55em;
		bottom: -30%;
		display: block;
		width: 54px;
		height: 46px;
		fill: var(--color-link);
	}
	.demos {
		display: flex;
		padding-right: 80px;

		justify-self: end;
	}
	.demo {
		display: block;
		width: 17px;
		height: 17px;
		margin: 0 5px 0 0;
		border: 2px solid;
		border-radius: 2px;
	}
	a.demo--current {
		background: currentColor;
	}
	.demo span {
		position: absolute;
		top: -0.2em;
		right: 100%;
		display: none;
		margin: 0 1em 0 0;
	}
	.demo--current span {
		display: block;
	}
}

@media screen and (max-width: 50em) {
	html,
	body {
		overflow-x: hidden;
		width: 100vw;
		height: 100%;
	}
	.content {
		height: auto;
		min-height: 0;
		padding-bottom: 10em;
	}
	.content--fixed {
		position: relative;
		z-index: 1000;
		display: block;
		padding: 0.85em;
	}
	.codrops-header {
		flex-direction: column;
		align-items: center;
	}
	.codrops-header__title {
		font-weight: bold;
		padding-bottom: 0.25em;
		text-align: center;
	}
	.github {
		display: block;
		margin: 1em auto;
	}
	.codrops-links {
		margin: 0;
	}
}
.menu--dustu .menu__item {
	font-family: 'Alegreya Sans', monospace;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	margin: 2em 0;
}

.menu--dustu .menu__item-name {
	font-size: 2em;
	font-weight: bold;
	overflow: hidden;
	padding: 0 0.25em;
	/* text-transform: uppercase; */
	color: black;
}

.menu--dustu .menu__item-name::before,
.menu--dustu .menu__item-name::after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgb(168, 99, 221);
	transform: translate3d(-100%,0,0) translate3d(-1px,0,0);
	transition: transform 0.7s;
	transition-timing-function: cubic-bezier(0.7,0,0.3,1);
}

.menu--dustu .menu__item:hover .menu__item-name::before {
	transform: translate3d(100%,0,0) translate3d(1px,0,0);
}

.menu--dustu .menu__item:hover .menu__item-name::after {
	transform: translate3d(0,0,0);
}

.menu--dustu .menu__item-name::after {
	top: calc(50% - 2px);
	height: 4px;
}

.menu--dustu .menu__item-label {
	font-size: 1.25em;
	margin: 0.5em 0 0 0;
	margin-top: 0.25em;
	padding: 0.5em;
	color: #565656;
	transition: color 0.7s;
	transition-timing-function: cubic-bezier(0.7,0,0.3,1);
}

.menu--dustu .menu__item:hover .menu__item-label {
	color: #fff;
}

.content{
	background-color:rgb(231, 216, 241);
	width:270px;
	height:500px;
	float: left;
}
.menu-footer_up{
	border:1px solid rgb(231, 216, 241);
	width:270px;
	height:100px;
	justify-content: center;
	align-items: center;
	font-family: "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
	padding: 0em 2em;
	font-size:12px;
}
.menu-footer_up>h2{
    margin-block-end: 0em;
}
.menu-footer_down{
	border:1px solid rgb(231, 216, 241);
	width:270px;
	height:100%;
	justify-content: center;
	align-items: center;
	padding: 0em 2em;
	font-size:11.5px;
}
.font_basic a{
	text-decoration-line:underline;
	color:black;
	font-weight: bold;
}
.font_basic{
	font-size:11.5px;
	color:gray;
	font-family: "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
}
.plain-btn{
	list-style: none;
    border: 1px solid rgb(231, 216, 241) !important;
    padding: 10px !important;
    font-weight: bold;
    line-height: 12px;
    font-size: inherit;
    text-align: center;
	display:inline-block;
}
</style>
</head>
	
			<div class="menu-header">


				
			</div>


			<section class="content">
				<nav class="menu menu--dustu">
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
			</section>
			
			<br clear="both"> <!-- float 속성 해제 -->
			
			
			<div class="menu-footer_up" stlye="float: none;"> 
				<h2 style="font-size:25px">
					<span class="fas fa-phone"></span>
					<span>1234-5678 </span>
				</h2>
				<p class="font_basic">
					오전 9시~오후 6시 운영/주말,휴일 휴무
				</p>	
				
			</div>

			<div class="menu-footer_down font_basic">
					<p>- 전화 전 <a href="#">자주 묻는 질문</a>을 확인하세요.</p>
					<p>- <a href="#">1:1문의</a>를 통해서도 상담이 가능합니다.</p>
					<p>- 상품 문의는 각 상품 Q&A를 이용하세요.</p>

					<br>
				
					<a href="" class="plain-btn btn">회원후기</a>
					<a href="" class="plain-btn btn">적립금</a>
					<a href="" class="plain-btn btn">공지사항</a>

				
			</div>

		
		<script>
			
		/**
		 * demo.js
		 * http://www.codrops.com
		 *
		 * Licensed under the MIT license.
		 * http://www.opensource.org/licenses/mit-license.php
		 * 
		 * Copyright 2017, Codrops
		 * http://www.codrops.com
		 */
		{
			setTimeout(() => document.body.classList.add('render'), 60);
			const navdemos = Array.from(document.querySelectorAll('nav.demos > .demo'));
			const total = navdemos.length;
			const current = navdemos.findIndex(el => el.classList.contains('demo--current'));
			const navigate = (linkEl) => {
				document.body.classList.remove('render');
				document.body.addEventListener('transitionend', () => window.location = linkEl.href);
			};
			navdemos.forEach(link => link.addEventListener('click', (ev) => {
				ev.preventDefault();
				navigate(ev.target);
			}));
			document.addEventListener('keydown', (ev) => {
				const keyCode = ev.keyCode || ev.which;
				let linkEl;
				if ( keyCode === 37 ) {
					linkEl = current > 0 ? navdemos[current-1] : navdemos[total-1];
				}
				else if ( keyCode === 39 ) {
					linkEl = current < total-1 ? navdemos[current+1] : navdemos[0];
				}
				else {
					return false;
				}
				navigate(linkEl);
			});
		}

		
		</script>
	</body>
</html>

