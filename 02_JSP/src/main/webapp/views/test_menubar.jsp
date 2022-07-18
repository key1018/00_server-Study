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
		<link href="https://fonts.googleapis.com/css?family=Roboto:400,700|Work+Sans:400,700" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/style-dustu.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/pater.css" />
		<script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this demo in a modern browser that supports CSS Variables.");</script>		
    <style>
.btn{
    color: #fff;
    background: transparent;
    font-family: 'Amaranth', sans-serif;
    font-size: 22px;
    font-weight: 400;
    font-style: italic;
    text-transform: capitalize;
    padding: 3px 15px;
    border-radius: 0;
    border: 2px solid rgba(255,255,255,0.2);
    box-shadow: 4px 4px 0 rgba(255, 255, 255, 0.3), 8px 8px 0 rgba(255, 255, 255, 0.2);
    position: relative;
    z-index: 1;
    transition: all 0.3s ease 0.1s;
}
.btn:hover{
    color: red;
    box-shadow: 0 0 10px -2px rgba(0, 0, 0, 0.4);
    border-color: #fff;
    transform:scale(1.1);
}
.btn span{ display: block; }
.btn:before,
.btn:after,
.btn span:before,
.btn span:after{
    content: '';
    background-color: red;
    width: 50%;
    height: 2px;
    opacity: 0;
    visibility: hidden;
    position: absolute;
    left: 25%;
    top: -2px;
    transition: all 0.3s ease 0s;
}
.btn:after{
    top: auto;
    bottom: -2px;
}
.btn span:before,
.btn span:after{
    height: 50%;
    width: 2px;
    top: 25%;
    left: -2px;
}
.btn span:after{
    left: auto;
    right: -2px;
}
.btn:hover:before,
.btn:hover:after,
.btn:hover span:before,
.btn:hover span:after{
    opacity: 1;
    visibility: visible;
}
.btn:hover:before{ left: 0; }
.btn:hover:after{ left: 50%; }
.btn:hover span:before{ top: 50%; }
.btn:hover span:after{ top: 0; }
@media only screen and (max-width: 767px){
    .btn{ margin-bottom: 20px; }
}

	</style>
    </head>
	<body style="width:1200px;">

        <div id="wrap" style="width:30%">
		<main>

				<nav class="demo-dustu menu menu--dustu" style="width:270px; background:black;">
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



		</main>
		<script src="<%=contextPath %>/resources/js/demo.js"></script>
	</div>

    <h2>

		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<a class="btn btn-lg" href="#">
						<span>button</span>
					</a>
				</div>
			</div>
		</div>


		<br clear="both">
	</h2>



    <div id="wrap2" style="width:70%">



    </div>

</body>
</html>
