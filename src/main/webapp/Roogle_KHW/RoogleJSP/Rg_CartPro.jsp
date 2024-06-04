<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="rg_cart_DAO" class="Roogle.Roogle_Cart_DAO"></jsp:useBean>
    <jsp:useBean id="rg_cart_DTO" class="Roogle.Roogle_Cart_DTO"></jsp:useBean>
    <jsp:setProperty property="*" name="rg_cart_DTO" />
    <%       
    String result = "";
    int su = rg_cart_DAO.mInsertCart(rg_cart_DTO);
    
    if(su > 0){
    	%>
    	<script>
    		alert("장바구니 추가가 완료되었습니다.");
    		let choice =  confirm("장바구니 화면으로 이동하시겠습니까?");
    		if(choice){
    			location.href = "./Rg_Cart.jsp";
    		} else {
    			history.go(-1);
    		}
    	</script>    	
    	<%
    } else {
    	%>
    	<script>
    		alert("장바구니 추가에 실패했습니다.");
    		history.go(-1);
    	</script>
    	<%
    }				
    %>