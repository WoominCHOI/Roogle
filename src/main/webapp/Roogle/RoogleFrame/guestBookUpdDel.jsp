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
String bod_writer = (String) request.getParameter("bod_writer");
boardDTO dto = boardDAO.bodSelect_UpdDel(Integer.parseInt(bod_no));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>고객게시판</title>
    <link rel = "stylesheet" href="./../CSS/myService.css">
</head>
<body>
	<%@ include file = "./header.jsp" %>
    <form action ="./../Roogle_Board_Pro/UpdDatePro.jsp" method = "post">
   	<input type = "hidden" value = "<%=bod_no %>" name = "bod_no">
     <div id = "wrapper">
        <main class="Guestmain">
            <section class = "sideba">
                <form action="#">
                    <br>
                    <a href="./guestBook.jsp"> 게시판</a><br><br>       
                     <a href="./service.jsp">개인정보처리방침</a> <br><br>
                </form>
            </section>

            <div class="GuestWriteframe">
                <h1 id="">게시판</h1>
                <h4>게시글 수정/삭제</h4>
                <hr>
                <table>
                    <thead>
                    <td colspan = "4">
                    	<span onClick = "Upd_Del('./../Roogle_Board_Pro/DeletePro.jsp')"> [게시글 삭제하기]</span>
                    	<br>
                    	<a href="./guestBook.jsp"> [게시글 목록]</a></td>
                    </thead>
            
                    <tbody>
                        <tr>
                            <td class ="block">작성자</td>
                            <td ><input type ="text"  class ="twd" value = "<%= dto.getBod_writer()%>"></input></td>
                        </tr>	
                        <tr>
                            <td  class ="block">제목</td>
                            <td colspan ="3"><input type ="text"  class ="title" value = "<%= dto.getBod_title()%>" name = "bod_title"></input></td>
                        </tr>
                        <tr>
                            <td class ="block">내용</td>
                            <td  colspan ="3"> <textarea rows="10" cols="30"  class = "contents" name = "bod_content"><%= dto.getBod_content()%></textarea></td>
                        </tr>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="4">
                        	<input type ="submit" value = "수정하기" class ="button">
                            <input type ="reset"value = "취소" class ="button">               
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </main>
    </div>
    </form>
    <%@ include file = "./footer.jsp" %>
</body>
<script>
	function Upd_Del(url){
		
		document.getElementsByTagName("form")[1].action = url;
		
		document.getElementsByTagName("form")[1].submit();
	}
</script>
</html>