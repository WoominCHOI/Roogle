<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="Generator" content="EditPlus®">
	<meta name="Author" content="">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<title>Document</title>
	<link rel="stylesheet" href="sign.css">


</head>

<body>
<%@ include file = "./../jsp/header.jsp" %>
<form action="./signup_pro.jsp" method="post">

	
	
	<div id="wrapper">
		
		<!-- 메인메뉴로 하이퍼링크 -->
		
		<div class="a">
			<div class="b">
				<h1>Create Account</h1>
			</div>
			<div class="c">
				<input type="text" id="id" name ="id" class="input" placeholder="아이디">
			</div>

			<div class="c">
				<input type="text" id="pwd" name ="pwd" class="input" placeholder="비밀번호">
			</div>

			<div class="c">
				<input type="text" id="name" name ="name" class="input" placeholder="이름">
			</div>

			<div class="c">
				<input type="text" id="email" name ="email" class="input" placeholder="이메일 주소">
				<select id="select_email" name= "domain">
					<option value= "@naver.com">@naver.com</option>
					<option value= "@gamil.com">@gamil.com</option>
					<option value= "@daum.com">@daum.com</option>
					<option value= "@nate.com">@nate.com</option>
				</select>
			</div>


			<div class="c">
				<input type="text" id="addr" name ="addr" class="input" placeholder="주소">
			</div>

			<div class="c">
				<input type="text" id="phone" name ="phone" class="input" placeholder="전화번호">
			</div>

			<div class="c">
				<input type="submit" id="submit" class="input" value="sign up">
			</div>
		</div>
	</div>

</form>
<div class =d>
	<input type="hidden">

</div>

	<%@ include file = "./../jsp/footer.jsp" %>
</body>

</html>