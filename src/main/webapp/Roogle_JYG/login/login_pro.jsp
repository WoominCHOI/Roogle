<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
 <%@ page import="Algorithm.Login"%>
<%@ page import="Algorithm.LoginDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id = "dao" class = "Algorithm.Login"/>
<jsp:useBean id = "dto" class = "Algorithm.LoginDTO"/>
<jsp:setProperty name = "dto" property = "*"/>
<%
request.setCharacterEncoding("utf-8");
String id =	request.getParameter("id");
String pwd = request.getParameter("pwd");

String result ="";






boolean su = dao.mLoginChk(id, pwd);

if(su){
	session.setAttribute("user_id", dto.getId());
	result = "["+dto.getId()+"]님 로그인 성공";
	
}else{
	result = "존재하지 않는 회원입니다.";

}
String url = "./../msgChk/Checkmsg.jsp?msg="+URLEncoder.encode(result, "utf-8");
response.sendRedirect(url);

%>

</body>
</html>