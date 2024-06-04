<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Roogle.KinshipCoefficientCalculator" %>
<%KinshipCoefficientCalculator kin_Col = new KinshipCoefficientCalculator();%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>근친교배 계산기</title>
    <link rel="stylesheet" href="./../CSS/KinshipCoefficientCalculator.css">
</head>
<body>
<div id="all">
    <div class="head">
        <h2>KinshipCoefficient Calculator</h2>
        <h4>
        근친교배란 혈연관계가 비교적 가까운 개체간 교배를 의미합니다.<br>
			여기서 볼 수 있는 유전적 효과로는 유전자가 동형접합체의 비율을 증가시키고<br>
			이형결합체의 비율을 감소시켜 새로운 계통을 육성, 혹은 어떠한 형질을 고정시킬 때 이용됩니다.
		</h4>	
    </div>
    <br>
    <div id="wrapper">
        <div class="select" id="select">
        	
        	<div>
        		<br>
        		<img src = "./../img/kin_Col.png">
        		<br><br>
        	
    			FX : X 라는 개체의 근친계수<br>
	
				n : X 개체의 부친으로부터 공통 선조까지의 세대수<br>
	
				n' : X 개체의 모친으로부터 공통선조까지의 세대수<br>
	
				FA : 공통선조의 근친계수<br>
	
				∑ : 각 공통선조에 대한 값의 합계<br>
    		</div>
        	
        	
            <h3>1. X 개체의 부친으로부터 공통 선조까지의 세대 수 (n): </h3>
            <input type="text" id="n">
            <br>

            <h3>2. X 개체의 모친으로부터 공통 선조까지의 세대 수 (n'): </h3>
            <input type="text" id="n2">
            <br>

            <h3>3. 공통 선조의 근친 계수 (FA): </h3>
            <input type="text" id="FA">
            <br>

            <button type="submit" id="calculateButton" class = "btn">계산하기</button>
            <br><br>
            <div id="result"></div>
        </div><!-- class select끝 -->
    </div>
</div>

<script>
    document.getElementById("calculateButton").addEventListener("click", function () {
        var n = parseInt(document.getElementById("n").value);
        var n2 = parseInt(document.getElementById("n2").value);
        var FA = parseFloat(document.getElementById("FA").value);

        var resultDiv = document.getElementById("result");

        if (isNaN(n) || isNaN(n2) || isNaN(FA)) {
            resultDiv.innerText = "입력된 값이 올바르지 않습니다.";
            return;
        }

        // 근친 계수 계산
        var sum = 0;
        for (var k = 0; k <= n + n2 + 1; k++) {
            var term1 = Math.pow(0.5, n + n2 + 1);
            var term2 = 1 + FA;
            var term = term1 * term2;
            sum += term;
        }

        resultDiv.innerHTML = "근친 계수는: <span class='weight'>" + sum.toFixed(2) + "</span>";
        
    });
</script>

</body>
</html>
