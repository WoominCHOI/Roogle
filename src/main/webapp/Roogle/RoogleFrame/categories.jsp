<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException ,
			java.sql.PreparedStatement , java.sql.ResultSet"%>
<%@page import="Roogle.DbSet"%>
<%String api_name , api_species , api_ename , api_sname , api_photo , api_life , api_size;%>
<%int lowPrice = 0; %>

<%
	String sql = request.getParameter("sql");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Roogle_Categories</title>
<jsp:useBean id="rgDTO" class="Roogle.Roogle_DTO" />
<jsp:useBean id="DAO" class="Roogle.Roogle_DAO" />
<jsp:useBean id="price_DAO" class="Roogle.Roogle_Price_DAO"></jsp:useBean>
<link rel="Stylesheet" type="text/css" href="./../CSS/categories.css">
</head>
<body>
<form method = "post" action = "./../../Roogle_KHW/RoogleJSP/Rg_Result.jsp">
	<input type="hidden" id="aniName" name="aniName" value="">
</form>
	<%@ include file = "./header.jsp" %>
	 <div class = "backgroundC">
		 <div class="filters">
            <form>
                <h2>Filters</h2>
                <label for="category-filter">카테고리:</label>
                <select id="category-filter" onchange = "if(this.value) location.href=(this.value);">
                    <option value = "./categories.jsp?sql=select * from ROOGLE_AnimalAPI">All</option>
                    <option value = "./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '거북'">Turtle</option>
                    <option value = "./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '뱀'">Snake</option>
                    <option value = "./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '도마뱀'">Lizard</option>
                    <option value = "./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '양서류'">Amphibian</option>
                </select>
            </form>
        </div>
	<div class="container">
		<h1 id="categoryName">전체</h1>
		<br>
		<br>
		<div class="product-list" id="product-list">


	<%
	Connection conn = DbSet.getConnection();

	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	int idx = 0;

	while (rs.next()) {
		api_name = rs.getString("api_name");
		api_species = rs.getString("api_species");
		api_photo = rs.getString("api_photo");
		lowPrice = price_DAO.lowPrice_animals(api_name);
	%>
		<div class = "product-card" onclick = "mSub(<%=idx%>)">
			<img src = "./../img/categories_img/<%=api_photo %>">
			<h2><%=api_name%></h2>
			<div class = "price"><%=lowPrice %>원</div>
			<input type = "hidden" value = "<%=api_name %>" class = "info_name">
		</div>
	<%
	idx++;
	}
	%>
	</div>
	</div>
	</div>
	
	<%@ include file = "./footer.jsp" %>
</body>
<script type = "text/javascript">

	let aniName = document.getElementById("aniName");
	let info_name = document.getElementsByClassName("info_name");

	function mSub(num){
		aniName.value =  info_name[num].value;
		document.getElementsByTagName("form")[0].submit();
	}
	
</script>
</html>