<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	// 세션 값을 확인하여 로그인 상태를 판단
	String userId = (String) session.getAttribute("user_id");
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
			<span class="header__logo"> <a href="./../../Roogle/RoogleFrame/index.jsp"> <img
					src="./../../Roogle/img/RoogleLogo.png" alt="Roogle">
			</a>
			</span> <span class="header__search">
				<form action="./../../Roogle/RoogleFrame/search.jsp" method="post">
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
				<li><a href="./../../Roogle/RoogleFrame/index.jsp">Home</a></li>
				<li><a href="./../../Roogle/RoogleFrame/store.jsp">Store</a></li>
				<li class="dropdown">
					<a href="./../../Roogle/RoogleFrame/categories.jsp?sql=select * from ROOGLE_AnimalAPI">Categories</a>
					<div class="dropdown-content">
						<a href="./../../Roogle/RoogleFrame/categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '거북'">거북</a>
						<a href="./../../Roogle/RoogleFrame/categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '도마뱀'">도마뱀</a>
						<a href="./../../Roogle/RoogleFrame/categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '뱀'">뱀</a>
						<a href="./../../Roogle/RoogleFrame/categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '양서류'">양서류</a>
					</div></li>
				<li class="dropdown">
					<a href="./../../Roogle/RoogleFrame/content.jsp">Contents</a>
					<div class="dropdown-content">
						<a href="./../../Roogle/RoogleFrame/morph_Col_Frame.jsp">크레스티드게코 모프 계산기</a>
						<a href="./../../Roogle/RoogleFrame/KinshipCoefficientCalculator.jsp">근친계수 계산기</a>
						<a href="./../../Roogle/RoogleFrame/Hopei_cal_male.jsp">용화무게 환산기</a>
					</div>
				</li>
				<li><a href="./../../Roogle/RoogleFrame/event.jsp">Event</a></li>
				<li><a href="./Rg_Cart.jsp">Cart</a></li>
				<li><a href="./../../Roogle/RoogleFrame/guestBook.jsp">Board</a></li>
			</ul>
		</div>
	</header>
</body>
</html>