<%@page import="Roogle.Roogle_Cart_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="java.text.DecimalFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="rg_cart_DAO" class="Roogle.Roogle_Cart_DAO"></jsp:useBean>
    <jsp:useBean id="rg_cart_DTO" class="Roogle.Roogle_Cart_DTO"></jsp:useBean>
    <%
    int resultPrice = 0;	// 총 가격
    // String id = "red";	// 임시 id
    DecimalFormat noFormat = new DecimalFormat();	// 숫자에 천단위로 , 추가해줌
    String id = (String)session.getAttribute("user_id");	// id
    ArrayList<Roogle_Cart_DTO> cartAry = rg_cart_DAO.mSelectCart(id);
    %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="./../RoogleCss/index.css">
  <link rel="stylesheet" href="./../RoogleCss/Rg_Cart.css">
  <title>Roogle 장바구니</title>
 </head>
 <body onload="mInit()">
    
	<%@ include file="./header.jsp" %>
	
	<input type="hidden" id="idBlock" value="<%=id%>">

	<main class="iframeContainer">
		<div id="wrapper">
			<div id="inner_wrapper">
				<h1 id="제목">장바구니</h1>
				<div id="장바구니" class="메뉴">
					<div id="전체선택블럭">
						<div id="전체체크박스">
							<input type="checkbox" name="물품전체선택" onclick="selectAll(this)">
						</div>
						<h2>전체 선택</h2>
						<div id="선택삭제">
							<button onclick="deleteBlock()">선택 삭제</button>
						</div>
					</div>
	
					<div id="내용">
						
						<div id="내용배경색">
							<%
							for(int i = 0; i < cartAry.size(); i++){
								rg_cart_DTO = cartAry.get(i);
								resultPrice += (rg_cart_DTO.getCart_price() * rg_cart_DTO.getCart_amount());
							%>
							<div class="주문상품">
							  <input class="박스번호" hidden="" value="<%=rg_cart_DTO.getCart_no()%>">
							  <div class="체크박스">
							    <input type="checkbox" name="물품선택">
							  </div>
							  <div class="사진">
							    <img src="./../RoogleImg/<%=rg_cart_DTO.getCart_img()%>">
							  </div>
							  <div class="이름등등">
							    <p class="동물명"><%=rg_cart_DTO.getCart_animalname() +  rg_cart_DTO.getCart_no()%></p>
							    <p class="분양수"><a>분양수 
							    <span class="상품수량"><%=rg_cart_DTO.getCart_amount() %></span>
							    <select class="분양수선택" onchange="">
							        <option>1</option>
							        <option>2</option>
							        <option>3</option>
							    </select>
							    마리</a>
							    <button class="수정버튼" onClick='updateButton(<%=i%>, <%=rg_cart_DTO.getCart_no()%>)'>수정</button></p>
							    <p class="가격"><span class="상품가격">
							    <%=rg_cart_DTO.getCart_price() %></span>원</p>
							  </div>
							  <div class="주문상품_공백"></div>
							  
							</div>
							<%
							}
							%>
							
						</div>
						
					</div>
					<div id="총주문금액블록">
						<h1 id="총주문금액">총 주문 금액 : <span id="주문금액"><%=noFormat.format(resultPrice) %></span>원</h1>
                        <div id="주문하기버튼"><button onclick="goPrice()">주문하기</button></div>
						<div style="height:250px"></div>
					</div>
				</div>
		
			</div>
		</div>
	</main>

	<footer>
		<%@ include file="./footer.jsp" %>
	</footer>
		
 </body>
 <script src="./../RoogleJs/Rg_Cart.js"></script>
</html>
