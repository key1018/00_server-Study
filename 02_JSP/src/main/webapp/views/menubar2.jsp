<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Inspiration for Menu Hover Effects | Demo: Yona | Codrops</title>
		<meta name="description" content="Inspiration for modern menu hover effects." />
		<meta name="keywords" content="menu, navigation, hover, effect, animation, javascript, css, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="favicon.ico">
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
	font-family: 'Roboto', sans-serif;
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
	--color-background: rgb(231, 216, 241);
	--color-link: #fff;
	--color-link-hover: #000;
	width:270px;
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
	font-size: 1.25em;
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
	.menu--yona {
	font-family: 'Alegreya Sans', monospace;
	font-size: 1em;
}

.menu--yona .menu__item {
	font-size: 1.5em;
	font-weight: 900;
	margin: 1.25em 0;
	padding-left: 0.25em;
}

.menu--yona .menu__item-name {
	color: rgb(168, 99, 221);
	transition: transform 0.3s;
}

.menu--yona .menu__item:hover .menu__item-name,
.menu--yona .menu__item:focus .menu__item-name {
	transform: translate3d(0.5em,0,0);
}

.menu--yona .menu__item::before {
	content: '';
	position: absolute;
	top: 0.5em;
	left: 0;
	width: 0.75em;
	height: 0.25em;
	background: rgb(168, 99, 221);
	transform: scale3d(0,1,1);
	transform-origin: 0% 50%;
	transition: transform 0.3s;
}

.menu--yona .menu__item:hover::before,
.menu--yona .menu__item:focus::before {
	transform: scale3d(1,1,1);
}

.menu--yona .menu__item-label {
	display: block;
	margin: 0;
	word-spacing: 0.15em;
	color: white;
}

