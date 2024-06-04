<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Roogle.Hopei_cal_male" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hopei_cal_male</title>
<link rel="stylesheet" href="./../CSS/KinshipCoefficientCalculator.css">
</head>
<body>
<div id="all">
    <div class="head">
    <h1>유충의 무게를 입력해주세요</h1>
    <h4>
    	혈통에 따른 우화사이즈 환산은 불가합니다.<br>
    	Dorcus hopei 수컷기준의 우화 무게를 환산합니다.
    </h4>
    </div>
    <div id="wrapper">
    <form action="" method="post">
        <input type="text" name="weight" placeholder = "유충의 무게를 입력해주세요(g))">
        <br>
        <button type="submit" class = "btn">우화 사이즈 환산하기</button>
    </form>
    <br><br>
    
    <% 
    // POST 요청이 들어왔을 때만 결과를 처리하고 출력
    if ("POST".equals(request.getMethod())) {
        String weightStr = request.getParameter("weight");
        if (weightStr != null && !weightStr.isEmpty()) {
            try {
                int weight = Integer.parseInt(weightStr);
                double[] result = Hopei_cal_male.h_Cal_male(weight);
    %>
                <div id="result">예상 성충 사이즈: <%= result[0] %> ~ <%= result[1] %></div>
    <%      } catch (NumberFormatException e) {
                // 숫자로 변환할 수 없는 경우 처리
    %>
                <div>숫자를 입력하세요.</div>
    <%      } catch (IllegalArgumentException e) {
                // 유효하지 않은 세대 수 처리
    %>
                <div><%= e.getMessage() %></div>
    <%      }
        }
    }
    %>
    </div>
    </div>
</body>
</html>
