<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Roogle_Event</title>
<link rel="Stylesheet" type ="text/css"  href="./../CSS/event.css">
</head>
<body>
	<%@ include file = "./header.jsp" %>
		       <!--categories-->
       <div class = "backgroundC">
        <br> 
        <div class="container">
            <h1>Event</h1>
            <br><br>
            <div class="product-list" id="product-list"></div>
        </div>
        <script src="./../RoogleJs/event.js"></script>   
        <br><br>
    </div>
	<%@ include file = "./footer.jsp" %>
</body>
<script src="./../RoogleJs/index.js"></script>
</html>