<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String id = (String)session.getAttribute("user_id");
	session.invalidate();
	String msg = URLEncoder.encode(id+"님 로그아웃", "utf-8");
	response.sendRedirect("./../msgChk/Checkmsg.jsp?msg="+msg);
	%>



</body>
</html>