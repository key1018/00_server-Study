<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>

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
		<link href="https://fonts.googleapis.com/css2?family=Acme&family=Anton&family=Archivo+Black&family=Koulen&family=Oswald:wght@500&family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/style-dustu.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/pater.css" />
		<script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this demo in a modern browser that supports CSS Variables.");</script>		
	</head>
	<body>


		<div class="content">
				<nav class="demo-dust menu menu--dustu">
					<a class="menu__item" href="#">
						<span class="menu__item-name">Artists</span>
						<span class="menu__item-label">Explore the portfolios</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Exhibitions</span>
						<span class="menu__item-label">Discover fascinating stories</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Schedule</span>
						<span class="menu__item-label">View our event calendar</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Mission</span>
						<span class="menu__item-label">Read our mission statement</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Contact</span>
						<span class="menu__item-label">Get in touch and find us</span>
					</a>
				</nav>
			</div>

		<script src="<%=contextPath %>/resources/js/demo.js"></script>
	</body>
</html>
