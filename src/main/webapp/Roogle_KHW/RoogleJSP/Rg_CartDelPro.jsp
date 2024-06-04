<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="rg_cart_DAO" class="Roogle.Roogle_Cart_DAO"></jsp:useBean>
    <jsp:useBean id="rg_cart_DTO" class="Roogle.Roogle_Cart_DTO"></jsp:useBean>
    <%   
    String cart_id = request.getParameter("cart_id");
    String cart_no_Ary;
    boolean All = Boolean.parseBoolean(request.getParameter("All"));
    
    String result = "";
    int su = 0;
    
    if(All){
    	su = rg_cart_DAO.mAllDelCart(cart_id);
    	response.sendRedirect("./Rg_Cart.jsp");
    } else {
    	cart_no_Ary = request.getParameter("cart_no_Ary");
    	su = rg_cart_DAO.mDelCart(cart_id, cart_no_Ary);
    	response.sendRedirect("./Rg_Cart.jsp");
    }				
    %>