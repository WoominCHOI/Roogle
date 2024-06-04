<%@page import="Roogle.Roogle_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="rgApi_DAO" class="Roogle.Roogle_DAO"></jsp:useBean>
    <jsp:useBean id="rgPrice_DAO" class="Roogle.Roogle_Price_DAO"></jsp:useBean>
    <jsp:useBean id="rgInfo_DAO" class="Roogle.Roogle_info_DAO"></jsp:useBean>
    <jsp:useBean id="rg_DTO" class="Roogle.Roogle_DTO"></jsp:useBean>
    <jsp:useBean id="rgInfo_DTO" class="Roogle.Roogle_info_DTO"></jsp:useBean>
    <jsp:useBean id="tempDTO" class="Roogle.Roogle_DTO"></jsp:useBean>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%
    String animalName = request.getParameter("aniName");	// 카테고리나 검색 화면에서 값을 받아옴
    
    // String animalName = "레오파드육지거북";	// 임시 동물이름
    String id = "";
    
    if(session.getAttribute("user_id") != null){
    	id = (String)session.getAttribute("user_id");
    }
    
    int lowPrice = 0;
    int lowSubPrice = 0;
    
    rg_DTO = rgApi_DAO.api_select(animalName);
    rgInfo_DTO = rgInfo_DAO.mSelectInfo(animalName);
    
    ArrayList<Roogle_DTO> aryList = rgApi_DAO.api_category(rg_DTO.getApi_species());
    
    int[] tempAry2 = rgPrice_DAO.price_animals(animalName);
    
    for(int i = 0; i < tempAry2.length; i++){
    	if(tempAry2[i] != 0){
    		lowPrice = tempAry2[i];
    		break;
    	}
    }
    %>

<!doctype html>
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="./../RoogleCss/index.css">
  <link rel="stylesheet" href="./../RoogleCss/Rg_Result.css">
  <title><%=animalName %> 검색 결과</title>
 </head>
 <body>
	 <header>
		<%@ include file="./header.jsp" %>
	</header>      
	
	<form action="./Rg_CartPro.jsp" id="hiddenForm" method="post">
		<input type="hidden" id="inputId" name="cart_id" value="<%=id%>">
		<input type="hidden" id="inputName" name="cart_animalname" value="<%=animalName%>">
		<input type="hidden" id="inputPrice" name="cart_price" value="<%=lowPrice%>">
	</form>
	
	<main class="iframeContainer">
		<br>
    <div id="wrapper">
        <div id="inner_wrapper">
        <section id="섹션블럭1">
            <div id="섹션1_위쪽공백"></div>
            <div id="이름가격_블럭">
                <p id="이름"><%=animalName %></p>    
                <p id="영명">영명 - <span id="영명내용"><%=rg_DTO.getApi_ename() %></span></p>
                <p id="학명">학명 - <span id="학명내용"><%=rg_DTO.getApi_sname() %></span></p>        
                <p id="이름_공백"></p>
            </div>
            <div id="플렉스블록">
                <div id="섹션1_우측공간">
                    <div id="섹션1_사진공간">
                        <img src="./../RoogleImg/<%=rg_DTO.getApi_photo()%>">
                    </div>
                    <div id="섹션1_사진아래공백">
                        
                    </div>
                </div>

                <div id="섹션1_가운데공백"></div>

                <div id="섹션1_좌측공간">
                    <div id="섹션1_동물정보공간">
                        
                        <div id="분양수방바구니결제_블럭">
                            <input type="checkbox" id="가격체크박스" hidden>
                            <label class="토글" for="가격체크박스" id="가격라벨박스">
                                <div id="가격"><div><span id="가격블록"><%=lowPrice %></span>원</div> 
                                <img src="./../RoogleImg/arrow.png"></div>
                                <ul id="최저가정렬">
                                    <%
                                    for(int i = 0; i < tempAry2.length; i++){
                                    	if(tempAry2[i] != 0){
	                                    %>
	                                    	<li class='최저가요소' onclick="changePrice(<%=tempAry2[i] %>)"><%=tempAry2[i] %>원</li>
	                                    <%
                                    	}
                                    }
                                    %>
                                </ul>
                            </label>
                            <div id="버튼메뉴">
                                <p id="분양수">
                                    <select id="amount" name="cart_amount" form="hiddenForm">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select>
                                    <button id="장바구니_담기"
                                    onclick="cartCharge('<%=id%>')">장바구니 담기</button>
                                    <button id="구매하기" 
                                    onclick="goPay('<%=id%>')">구매하기</button>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="섹션1_동물정보공간아래공백"></div>
                </div>
            </div>

        </section>
        <div id="동물정보_블럭">
            <p id="동물정보_공백"></p>
            <input type="checkbox" id="체크박스01" hidden>
            <label class="토글" for="체크박스01" id="체크박스라벨01">
                <p id="동물세부사항" class="제목블럭">세부사항 <img src="./../RoogleImg/arrow.png"></p>
                <p class="정보블럭"><%=rgInfo_DTO.getInfo_data() %></p>
            </label>
            <input type="checkbox" id="체크박스02" hidden>
            <label class="토글"  for="체크박스02" id="체크박스라벨02">
                <p id="서식지"  class="제목블럭">서식지 <img src="./../RoogleImg/arrow.png"></p>
                <p class="정보블럭"><%=rgInfo_DTO.getInfo_habitat() %></p>
            </label>
            <input type="checkbox" id="체크박스03" hidden>
            <label class="토글"  for="체크박스03" id="체크박스라벨03">
                <p id="키울때정보"  class="제목블럭">키울때 유용한 정보 <img src="./../RoogleImg/arrow.png"></p>
                <p class="정보블럭"><%=rgInfo_DTO.getInfo_breeding() %></p>
            </label>
        </div>

        <section id="섹션블럭2">
            <div id="품목추천">연관된 동물이나 관련용품을 소개합니다</div>
            <ul id="추천품목리스트">
            <% 
            int num = aryList.size();
            if(num > 5){
            	num = 5;
            }
            for(int i = 0, idx = 0; i < num; i++){
            	tempDTO = aryList.get(i);
            	if(!(tempDTO.getApi_name().equals(animalName))){
            		int[] tempAry = rgPrice_DAO.price_animals(tempDTO.getApi_name());
            		for(int j = 0; j < tempAry.length; j++){
            			if(tempAry[j] != 0){
            				lowSubPrice = tempAry[j];
            				break;
            			}
            		}
            %>
            <li>
			  <div class="추천품목사진"><img src="./../RoogleImg/<%=tempDTO.getApi_photo() %>"></div>
			  <div class="추천품목내용"><%=tempDTO.getApi_name() %></div>
			  <div class="추천품목가격"><span class="추천품목가격숫자"><%=lowSubPrice %></span>원</div>
			  <button onclick="subCartCharge(<%=idx%>, '<%=id%>')">장바구니 담기</button>
			</li>
            <%
            		idx++;
            	}
            }
            %>
            </ul>
        </section>

    </div>
    </div>
	<br>
	</main>

	<footer>
		<div id="하단메뉴">
            <%@ include file="./footer.jsp" %>
		<div>
	</footer>
	
	<script type="text/javascript" src="./../RoogleJs/Rg_Result.js"></script>
 </body>
</html>
