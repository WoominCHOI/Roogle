/**
 * 
 */

//동물정보 추가 스크립트
const products = [
    {
        name: "크레스티드게코 모프 계산기",
        image: "./../img/content/crestedGecko.jpg",
        productDescription: "./../RoogleFrame/morph_Col_Frame.jsp"
    },
    {
        name: "근친계수 계산기",
        image: "./../img/content/KinshipCoefficientCalculator.png",
        productDescription: "./../RoogleFrame/KinshipCoefficientCalculator.jsp"
    },
    {
        name: "용화무게 환산기",
        image: "./../img/content/hopei.jpg",
        productDescription: "./../RoogleFrame/Hopei_cal_male.jsp"
    }
];

//이벤트 이미지 클릭 시 해당 url로 이동 blank사용
document.addEventListener("DOMContentLoaded", function() {
    const productList = document.getElementById("product-list");

    products.forEach((product, index) => {
        const productCard = document.createElement("div");
        productCard.classList.add("product-card");

        const productImage = document.createElement("img");
        productImage.src = product.image;
        productImage.alt = product.name;

        const productInfo = document.createElement("div");
        productInfo.classList.add("info");

        const productName = document.createElement("h2");
        productName.textContent = product.name;

        const productDescription = document.createElement("p");
        productDescription.textContent = product.productDescription;

        productInfo.appendChild(productName);
        
        productCard.appendChild(productImage);
        productCard.appendChild(productInfo);

        // 제품 카드를 클릭했을 때 상세 페이지 또는 productDescription 링크로 이동
        productCard.addEventListener("click", function() {
			window.open(product.productDescription)
		});
		productList.appendChild(productCard);
	});
});