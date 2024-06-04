<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="rg_cart_DAO" class="Roogle.Roogle_Cart_DAO"></jsp:useBean>
    <%   
    String cart_id = request.getParameter("cart_id");
    int cart_no = Integer.parseInt(request.getParameter("cart_no"));
    int cart_amount = Integer.parseInt(request.getParameter("cart_amount"));
    
    int su = rg_cart_DAO.mUpdCart(cart_id ,cart_no, cart_amount);

   	%>
   	<script>
   		location.href = "./Rg_Cart.jsp";
   	</script>
   	<%
   	%>