<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Inspiration for Menu Hover Effects | Demo: Mohe | Codrops</title>
		<meta name="description" content="Inspiration for modern menu hover effects." />
		<meta name="keywords" content="menu, navigation, hover, effect, animation, javascript, css, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="favicon.ico">
		<link href="https://fonts.googleapis.com/css?family=Roboto:400,700|Space+Mono" rel="stylesheet">
	<style>
		article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary{display:block;}audio,canvas,video{display:inline-block;}audio:not([controls]){display:none;height:0;}[hidden]{display:none;}html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;}body{margin:0;}a:focus{outline:thin dotted;}a:active,a:hover{outline:0;}h1{font-size:2em;margin:0.67em 0;}abbr[title]{border-bottom:1px dotted;}b,strong{font-weight:bold;}dfn{font-style:italic;}hr{-moz-box-sizing:content-box;box-sizing:content-box;height:0;}mark{background:#ff0;color:#000;}code,kbd,pre,samp{font-family:monospace,serif;font-size:1em;}pre{white-space:pre-wrap;}q{quotes:"\201C" "\201D" "\2018" "\2019";}small{font-size:80%;}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline;}sup{top:-0.5em;}sub{bottom:-0.25em;}img{border:0;}svg:not(:root){overflow:hidden;}figure{margin:0;}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em;}legend{border:0;padding:0;}button,input,select,textarea{font-family:inherit;font-size:100%;margin:0;}button,input{line-height:normal;}button,select{text-transform:none;}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer;}button[disabled],html input[disabled]{cursor:default;}input[type="checkbox"],input[type="radio"]{box-sizing:border-box;padding:0;}input[type="search"]{-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none;}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0;}textarea{overflow:auto;vertical-align:top;}table{border-collapse:collapse;border-spacing:0;}
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
	--color-text: #161616;
	--color-background: rgb(168, 99, 221);
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
.menu--mohe .menu__item {
	font-family: 'Space Mono', sans-serif;
	font-weight: 700;
	display: grid;
	justify-content: center;
	margin: 4em 0;
	text-transform: lowercase;
	grid-template-columns: auto;
}

.menu--mohe .menu__item-name {
	font-size: 1.8em;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	white-space: pre;
	pointer-events: none;
	color: var(--color-text);
	grid-area: 1 / 1 / 2 / 2;
}

.menu--mohe .menu__item-name span {
	display: inline-block;
}

.menu--mohe .menu__item-label {
	font-size: 1.25em;
	line-height: 1.4;
	overflow: hidden;
	margin: 0;
	text-align: center;
	color: transparent;
	transition: color 0s 0.3s;
	grid-area: 1 / 1 / 2 / 2;
}

.menu--mohe .menu__item:hover .menu__item-label,
.menu--mohe .menu__item:focus .menu__item-label {
	color: #fff;
}

.menu--mohe .menu__item-label::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #fff;
	transform: translate3d(-100%,0,0) translate3d(-1px,0,0);
	transition: transform 0.6s;
	transition-timing-function: cubic-bezier(0.7,0,0.3,1);
}

.menu--mohe .menu__item:hover .menu__item-label::before,
.menu--mohe .menu__item:focus .menu__item-label::before {
	transform: translate3d(100%,0,0) translate3d(1px,0,0);
}

@media screen and (max-width: 50em) {
	.menu--mohe .menu__item-label {
		font-size: 0.85em;
	}
}
.pater {
	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif !important;
	position: fixed;
	z-index: 1000;
	right: 0;
	bottom: 0;
	display: grid;
	width: 100%;
	padding: 1em 0;
	text-align: left;
	color: #333;
	background: #ddd;
	grid-template-columns: auto;
	grid-template-rows: auto auto auto;
}

.pater:hover {
	color: #000;
}

.pater::before {
	content: 'Our Sponsor';
	font-size: 0.75em;
	display: inline-block;
	padding: 0 0 5px 10px;
	vertical-align: middle;
	grid-area: 1 / 1 / 2 / 2;
}

.pater__img {
	display: none;
	background-image: url(FullStory.jpg);
	background-size: cover;
	grid-area: 2 / 1 / 3 / 2;
}

.pater__title {
	font-size: 0.85em;
	font-weight: normal;
	font-weight: bold;
	align-self: end;
	margin: 0;
}

.pater__title::before {
	content: 'FullStory: ';
}

.pater__title,
.pater__description {
	align-self: start;
	padding: 10px 0 0 10px;
	grid-area: 2 / 1 / 3 / 3;
}

.pater__description {
	font-size: 0.85em;
	display: none;
	margin: 0;
	opacity: 0;
}

