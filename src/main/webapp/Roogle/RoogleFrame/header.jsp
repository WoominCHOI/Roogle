<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
String userId = (String)session.getAttribute("user_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="Stylesheet" type="text/css" href="./../CSS/index.css">
</head>
<body>
	<header class="header">
		<div class="header__container">
			<span class="header__logo"> <a href="./index.jsp"> <img
					src="./../img/RoogleLogo.png" alt="Roogle">
			</a>
			</span> <span class="header__search">
				<form action="./search.jsp" method="post">
					<input type="text" name="q" placeholder="Roogle Search" class="header__search__txt">
					<button type="submit" class="header__button__Search">Search</button>
				</form>
			</span> 
			<%if (userId != null) {%>
				<a class="header__button">
					<input type="button" value="LogOut"
					class="header__button__login"
					onClick="location.href = './../../Roogle_JYG/login/logout.jsp'">
				</a>
			<%} else {%>
				<a class="header__button"> <input type="button" value="Login"
				class="header__button__login"
				onClick="window.open('./../../Roogle_JYG/login/login.jsp')"> <input
				type="button" value="SignUp" class="header__button__signup"
				onClick="window.open('./../../Roogle_JYG/signup/signup.jsp')">
			</a>
			<%}%>
		</div>
		<hr>
		<div class="header__nav">
			<ul>
				<li><a href="./index.jsp">Home</a></li>
				<li><a href="./store.jsp">Store</a></li>
				<li class="dropdown">
					<a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI">Categories</a>
					<div class="dropdown-content">
						<a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '거북'">거북</a>
						<a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '도마뱀'">도마뱀</a>
						<a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '뱀'">뱀</a>
						<a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '양서류'">양서류</a>
					</div></li>
				<li class="dropdown">
					<a href="./content.jsp">Contents</a>
					<div class="dropdown-content">
						<a href="./morph_Col_Frame.jsp">크레스티드게코 모프 계산기</a>
						<a href="./KinshipCoefficientCalculator.jsp">근친계수 계산기</a>
						<a href="./Hopei_cal_male.jsp">용화무게 환산기</a>
					</div>
				</li>
				<li><a href="./event.jsp">Event</a></li>
				<li><a href="./../../Roogle_KHW/RoogleJSP/Rg_Cart.jsp">Cart</a></li>
				<li><a href="./guestBook.jsp">Board</a></li>
			</ul>
		</div>
	</header>
</body>
</html>