@media screen and (max-width: 50em) {
	.menu--yona .menu__item-label {
		font-size: 0.75em;
	}
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
	background-color: white;
}
.menu-footer_up>h2{
    margin-block-end: 0em;
	background-color: white;
}
.menu-footer_down{
	border:1px solid rgb(231, 216, 241);
	width:270px;
	height:100%;
	justify-content: center;
	align-items: center;
	padding: 0em 2em;
	font-size:11.5px;
	background-color: white;
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
.menu-header{
	
}
.menu-header *:hover{
	color: rgb(168, 99, 221);
}
	
	</style>
	
	</head>
	
		
	
	
	<body class="demo-yona">
		<svg class="hidden">
			<symbol id="icon-arrow" viewBox="0 0 24 24">
				<title>arrow</title>
				<polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
			</symbol>
			<symbol id="icon-drop" viewBox="0 0 24 24">
				<title>drop</title>
				<path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
			</symbol>
			<symbol id="icon-github" viewBox="0 0 32.6 31.8">
				<title>github</title>
				<path d="M16.3,0C7.3,0,0,7.3,0,16.3c0,7.2,4.7,13.3,11.1,15.5c0.8,0.1,1.1-0.4,1.1-0.8c0-0.4,0-1.4,0-2.8c-4.5,1-5.5-2.2-5.5-2.2c-0.7-1.9-1.8-2.4-1.8-2.4c-1.5-1,0.1-1,0.1-1c1.6,0.1,2.5,1.7,2.5,1.7c1.5,2.5,3.8,1.8,4.7,1.4c0.1-1.1,0.6-1.8,1-2.2c-3.6-0.4-7.4-1.8-7.4-8.1c0-1.8,0.6-3.2,1.7-4.4C7.4,10.7,6.8,9,7.7,6.8c0,0,1.4-0.4,4.5,1.7c1.3-0.4,2.7-0.5,4.1-0.5c1.4,0,2.8,0.2,4.1,0.5c3.1-2.1,4.5-1.7,4.5-1.7c0.9,2.2,0.3,3.9,0.2,4.3c1,1.1,1.7,2.6,1.7,4.4c0,6.3-3.8,7.6-7.4,8c0.6,0.5,1.1,1.5,1.1,3c0,2.2,0,3.9,0,4.5c0,0.4,0.3,0.9,1.1,0.8c6.5-2.2,11.1-8.3,11.1-15.5C32.6,7.3,25.3,0,16.3,0z"/>
			</symbol>
			<symbol id="icon-keyboard" viewBox="0 0 100 70">
				<title>keyboard</title>
				<path d="M 60.94,1.83 39.22,1.83 C 36.71,1.83 34.67,3.86 34.67,6.376 L 34.67,28.1 C 34.67,30.61 36.71,32.65 39.22,32.65 L 60.94,32.65 C 63.45,32.65 65.5,30.61 65.5,28.1 L 65.5,6.376 C 65.5,3.86 63.45,1.83 60.94,1.83 Z M 44.79,18.63 50.08,11.74 55.37,18.63 Z" opacity="0.2"/>
				<path d="M 60.86,36.75 39.14,36.75 C 36.63,36.75 34.59,38.79 34.59,41.3 L 34.59,63.02 C 34.59,65.53 36.63,67.57 39.14,67.57 L 60.86,67.57 C 63.38,67.57 65.41,65.53 65.41,63.02 L 65.41,41.3 C 65.42,38.79 63.38,36.75 60.86,36.75 Z M 50.08,57.45 44.79,50.55 55.37,50.55 Z" opacity="0.2" />
				<path d="M 95.45,36.75 73.73,36.75 C 71.22,36.75 69.18,38.79 69.18,41.3 L 69.18,63.02 C 69.18,65.53 71.22,67.57 73.73,67.57 L 95.45,67.57 C 97.97,67.57 100,65.53 100,63.02 L 100,41.3 C 100,38.79 97.97,36.75 95.45,36.75 Z M 83.4,57.45 83.4,46.86 90.3,52.16 Z" />
				<path d="M 26.27,36.75 4.55,36.75 C 2.037,36.75 0,38.79 0,41.3 L 0,63.02 C 0,65.53 2.037,67.57 4.55,67.57 L 26.27,67.57 C 28.78,67.57 30.82,65.53 30.82,63.02 L 30.82,41.3 C 30.82,38.79 28.78,36.75 26.27,36.75 Z M 16.69,57.45 9.79,52.16 16.69,46.86 Z" />
			</symbol>
		</svg>
		<main>


			<div class="content">

				<nav class="menu menu--yona">

					<div class="menu-header">
						<a href="" class="fas fa-user"></a>
						<a href="" class="fa fa-shopping-basket"></a>
						<a href="" class=""></a>
					</div>
					
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
			</div>

			<div class="menu-footer_up" style="float: none;"> 
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

		</main>
	
	<script>
	!function(e){"undefined"==typeof module?this.charming=e:module.exports=e}(function(e,n){"use strict";n=n||{};var t=n.tagName||"span",o=null!=n.classPrefix?n.classPrefix:"char",r=1,a=function(e){for(var n=e.parentNode,a=e.nodeValue,c=a.length,l=-1;++l<c;){var d=document.createElement(t);o&&(d.className=o+r,r++),d.appendChild(document.createTextNode(a[l])),n.insertBefore(d,e)}n.removeChild(e)};return function c(e){for(var n=[].slice.call(e.childNodes),t=n.length,o=-1;++o<t;)c(n[o]);e.nodeType===Node.TEXT_NODE&&a(e)}(e),e});
	
	/*
	 2017 Julian Garnier
	 Released under the MIT license
	*/
	var $jscomp$this=this;
	(function(u,r){"function"===typeof define&&define.amd?define([],r):"object"===typeof module&&module.exports?module.exports=r():u.anime=r()})(this,function(){function u(a){if(!g.col(a))try{return document.querySelectorAll(a)}catch(b){}}function r(a){return a.reduce(function(a,c){return a.concat(g.arr(c)?r(c):c)},[])}function v(a){if(g.arr(a))return a;g.str(a)&&(a=u(a)||a);return a instanceof NodeList||a instanceof HTMLCollection?[].slice.call(a):[a]}function E(a,b){return a.some(function(a){return a===b})}
	function z(a){var b={},c;for(c in a)b[c]=a[c];return b}function F(a,b){var c=z(a),d;for(d in a)c[d]=b.hasOwnProperty(d)?b[d]:a[d];return c}function A(a,b){var c=z(a),d;for(d in b)c[d]=g.und(a[d])?b[d]:a[d];return c}function R(a){a=a.replace(/^#?([a-f\d])([a-f\d])([a-f\d])$/i,function(a,b,c,h){return b+b+c+c+h+h});var b=/^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(a);a=parseInt(b[1],16);var c=parseInt(b[2],16),b=parseInt(b[3],16);return"rgb("+a+","+c+","+b+")"}function S(a){function b(a,b,c){0>
	c&&(c+=1);1<c&&--c;return c<1/6?a+6*(b-a)*c:.5>c?b:c<2/3?a+(b-a)*(2/3-c)*6:a}var c=/hsl\((\d+),\s*([\d.]+)%,\s*([\d.]+)%\)/g.exec(a);a=parseInt(c[1])/360;var d=parseInt(c[2])/100,c=parseInt(c[3])/100;if(0==d)d=c=a=c;else{var e=.5>c?c*(1+d):c+d-c*d,k=2*c-e,d=b(k,e,a+1/3),c=b(k,e,a);a=b(k,e,a-1/3)}return"rgb("+255*d+","+255*c+","+255*a+")"}function w(a){if(a=/([\+\-]?[0-9#\.]+)(%|px|pt|em|rem|in|cm|mm|ex|pc|vw|vh|deg|rad|turn)?/.exec(a))return a[2]}function T(a){if(-1<a.indexOf("translate"))return"px";
	if(-1<a.indexOf("rotate")||-1<a.indexOf("skew"))return"deg"}function G(a,b){return g.fnc(a)?a(b.target,b.id,b.total):a}function B(a,b){if(b in a.style)return getComputedStyle(a).getPropertyValue(b.replace(/([a-z])([A-Z])/g,"$1-$2").toLowerCase())||"0"}function H(a,b){if(g.dom(a)&&E(U,b))return"transform";if(g.dom(a)&&(a.getAttribute(b)||g.svg(a)&&a[b]))return"attribute";if(g.dom(a)&&"transform"!==b&&B(a,b))return"css";if(null!=a[b])return"object"}function V(a,b){var c=T(b),c=-1<b.indexOf("scale")?
	1:0+c;a=a.style.transform;if(!a)return c;for(var d=[],e=[],k=[],h=/(\w+)\((.+?)\)/g;d=h.exec(a);)e.push(d[1]),k.push(d[2]);a=k.filter(function(a,c){return e[c]===b});return a.length?a[0]:c}function I(a,b){switch(H(a,b)){case "transform":return V(a,b);case "css":return B(a,b);case "attribute":return a.getAttribute(b)}return a[b]||0}function J(a,b){var c=/^(\*=|\+=|-=)/.exec(a);if(!c)return a;b=parseFloat(b);a=parseFloat(a.replace(c[0],""));switch(c[0][0]){case "+":return b+a;case "-":return b-a;case "*":return b*
	a}}function C(a){return g.obj(a)&&a.hasOwnProperty("totalLength")}function W(a,b){function c(c){c=void 0===c?0:c;return a.el.getPointAtLength(1<=b+c?b+c:0)}var d=c(),e=c(-1),k=c(1);switch(a.property){case "x":return d.x;case "y":return d.y;case "angle":return 180*Math.atan2(k.y-e.y,k.x-e.x)/Math.PI}}function K(a,b){var c=/-?\d*\.?\d+/g;a=C(a)?a.totalLength:a;if(g.col(a))b=g.rgb(a)?a:g.hex(a)?R(a):g.hsl(a)?S(a):void 0;else{var d=w(a);a=d?a.substr(0,a.length-d.length):a;b=b?a+b:a}b+="";return{original:b,
	numbers:b.match(c)?b.match(c).map(Number):[0],strings:b.split(c)}}function X(a,b){return b.reduce(function(b,d,e){return b+a[e-1]+d})}function L(a){return(a?r(g.arr(a)?a.map(v):v(a)):[]).filter(function(a,c,d){return d.indexOf(a)===c})}function Y(a){var b=L(a);return b.map(function(a,d){return{target:a,id:d,total:b.length}})}function Z(a,b){var c=z(b);if(g.arr(a)){var d=a.length;2!==d||g.obj(a[0])?g.fnc(b.duration)||(c.duration=b.duration/d):a={value:a}}return v(a).map(function(a,c){c=c?0:b.delay;
	a=g.obj(a)&&!C(a)?a:{value:a};g.und(a.delay)&&(a.delay=c);return a}).map(function(a){return A(a,c)})}function aa(a,b){var c={},d;for(d in a){var e=G(a[d],b);g.arr(e)&&(e=e.map(function(a){return G(a,b)}),1===e.length&&(e=e[0]));c[d]=e}c.duration=parseFloat(c.duration);c.delay=parseFloat(c.delay);return c}function ba(a){return g.arr(a)?x.apply(this,a):M[a]}function ca(a,b){var c;return a.tweens.map(function(d){d=aa(d,b);var e=d.value,k=I(b.target,a.name),h=c?c.to.original:k,h=g.arr(e)?e[0]:h,n=J(g.arr(e)?
	e[1]:e,h),k=w(n)||w(h)||w(k);d.isPath=C(e);d.from=K(h,k);d.to=K(n,k);d.start=c?c.end:a.offset;d.end=d.start+d.delay+d.duration;d.easing=ba(d.easing);d.elasticity=(1E3-Math.min(Math.max(d.elasticity,1),999))/1E3;g.col(d.from.original)&&(d.round=1);return c=d})}function da(a,b){return r(a.map(function(a){return b.map(function(b){var c=H(a.target,b.name);if(c){var d=ca(b,a);b={type:c,property:b.name,animatable:a,tweens:d,duration:d[d.length-1].end,delay:d[0].delay}}else b=void 0;return b})})).filter(function(a){return!g.und(a)})}
	function N(a,b,c){var d="delay"===a?Math.min:Math.max;return b.length?d.apply(Math,b.map(function(b){return b[a]})):c[a]}function ea(a){var b=F(fa,a),c=F(ga,a),d=Y(a.targets),e=[],g=A(b,c),h;for(h in a)g.hasOwnProperty(h)||"targets"===h||e.push({name:h,offset:g.offset,tweens:Z(a[h],c)});a=da(d,e);return A(b,{animatables:d,animations:a,duration:N("duration",a,c),delay:N("delay",a,c)})}function m(a){function b(){return window.Promise&&new Promise(function(a){return P=a})}function c(a){return f.reversed?
	f.duration-a:a}function d(a){for(var b=0,c={},d=f.animations,e={};b<d.length;){var g=d[b],h=g.animatable,n=g.tweens;e.tween=n.filter(function(b){return a<b.end})[0]||n[n.length-1];e.isPath$0=e.tween.isPath;e.round=e.tween.round;e.eased=e.tween.easing(Math.min(Math.max(a-e.tween.start-e.tween.delay,0),e.tween.duration)/e.tween.duration,e.tween.elasticity);n=X(e.tween.to.numbers.map(function(a){return function(b,c){c=a.isPath$0?0:a.tween.from.numbers[c];b=c+a.eased*(b-c);a.isPath$0&&(b=W(a.tween.value,
	b));a.round&&(b=Math.round(b*a.round)/a.round);return b}}(e)),e.tween.to.strings);ha[g.type](h.target,g.property,n,c,h.id);g.currentValue=n;b++;e={isPath$0:e.isPath$0,tween:e.tween,eased:e.eased,round:e.round}}if(c)for(var k in c)D||(D=B(document.body,"transform")?"transform":"-webkit-transform"),f.animatables[k].target.style[D]=c[k].join(" ");f.currentTime=a;f.progress=a/f.duration*100}function e(a){if(f[a])f[a](f)}function g(){f.remaining&&!0!==f.remaining&&f.remaining--}function h(a){var h=f.duration,
	k=f.offset,m=f.delay,O=f.currentTime,p=f.reversed,q=c(a),q=Math.min(Math.max(q,0),h);q>k&&q<h?(d(q),!f.began&&q>=m&&(f.began=!0,e("begin")),e("run")):(q<=k&&0!==O&&(d(0),p&&g()),q>=h&&O!==h&&(d(h),p||g()));a>=h&&(f.remaining?(t=n,"alternate"===f.direction&&(f.reversed=!f.reversed)):(f.pause(),P(),Q=b(),f.completed||(f.completed=!0,e("complete"))),l=0);if(f.children)for(a=f.children,h=0;h<a.length;h++)a[h].seek(q);e("update")}a=void 0===a?{}:a;var n,t,l=0,P=null,Q=b(),f=ea(a);f.reset=function(){var a=
	f.direction,b=f.loop;f.currentTime=0;f.progress=0;f.paused=!0;f.began=!1;f.completed=!1;f.reversed="reverse"===a;f.remaining="alternate"===a&&1===b?2:b};f.tick=function(a){n=a;t||(t=n);h((l+n-t)*m.speed)};f.seek=function(a){h(c(a))};f.pause=function(){var a=p.indexOf(f);-1<a&&p.splice(a,1);f.paused=!0};f.play=function(){f.paused&&(f.paused=!1,t=0,l=f.completed?0:c(f.currentTime),p.push(f),y||ia())};f.reverse=function(){f.reversed=!f.reversed;t=0;l=c(f.currentTime)};f.restart=function(){f.pause();
	f.reset();f.play()};f.finished=Q;f.reset();f.autoplay&&f.play();return f}var fa={update:void 0,begin:void 0,run:void 0,complete:void 0,loop:1,direction:"normal",autoplay:!0,offset:0},ga={duration:1E3,delay:0,easing:"easeOutElastic",elasticity:500,round:0},U="translateX translateY translateZ rotate rotateX rotateY rotateZ scale scaleX scaleY scaleZ skewX skewY".split(" "),D,g={arr:function(a){return Array.isArray(a)},obj:function(a){return-1<Object.prototype.toString.call(a).indexOf("Object")},svg:function(a){return a instanceof
	SVGElement},dom:function(a){return a.nodeType||g.svg(a)},str:function(a){return"string"===typeof a},fnc:function(a){return"function"===typeof a},und:function(a){return"undefined"===typeof a},hex:function(a){return/(^#[0-9A-F]{6}$)|(^#[0-9A-F]{3}$)/i.test(a)},rgb:function(a){return/^rgb/.test(a)},hsl:function(a){return/^hsl/.test(a)},col:function(a){return g.hex(a)||g.rgb(a)||g.hsl(a)}},x=function(){function a(a,c,d){return(((1-3*d+3*c)*a+(3*d-6*c))*a+3*c)*a}return function(b,c,d,e){if(0<=b&&1>=b&&
	0<=d&&1>=d){var g=new Float32Array(11);if(b!==c||d!==e)for(var h=0;11>h;++h)g[h]=a(.1*h,b,d);return function(h){if(b===c&&d===e)return h;if(0===h)return 0;if(1===h)return 1;for(var k=0,l=1;10!==l&&g[l]<=h;++l)k+=.1;--l;var l=k+(h-g[l])/(g[l+1]-g[l])*.1,n=3*(1-3*d+3*b)*l*l+2*(3*d-6*b)*l+3*b;if(.001<=n){for(k=0;4>k;++k){n=3*(1-3*d+3*b)*l*l+2*(3*d-6*b)*l+3*b;if(0===n)break;var m=a(l,b,d)-h,l=l-m/n}h=l}else if(0===n)h=l;else{var l=k,k=k+.1,f=0;do m=l+(k-l)/2,n=a(m,b,d)-h,0<n?k=m:l=m;while(1e-7<Math.abs(n)&&
	10>++f);h=m}return a(h,c,e)}}}}(),M=function(){function a(a,b){return 0===a||1===a?a:-Math.pow(2,10*(a-1))*Math.sin(2*(a-1-b/(2*Math.PI)*Math.asin(1))*Math.PI/b)}var b="Quad Cubic Quart Quint Sine Expo Circ Back Elastic".split(" "),c={In:[[.55,.085,.68,.53],[.55,.055,.675,.19],[.895,.03,.685,.22],[.755,.05,.855,.06],[.47,0,.745,.715],[.95,.05,.795,.035],[.6,.04,.98,.335],[.6,-.28,.735,.045],a],Out:[[.25,.46,.45,.94],[.215,.61,.355,1],[.165,.84,.44,1],[.23,1,.32,1],[.39,.575,.565,1],[.19,1,.22,1],
	[.075,.82,.165,1],[.175,.885,.32,1.275],function(b,c){return 1-a(1-b,c)}],InOut:[[.455,.03,.515,.955],[.645,.045,.355,1],[.77,0,.175,1],[.86,0,.07,1],[.445,.05,.55,.95],[1,0,0,1],[.785,.135,.15,.86],[.68,-.55,.265,1.55],function(b,c){return.5>b?a(2*b,c)/2:1-a(-2*b+2,c)/2}]},d={linear:x(.25,.25,.75,.75)},e={},k;for(k in c)e.type=k,c[e.type].forEach(function(a){return function(c,e){d["ease"+a.type+b[e]]=g.fnc(c)?c:x.apply($jscomp$this,c)}}(e)),e={type:e.type};return d}(),ha={css:function(a,b,c){return a.style[b]=
	c},attribute:function(a,b,c){return a.setAttribute(b,c)},object:function(a,b,c){return a[b]=c},transform:function(a,b,c,d,e){d[e]||(d[e]=[]);d[e].push(b+"("+c+")")}},p=[],y=0,ia=function(){function a(){y=requestAnimationFrame(b)}function b(b){var c=p.length;if(c){for(var e=0;e<c;)p[e]&&p[e].tick(b),e++;a()}else cancelAnimationFrame(y),y=0}return a}();m.version="2.0.1";m.speed=1;m.running=p;m.remove=function(a){a=L(a);for(var b=p.length-1;0<=b;b--)for(var c=p[b],d=c.animations,e=d.length-1;0<=e;e--)E(a,
	d[e].animatable.target)&&(d.splice(e,1),d.length||c.pause())};m.getValue=I;m.path=function(a,b){var c=g.str(a)?u(a)[0]:a,d=b||100;return function(a){return{el:c,property:a,totalLength:c.getTotalLength()*(d/100)}}};m.setDashoffset=function(a){var b=a.getTotalLength();a.setAttribute("stroke-dasharray",b);return b};m.bezier=x;m.easings=M;m.timeline=function(a){var b=m(a);b.duration=0;b.children=[];b.add=function(a){v(a).forEach(function(a){var c=a.offset,d=b.duration;a.autoplay=!1;a.offset=g.und(c)?
	d:J(c,d);a=m(a);a.duration>d&&(b.duration=a.duration);b.children.push(a)});return b};return b};m.random=function(a,b){return Math.floor(Math.random()*(b-a+1))+a};return m});
	
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

	/**
	 * demo-tsula.js
	 * http://www.codrops.com
	 *
	 * Licensed under the MIT license.
	 * http://www.opensource.org/licenses/mit-license.php
	 * 
	 * Copyright 2017, Codrops
	 * http://www.codrops.com
	 */
	{
		const shuffleArray = (arr) => arr.sort(() => (Math.random() - 0.5));
		const items = Array.from(document.querySelectorAll('.menu > .menu__item'));

		class Item {
			constructor(el) {
				this.DOM = {};
				this.DOM.el = el;
				this.DOM.label = el.querySelector('.menu__item-label');
				charming(this.DOM.label);
				this.DOM.labelLetters = Array.from(this.DOM.label.querySelectorAll('span'));
				this.initEvents();
			}
			initEvents() {
				this.mouseenterFn = () => this.mouseTimeout = setTimeout(() => {
					this.isActive = true;
					anime.remove(this.DOM.labelLetters);
					anime({
						targets: shuffleArray(this.DOM.labelLetters),
						duration: 20,
						delay: (t,i) => (i+5)*30,
						easing: 'linear',
						opacity: [0,1]
					});	
				}, 50);

				this.mouseleaveFn = () => {
					clearTimeout(this.mouseTimeout);
					if( !this.isActive ) return;
					this.isActive = false;
				};

				this.DOM.el.addEventListener('mouseenter', this.mouseenterFn);
				this.DOM.el.addEventListener('touchstart', this.mouseenterFn);
				this.DOM.el.addEventListener('mouseleave', this.mouseleaveFn);
				this.DOM.el.addEventListener('touchend', this.mouseleaveFn);
			}
		};

		items.forEach(item => new Item(item));
	};
	</script>


	</body>
</html>