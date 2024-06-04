<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id = "boardDAO" class = "Roogle.boardDAO"/>
	<jsp:useBean id = "boardDTO" class = "Roogle.boardDTO"/>
	<jsp:setProperty name = "boardDTO" property = "*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
	<%	String result;
	
		int su = boardDAO.bodWrite(boardDTO);
		
		if(su!=0){
			%>
			<script>
				alert("게시판 글 등록 성공");
			</script>
			<%
		}else{
			%>
			<script>
				alert("게시판 글 등록 실패");
			</script>
			<%
		}
		response.sendRedirect("./../RoogleFrame/guestBook.jsp");
	%>
</body>
</html>