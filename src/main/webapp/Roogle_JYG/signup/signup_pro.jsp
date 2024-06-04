<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Algorithm.signupDAO"%>
<%@ page import="Algorithm.LoginDTO"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String email = request.getParameter("email");
String domain = request.getParameter("domain");

String eamil_domain = email + domain;

String addr = request.getParameter("addr");
String phone = request.getParameter("phone");


out.println("ID: " + id);
out.println("Password: " + pwd);
out.println("Name: " + name);

out.println("Domain: " + email);
out.println("Address: " + addr);
out.println("Phone: " + phone);


String result = "";

signupDAO dao = new signupDAO();
LoginDTO dto = new LoginDTO(id, pwd, name, phone, eamil_domain, addr);

int su = dao.signup(dto);

if(su != 0){
    result = "["+name+"]님 고객정보를 추가하였습니다.";

}
else{
    result = "회원가입에 실패하였습니다.";
 }
String url = "./../msgChk/Checkmsg.jsp?msg="+URLEncoder.encode(result, "utf-8");
response.sendRedirect(url);
%>
</body>
</html>