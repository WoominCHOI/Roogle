<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException ,
			java.sql.PreparedStatement , java.sql.ResultSet"%>
<%@page import="Roogle.DbSet"%>
<%String api_name , api_species , api_ename , api_sname , api_photo , api_life , api_size;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Roogle_Search</title>
<jsp:useBean id="rgDTO" class="Roogle.Roogle_DTO" />
<jsp:useBean id="DAO" class="Roogle.Roogle_DAO" />
<link rel="Stylesheet" type="text/css" href="./../CSS/categories.css">
</head>
<body>
<form method = "post" action = "./../../Roogle_KHW/RoogleJSP/Rg_Result.jsp">
	<input type = "hidden" value = "" name = "aniName" id="aniName">
	<%@ include file = "./header.jsp" %>
	 <div class = "backgroundC">
	<!--categories-->
	<div class="container">
		<h1 id="categoryName">전체</h1>
		<br>
		<br>
		<div class="product-list" id="product-list">
	<%
	request.setCharacterEncoding("utf-8");
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String username = "hr";
	String password = "hr";
	String quary = request.getParameter("q");
	

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, username, password);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	%>

	<%
	String sql = "select * from ROOGLE_AnimalAPI where api_name like ?";

	Connection conn = DbSet.getConnection();

	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, "%" + quary + "%");
	ResultSet rs = pstmt.executeQuery();
	
	while (rs.next()) {

		api_name = rs.getString("api_name");
		api_species = rs.getString("api_species");
		api_photo = rs.getString("api_photo");
	%>
		<div class = "product-card" onclick = "mSub('<%=api_name%>')">
			<img src = "./../img/categories_img/<%=api_photo %>">
			<h2><%=api_name%></h2>
			<!-- <div class = "price">\999,999,999</div> -->
		</div>
	<%
	}
	%>
	</div>
	</div>
	</div>
	
	</form>
	<%@ include file = "./footer.jsp" %>
</body>
<script type = "text/javascript">
	
	let aniName = document.getElementById("aniName");
	
	function mSub(api_name){
		aniName.value = api_name;
		document.getElementsByTagName("form")[0].submit();
	}
</script>
</html>