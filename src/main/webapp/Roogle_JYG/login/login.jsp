<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="./login.css">
</head>

<body >

<%@ include file = "./../jsp/header.jsp" %>

<form action="./login_pro.jsp">
	<br><br>
	<div id="wrapper">
		<img src="./../img/RoogleLogo.png">
		
		
		<div class="select_lang">
		
		</div>
		
		<div id="a">
			<div class="input">
				<input type="text" name="id" class="a" placeholder="아이디를 입력하세요.">

				<input type="password" name="pwd" class="b" placeholder="비밀번호를 입력하세요.">
			</div>

		</div>
		<div>
			<input type="submit" id="button" value="확인">
		</div>
		

		
		</div>
	
			<div class="height">
				<input type="hidden" >
			</div>

</form>
	
	<%@ include file = "./../jsp/footer.jsp" %>

</body>

</html>