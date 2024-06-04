<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Roogle_Main</title>
<link rel="Stylesheet" type ="text/css"  href="./css/index.css">
</head>
<body>
	<%@ include file = "./header.jsp" %>
	<!--wallpaper-->
        <div class = "Slider">
            <div class = "Slider__container">
                <img class = "Slider__img" src = "./../img/slider/RoogleLogo.jpg">
                <img class = "Slider__img" src = "./../img/slider/setec.png">
            
                <div class="slider__buttons__container">
                    <button id="prevButton"><img src = "./../img/slider/slider__left.png"></button>
                    <button id="nextButton"><img src = "./../img/slider/slider__right.png"></button>
                </div>	
            </div>
        </div>
        <br><br>
        <!--section-->
        <!--Categories-->
        <div class = "backgroundC">
        <section class = "section">
            <a href="./categories.jsp"><h1>Categories</h1></a>
            <br><br>
            <div class = "section__categories">
                <figure>
                    <a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '거북'"><img src = "./../img/cate/cate_turtle.png"></a>
                    <figcaption>Turtle</figcaption>
                </figure>
                <figure>
                	<a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '도마뱀'"><img src = "./../img/cate/cate_gecko.jpeg"></a>
                    <figcaption>lizard</figcaption>
                </figure>
                <figure>
                	<a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '뱀'"><img src = "./../img/cate/cate_snake.jpeg"></a>
                    <figcaption>Snake</figcaption>
                </figure>
                <figure>
                	<a href="./categories.jsp?sql=select * from ROOGLE_AnimalAPI where api_species = '양서류'"><img src = "./../img/cate/cate_frog.jpeg"></a>
                    <figcaption>Amphibian</figcaption>
                </figure>
            </div>
            <br><br><br>
            <!--store-->

            <a href="./store.jsp"><h1>StoreList</h1></a>
            <br><br>
            <div class="section__store-container">
                <div class = "section__store">
                    <figure>
                        <a href="https://bighornmania.cafe24.com/" target = "_blank">
                        <img src = "./../img/store/store_bighorn.jfif"></a>
                        <figcaption>빅혼</figcaption>
                    </figure>
                    <figure>
                        <a href="https://www.seoulreptile.co.kr/goods/goods_list.php?cateCd=001" target = "_blank">
                        <img src = "./../img/store/store_seoulRetile.gif"></a>
                        <figcaption>서울렙타일</figcaption>
                    </figure>
                    <figure>
                        <a href="https://thebreeders.cafe24.com/" target = "_blank">
                        <img src = "./../img/store/store_theBreeders.png"></a>
                        <figcaption>더브리더스</figcaption>
                    </figure>
                    <figure>
                        <a href="https://xn--9m1b023b.com/" target = "_blank">
                        <img src = "./../img/store/store_theZoo.jpg"></a>
                        <figcaption>더쥬</figcaption>
                    </figure>
                    <figure>
                        <a href="https://www.jungle-pet.co.kr/" target = "_blank">
                        <img src = "./../img/store/store_junglePet.png"></a>
                        <figcaption>정글펫</figcaption>
                    </figure>
                    <figure>
                        <a href="https://baltonj.com/" target = "_blank">
                        <img src = "./../img/store/store_balto.png"></a>
                        <figcaption>발토앤제이</figcaption>
                    </figure>
                    <!--여기서 부터 더보기 메뉴 생성-->
                    <figure>
                        <a href="https://woosooreptile.com/" target = "_blank">
                        <img src = "./../img/store/store_woosoo.jpg"></a>
                        <figcaption>우수렙타일</figcaption>
                    </figure>
                    <figure>
                        <a href="https://www.vanmori.com/" target = "_blank">
                        <img src = "./../img/store/store_vanmori.png"></a>
                        <figcaption>반모리</figcaption>
                    </figure>
                    <figure>
                        <a href="https://newrunreptile.co.kr/" target = "_blank">
                        <img src = "./../img/store/store_newRun.jpg"></a>
                        <figcaption>뉴런렙타일</figcaption>
                    </figure>
                    <figure>
                        <a href="http://www.milimpet.co.kr/goods/goods_list.php?cateCd=045" target = "_blank">
                        <img src = "./../img/store/store_mil.png"></a>
                        <figcaption>밀림펫</figcaption>
                    </figure>
                    <figure>
                        <a href="https://geckoholic.co.kr/product/list.html?cate_no=65" target = "_blank">
                        <img src = "./../img/store/store_geckoHolic.png"></a>
                        <figcaption>게코홀릭</figcaption>
                    </figure>
                </div>
            </div>
        </section>
        <br><br>
    </div>
	<%@ include file = "./footer.jsp" %>
</body>
<script src="./../RoogleJs/index.js"></script>
</html>