.pater__description strong {
	display: block;
	padding-top: 5px;
	color: #ee4e97;
}

/* Themes */
.demo-tsula .pater {
	color: #f0f0f0;
	background: #2d2e32;
}

.demo-tsula .pater:hover {
	color: #fff;
}

.demo-yona .pater {
	color: #fff;
	background: #4523e4;
}

.demo-yona .pater:hover {
	color: #fff;
}

.demo-yona .pater__img {
	transition: filter 0.3s;
	filter: grayscale(1);
}

.demo-yona .pater:hover .pater__img {
	filter: grayscale(0);
}

.demo-yona .pater__description strong,
.demo-mohe .pater__description strong {
	color: #000;
}

.demo-inola .pater {
	color: #8c8c8c;
	background: #181818;
}

.demo-salal .pater {
	color: #b5b5b5;
	background: #2d2e2f;
}

.demo-dustu .pater {
	color: #b5b5b5;
	background: #000;
}

.demo-mohe .pater {
	color: #fff;
	background: #3128d2;
}

@media screen and (min-width: 60em) {
	.pater {
		top: 0;
		right: 0;
		bottom: auto;
		width: calc(180px + 2em);
		margin: 0 1.5em 0 0;
		padding: 0;
		padding: 1em;
		text-align: right;
		border-radius: 0 0 5px 5px;
		background: #f9f9f9;
	}
	.pater__img {
		display: flex;
		width: 100%;
		height: 180px;
	}
	.pater::before {
		display: block;
		padding: 0 0 10px 0;
	}
	.pater:hover .pater__title {
		opacity: 0;
	}
	.pater__title::before {
		display: none;
	}
	.pater:hover .pater__description {
		opacity: 1;
	}
	.pater__description {
		display: block;
	}
	.pater__title {
		padding: 10px;
	}
	.pater__title,
	.pater__description {
		padding-left: 0;
		transition: opacity 0.5s;
		grid-area: 3 / 1 / 4 / 2;
	}
}
	</style>
	
	</head>
	<body class="demo-mohe">

			<section class="content">
				<nav class="menu menu--mohe">
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
		 * demo-mohe.js
		 * http://www.codrops.com
		 *
		 * Licensed under the MIT license.
		 * http://www.opensource.org/licenses/mit-license.php
		 * 
		 * Copyright 2017, Codrops
		 * http://www.codrops.com
		 */
		{
			const items = Array.from(document.querySelectorAll('.menu > .menu__item'));

			class Item {
				constructor(el) {
					this.DOM = {};
					this.DOM.el = el;
					this.DOM.name = el.querySelector('.menu__item-name');
					charming(this.DOM.name);
					this.DOM.nameLetters = Array.from(this.DOM.name.querySelectorAll('span'));
					this.initEvents();
				}
				initEvents() {
					this.mouseenterFn = () => this.mouseTimeout = setTimeout(() => {
						this.isActive = true;
						anime.remove(this.DOM.nameLetters);
						anime({
							targets: this.DOM.nameLetters,
							duration: 800,
							easing: [0.7,0,0.3,1],
							scale: (t,i) => [1,anime.random(0,1) ? 0.8:1.4],
							translateX: (t,i) => {
								const elBounds = this.DOM.el.getBoundingClientRect();
								const x1 = elBounds.left + elBounds.width/2;
								const y1 = elBounds.top + elBounds.height/2;
								
								const targetBounds = t.getBoundingClientRect();
								const x2 = targetBounds.left + targetBounds.width/2;
								const y2 = targetBounds.top + targetBounds.height/2;

								const dist = Math.sqrt(Math.pow(x2-x1,2) + Math.pow(y2-y1,2));
								const maxDist = Math.sqrt(Math.pow(elBounds.left-x1,2) + Math.pow(elBounds.top-y1,2));
								const maxTX = x2<x1?-250:250;

								return maxTX/maxDist*dist;
							},
							translateY: (t,i) => [0,anime.random(-40,40)],
							rotateZ: (t,i) => [0,anime.random(-20,20)],
							opacity: (t,i) => 0.3,
						});	
					}, 50);

					this.mouseleaveFn = () => {
						clearTimeout(this.mouseTimeout);
						if( !this.isActive ) return;
						this.isActive = false;
						anime.remove(this.DOM.nameLetters);
						anime({
							targets: this.DOM.nameLetters,
							duration: 800,
							easing: [0.7,0,0.3,1],
							scale: 1,
							translateX: 0,
							translateY: 0,
							rotateZ: 0,
							opacity: 1
						});
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
