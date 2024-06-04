<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "boardDAO" class = "Roogle.boardDAO"/>
<jsp:useBean id = "boardDTO" class = "Roogle.boardDTO"/>
<%request.setCharacterEncoding("utf-8"); %>
<%
	String strId = request.getParameter("user_id");
	String strName = request.getParameter("user_name");
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
     <div id = "wrapper">
        <main class="Guestmain">
            <section class = "sideba">
                    <br>
                    <a href="./guestBook.jsp">게시판</a><br><br>       
                    <a href="./service.jsp">개인정보처리방침</a> <br><br>   
            </section>
            <form action="./../Roogle_Board_Pro/WritePro.jsp" method = "post">
            <div class="GuestWriteframe">
                <h1 id="">게시판</h1>
                <h4>게시글 쓰기</h4>
                <hr>
                <table>
                    <thead>
                        <td colspan = "4"><a href="./guestBook.jsp"> [게시판 목록가기]</td>
                    </thead>
                    <tbody>
                        <tr>
                            <td class ="block">작성자</td>
                            <td ><input type ="text"  class ="twd" autofocus placeholder="홍길동" value = "<%=strId%>" name = "bod_writer"></input></td>
                        </tr>		
                        <tr>
                            <td  class ="block">제목</td>
                            <td colspan ="3"><input type ="text"  class ="title" placeholder="제목을 지정하세요" name = "bod_title"></input></td>
                        </tr>
                        <tr>
                            <td class ="block">내용</td>
                            <td  colspan ="3"> <textarea rows="10" cols="30"  class = "contents" placeholder="글을 작성하세요" name = "bod_content"></textarea></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4">
                                <input type ="submit" value = "등록하기" class ="button">
                        
                                <input type ="reset"value = "초기화" class ="button">
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            </form>
        </main>
    </div>
    <%@ include file = "./footer.jsp" %>
</body>
</html>