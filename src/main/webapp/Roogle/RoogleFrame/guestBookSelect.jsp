<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Roogle.boardDTO"%>
<jsp:useBean id="boardDAO" class="Roogle.boardDAO" />
<jsp:useBean id="boardDTO" class="Roogle.boardDTO" />
<%
request.setCharacterEncoding("utf-8");
%>
<%
String bod_no = (String) request.getParameter("bod_no");
boardDTO dto = boardDAO.bodSelect(Integer.parseInt(bod_no));
String vId = "";

if(session.getAttribute("user_id") != null){
	vId = (String)session.getAttribute("user_id");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>고객게시판</title>
<link rel="stylesheet" href="./../CSS/myService.css">
</head>
<body>
<%@ include file = "./header.jsp" %>
<!-- updel jsp 로 넘어가기 -->
<form method = "post" action = "./guestBookUpdDel.jsp">
		<input type = "hidden" id = "attr" value = "" name = "bod_no">
		<input type = "hidden" value = "<%=vId %>" name = "bod_writer">
</form>

	<div id="wrapper">
		<main class="Guestmain">
			<section class="sideba">
				<br> <a href="./guestBook.jsp">게시판</a><br>
				<br> <a href="./service.jsp">개인정보처리방침</a> <br>
				<br>
			</section>
			<div class="GuestWriteframe">
				<h1 id="">게시판</h1>
				<h4>게시글 쓰기</h4>
				<hr>
				<table>
					<thead>
						<td colspan="4">
							<span onClick = "upDel_sub(<%=bod_no%>, '<%=vId %>')" style = "cursor: pointer"> [게시판 수정/삭제]</span>
							<a href="./guestBook.jsp"> [게시판 목록가기]</a>
						</td>
					</thead>
					<tbody>
						<tr>
							<td class="block">작성자</td>
							<td><input type="text" class="twd"
								 name="bod_writer" value = "<%= dto.getBod_writer()%>"></input></td>
								 
							<td class="block">조회수</td>
							<td><input type="text" class="twd"
								 name="bod_writer" value = "<%= dto.getBod_readcnt()%>"></input></td>
						</tr>
						<tr>
							<td class="block">제목</td>
							<td colspan="3"><input type="text" class="title"
								 name="bod_title" value = "<%= dto.getBod_title()%>"></input></td>
						</tr>
						<tr>
							<td class="block">등록일</td>
							<td colspan="3"><input type="text" class="title"
								 name="bod_title" value = "<%= dto.getBod_write_time()%>"></input></td>
						</tr>
						<tr>
							<td class="block">내용</td>
							<td colspan="3"><textarea rows="10" cols="30"
									class="contents" placeholder="글을 작성하세요" name="bod_content"><%= dto.getBod_content()%>
                            </textarea></td>
						</tr>
					</tbody>
				</table>
			</div>
		</main>
	</div>
	<%@ include file = "./footer.jsp" %>
</body>
<script>
	let writer = document.getElementsByClassName("twd");
	
	function upDel_sub(bod_no, vId){
		if(vId == writer[0].value){
			document.getElementById("attr").value = bod_no;
			document.getElementsByTagName("form")[1].submit();
		} else {
			alert("게시물의 수정 및 삭제는 해당 게시물의 작성자만 가능합니다");
		}
	}
</script>
</html>