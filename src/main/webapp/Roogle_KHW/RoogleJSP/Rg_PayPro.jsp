<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="rg_cart_DAO" class="Roogle.Roogle_Cart_DAO"></jsp:useBean>
    <jsp:useBean id="rg_cart_DTO" class="Roogle.Roogle_Cart_DTO"></jsp:useBean>
    <jsp:setProperty property="*" name="rg_cart_DTO" />
    <%       
    String id = request.getParameter("id");
    int su = rg_cart_DAO.mAllDelCart(id);
    
    if(su > 0){
    	%>
    	<script>
    		alert("결제가 완료되었습니다.");
    		location.href = "./Rg_Cart.jsp";
    	</script>    	
    	<%
    } else {
    	%>
    	<script>
    		alert("결제에 실패했습니다.");
    		location.href = "./Rg_Cart.jsp";
    	</script>
    	<%
    }				
    %>