<%@page import="Algorithm.LoginDAO"%>
<%@page import="Algorithm.LoginDTO"%>
<%@page import="Roogle.Roogle_Cart_DTO"%>
<%@page import="Roogle.Roogle_DTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="rg_cart_DAO" class="Roogle.Roogle_Cart_DAO"></jsp:useBean>
<jsp:useBean id="rg_login_DAO" class="Algorithm.LoginDAO"></jsp:useBean>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%
    String id = (String)session.getAttribute("user_id");	// id
   	LoginDTO loginDTO = rg_login_DAO.mLoginAPI(id);
   	int result = 0;
   	
   	Roogle_Cart_DTO tempDTO = new Roogle_Cart_DTO();
   	
    if(Boolean.parseBoolean(request.getParameter("cartToPay"))){
    	String cartAPI = request.getParameter("cartAPI");
    	String[] cartAPIAry = cartAPI.split("-");
    	
    	tempDTO.setCart_animalname(cartAPIAry[0]);
    	tempDTO.setCart_price(Integer.parseInt(cartAPIAry[1]));
    	tempDTO.setCart_amount(Integer.parseInt(cartAPIAry[2]));
    	tempDTO.setCart_img(cartAPIAry[3]);
    	
    	result = tempDTO.getCart_price() * tempDTO.getCart_amount();
    }
    %>

<!doctype html>
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="./../RoogleCss/index.css">
  <link rel="stylesheet" href="./../RoogleCss/Rg_Pay.css">
  <title>Roogle 결제화면</title>
  <!--<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>-->
 </head>
 <body>
	<%@ include file="./header.jsp" %>     

	<main class="iframeContainer">
		<div id="wrapper">
			<div id="플렉스블록">
				<div id="왼쪽">
					<div id="배송지" class="메뉴">
						<h2>배송지</h2>
						<div id="내용1">
							<div class="내용배경색">
								<div class="상세정보칸">
									<div id="개인정보칸">
										<p id="이름">
											<span class="개인정보"><%=loginDTO.getName() %></span>
											<input class="개인정보변경" type="text"></p>
										<p id="전화번호">
											<span class="개인정보"><%=loginDTO.getPhone() %></span>
											<input class="개인정보변경" type="text"></p>
										<p id="주소">
											<span class="개인정보"><%=loginDTO.getAddr() %></span>
											<input class="개인정보변경" type="text" onkeydown="enterClick()"></p>
									</div>
									<div id="변경버튼">
										<button onclick="apiChange()">변경</button>
									</div>
									<div id="배송메모입력블록">
										<select id="배송메모" onchange="inputMemo()">
											<option>부재시 문앞에 놔주세요</option>
											<option>경비실에 맡겨주세요</option>
											<option>배송전 연락해주세요</option>
											<option>직접 입력</option>
										</select>
										<input id="직접입력" type='text' onchange="inputComplete()">
									</div>
								</div>
							</div>
						</div>
					</div>
		
					<div id="주문상품전체" class="메뉴">
						<h2>주문 상품</h2>
						<div id="내용2">
							<div class="내용배경색">

								<div class="주문상품">
								    <div class="장바구니품목블록">
								        <div class="상품이미지블록">
								            <img src="<%=tempDTO.getCart_img()%>">
								        </div>
								        <div class="상품블록">
								            <p class="상품명"><%=tempDTO.getCart_animalname() %></p>
								            <h3>수량 <span class="상품수량"><%=tempDTO.getCart_amount()%></span>개</h3>
								            <p><span class="상품가격"><%=tempDTO.getCart_price()%></span>원</p>
								        </div>
								    </div>
								</div>
		
							</div>
						</div>
						<h1>총 주문 금액 : <span id="주문금액"><%=result %></span>원</h1>
					</div>
					
					<div id="결제수단" class="메뉴">
					<h2>결제수단</h2>
					<div id="내용3">
						<div class="내용배경색">
							<div id="카드결제" class="상세정보칸">
								<div class="카드메뉴">
									<p class="메뉴아이콘"><img src="./../RoogleImg/card.png"></p>
									<div id="메뉴제목1"><p class="결제수단이름">카드 간편 결제</p>
									<input type="radio" name="cash" onclick="mPayChange(0)" checked></div>
								</div>
							</div>
		
		
							<div id="계좌결제" class="상세정보칸">
								<div class="카드메뉴">
									<p class="메뉴아이콘"><img src="./../RoogleImg/bank.png"></p>
									<div id="메뉴제목2"><p class="결제수단이름">계좌 간편 결제</p>
									<input type="radio" name="cash" onclick="mPayChange(1)"></div>
								</div>
							</div>
		
							<div id="일반결제" class="상세정보칸">
								<div class="카드메뉴">
									<p class="메뉴아이콘"><img src="./../RoogleImg/phone.png"></p>
									<div id="메뉴제목3"><p class="결제수단이름">일반 결제</p>
									<input type="radio" name="cash" onclick="mPayChange(2)"></div>
								</div>
							</div>
						</div>
					</div>
						
					<div id="현금영수증" class="메뉴">
						<h2>현금영수증</h2>
						<div id="내용4">
							<div class="내용배경색">
								<div class="상세정보칸">
									<div id="현금영수증_API">
										<div id="현금영수증변경전">
											<p name="현금영수증종류">개인소득공제용</p>
											<p>
												<span class="전번">010</span> - 
												<span class="전번">1234</span> - 
												<span class="전번">1234</span>
											</p>
										</div>
										<div id="현금영수증변경">
											<input type="radio" name="현금영수증종류" checked>개인소득공제용
											<input type="radio" name="현금영수증종류">사업자증빙용(세금계산서)
											<div>
												<input type="text" class="전번변경" onkeydown="enterkey(0)"> - 
												<input type="text" class="전번변경" onkeydown="enterkey(1)"> - 
												<input type="text" class="전번변경" onkeydown="enterkey(2)">
											</div>
										</div>
									</div>
									<div id="현금영수증버튼">
										<button onclick="cashPaperChange()">변경</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	
			<div id="가운데공백"></div>
	
			<div id="오른쪽">
				<div id="결제">
					<h2>결제 상세</h2>
					<div id="내용5">
						<div class="내용배경색">
							<div class="상세정보칸">
								<p>선택하신 결제 방법</p>
								<p> - <span id="결제방법">카드 간편 결제</span></p>
								<br><br>
								<p style="text-align: right;"><span id="총결제금액"><%=result %></span>원</p>
							</div>
						</div>
						<button onclick="goPayProSingle()">결제하기</button>
					</div>
				</div>
			</div>
			
		</div>
		</div>

	</main>

	<footer>
		<div id="하단메뉴">
            <%@ include file="./footer.jsp" %>
		<div>
	</footer>

	<script type="text/javascript" src="./../RoogleJs/Rg_Pay.js"></script>
 </body>

</html>
