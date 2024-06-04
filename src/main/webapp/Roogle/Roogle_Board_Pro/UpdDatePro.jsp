<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import  = "Roogle.boardDTO" %>
<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id = "boardDAO" class = "Roogle.boardDAO"/>
	<jsp:useBean id = "boardDTO" class = "Roogle.boardDTO"/>
	<jsp:setProperty name = "boardDTO" property = "*" />	
<%
	int su = boardDAO.bodUpdate(boardDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
	<%
	
		if(su!=0){
			//confirm("Press a button!");
			%>
			<script>
				alert("게시물 수정 성공");
			</script>
			<%
		}else{
			%>
			<script>
				alert("게시물 수정 실패");
			</script>
			<%
		}
		
	response.sendRedirect("./../RoogleFrame/guestBookSelect.jsp?bod_no="+boardDTO.getBod_no());
	%>
</body>
</html>