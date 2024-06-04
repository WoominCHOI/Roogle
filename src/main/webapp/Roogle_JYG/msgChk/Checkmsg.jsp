<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
<link rel="stylesheet" href="./Checkmsg.css">
<div id="wrapper">





<%
String result = request.getParameter("msg");
if(result == null){
	result = "Message Chk";
}
%>

<link rel="stylesheet" href="./Checkmsg.css">

<%@ include file = "./../jsp/header.jsp" %>

<div id="wrapper">


<img src="./../img/RoogleLogo.png" id="img">


<div class="a">


<p><%=result%></p>


</div>



<input type="submit" value="확인" onclick="location.href = './../../Roogle/RoogleFrame/index.jsp'">
<div class="void"></div>

</div>


</div>



<%@ include file = "./../jsp/footer.jsp" %>

    
</body>
</html>